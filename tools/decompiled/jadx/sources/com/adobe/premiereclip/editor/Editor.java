package com.adobe.premiereclip.editor;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.editor.RangeSeekBar;
import com.adobe.premiereclip.editor.SnapToBeatController;
import com.adobe.premiereclip.editor.Timeline;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.media.ClipAsset;
import com.adobe.premiereclip.media.MediaInfo;
import com.adobe.premiereclip.media.MediaManager;
import com.adobe.premiereclip.media.TitleImage;
import com.adobe.premiereclip.mediaengine.SequencePlayer;
import com.adobe.premiereclip.mediaengine.exporter.SequenceExporter;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.renderers.SequenceRenderer;
import com.adobe.premiereclip.mediaengine.resources.ProjectPosterResources;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.util.BitmapCache;
import com.adobe.premiereclip.util.FileOps;
import com.adobe.premiereclip.util.ProjectPosterTask;
import com.adobe.premiereclip.util.Utilities;
import com.crashlytics.android.Crashlytics;
import com.google.android.exoplayer.ExoPlaybackException;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class Editor implements RangeSeekBar.OnRangeSeekBarChangeListener, Timeline.TimelineListener, SequencePlayer.Listener, SequenceExporter.Listener, ProjectPosterTask.TaskCompleted {
    private static final String TAG = "Editor";
    public static final int seeksPerSec = 3;
    private String bumperPath;
    private boolean canAddBumper;
    protected SequencePlayer.ClipSaveState clipSaveState;
    protected Context context;
    protected int currentClipIndex;
    protected Project currentProject;
    private boolean delayedInit;
    private Listener editorListener;
    private File exportFile;
    private boolean exportMode;
    private GPUMediaSurfaceView gpuMediaSurfaceView;
    private boolean initialized;
    private boolean pendingPosterTask = false;
    private SequencePlayer player;
    private boolean posterClipDirty;
    private float prevSeekOffset;
    private ProjectPosterResources projectPosterResources;
    private long scrubTimeMs;
    private boolean scrubbing;
    private SequenceExporter sequenceExporter;
    private SequenceRenderer sequenceRenderer;
    private SnapToBeatController snapToBeatController;
    protected Timeline timeline;
    private RangeSeekBar trimBar;

    public enum ClipOptions {
        EXPOSURE,
        HIGHLIGHTS,
        SHADOWS,
        SPEED,
        VOLUME,
        AUDIO_FADE_IN,
        AUDIO_FADE_OUT,
        AUDIO_SMART_VOLUME,
        AUDIO_MUTE
    }

    public interface Listener {
        void onClipSelected(boolean z);

        void onExportEnded(File file, boolean z);

        void onExportProgress(double d2);

        void onLoadingCompleted(boolean z);

        void onLoadingStarted();

        void onPlayerPaused();

        void onPlayerTimeUpdate(long j);

        void onRangeSeekbarThumbMoveEnded();

        void onRangeSeekbarThumbMoveStarted();

        void triggerAddPlayerView();

        void triggerRemovePlayerView();
    }

    public enum SequenceAudioOptions {
        AUDIO_FADE_IN,
        AUDIO_FADE_OUT,
        AUDIO_MIX,
        AUDIO_VOLUME,
        AUDIO_DELETE,
        AUDIO_SNAP_TO_BEAT,
        AUDIO_START_CHANGE,
        AUDIO_SYNC_PACE
    }

    public Editor(Context context, Timeline timeline, Project project, SnapToBeatController snapToBeatController) {
        this.context = context;
        if (timeline != null) {
            this.timeline = timeline;
            this.timeline.setTimelineListener(this);
        }
        this.snapToBeatController = snapToBeatController;
        this.currentProject = project;
        this.initialized = false;
        this.clipSaveState = new SequencePlayer.ClipSaveState(-1, 0L, false);
        this.posterClipDirty = false;
        this.scrubbing = false;
    }

    public boolean init() {
        int i;
        ArrayList<Clip> clips = this.currentProject.getSequence().getClips();
        checkFileAvailability();
        insertVideoBug();
        if (clips.size() == 0) {
            i = -1;
        } else {
            i = this.clipSaveState.clipIndex != -1 ? this.clipSaveState.clipIndex : 0;
        }
        this.currentClipIndex = i;
        if (this.timeline != null) {
            this.timeline.setClips(clips, this.currentClipIndex);
        }
        if (!ProjectPosterTask.isRunning()) {
            updateProjectPoster();
        }
        if (this.currentClipIndex == -1 || this.initialized) {
            return false;
        }
        initMediaEngine();
        this.player = new SequencePlayer();
        this.player.setListener(this);
        this.sequenceExporter = new SequenceExporter(this.context);
        this.sequenceExporter.setListener(this);
        return true;
    }

    private void checkFileAvailability() {
        Log.i(TAG, "Checking file avail");
        ArrayList<Clip> clips = this.currentProject.getSequence().getClips();
        boolean z = false;
        for (int i = 0; i < clips.size(); i++) {
            Clip clip = clips.get(i);
            if (clip.isAvailable() && !Utilities.checkIfFileExists(clip.getAssetReference().getAssetPath())) {
                Log.i(TAG, "Unavailable clip found " + i);
                clip.setAvailability(false);
                z = true;
            }
        }
        if (z) {
            Toast.makeText(this.context, R.string.unavail_clip_found, 1).show();
        }
    }

    private void insertVideoBug() {
        Clip clipCreateEmptyVideoClip;
        float f2;
        float f3;
        Sequence sequence = this.currentProject.getSequence();
        sequence.removeAllClipsFromTrack(1);
        String string = UUID.randomUUID().toString();
        String overlayPath = DCXReader.getOverlayPath(this.currentProject.projectKey);
        if (overlayPath != null) {
            ArrayList<MediaInfo> arrayList = new ArrayList<>();
            MediaInfo mediaInfo = new MediaInfo();
            mediaInfo.setAssetUrl(overlayPath);
            mediaInfo.setLocalPath(overlayPath);
            mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(overlayPath).lastModified())));
            arrayList.add(mediaInfo);
            ClipAsset clipAsset = MediaManager.getInstance().addAssets(arrayList).get(0);
            AssetReference assetReference = new AssetReference(clipAsset.clipAssetID, clipAsset.fileUri, clipAsset.filePath, clipAsset.originalPath, clipAsset.originalAssetDate, clipAsset.assetType);
            assetReference.setWidth(clipAsset.width);
            assetReference.setHeight(clipAsset.height);
            assetReference.setRotation(clipAsset.rotation);
            assetReference.setDurationUs(10000000L);
            Clip clipCreateClip = Sequence.createClip(assetReference, 0L, 0L, string);
            if (clipCreateClip != null) {
                float width = assetReference.getWidth();
                float height = assetReference.getHeight();
                float f4 = width / height;
                if (f4 > 1.7777778f) {
                    f2 = 1920.0f;
                    f3 = 1920.0f / f4;
                } else {
                    f2 = 1080.0f * f4;
                    f3 = 1080.0f;
                }
                if (width < 1920.0f && height < 1080.0f) {
                    String str = this.context.getCacheDir() + File.separator + "temp_watermark.png";
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) f2, (int) f3, Bitmap.Config.ARGB_8888);
                    new Canvas(bitmapCreateBitmap).drawBitmap(Utilities.getScaledBitmap(overlayPath, (int) width, (int) height), 0.0f, 0.0f, new Paint());
                    FileOps.saveBitmap(bitmapCreateBitmap, str, Bitmap.CompressFormat.PNG, 100);
                    assetReference.setAssetPath(str);
                    assetReference.setWidth((int) f2);
                    assetReference.setHeight((int) f3);
                }
                float f5 = f2 / 1920.0f;
                float f6 = f3 / 1080.0f;
                clipCreateClip.setScale(f4 > 1.7777778f ? f5 : f6);
                sequence.setTrackXYOffset(1, (f5 - 1.0f) * 1.7777778f, f6 - 1.0f);
            }
            clipCreateEmptyVideoClip = clipCreateClip;
        } else {
            clipCreateEmptyVideoClip = Sequence.createEmptyVideoClip(0L, 0L, string);
        }
        if (clipCreateEmptyVideoClip != null) {
            sequence.addClipToTrack(clipCreateEmptyVideoClip, 1);
        }
    }

    private void initMediaEngine() {
        if (!this.initialized) {
            this.gpuMediaSurfaceView = new GPUMediaSurfaceView(this.context);
            try {
                this.sequenceRenderer = new SequenceRenderer(this.context, this.gpuMediaSurfaceView, this.currentProject.getSequence());
                this.gpuMediaSurfaceView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.editor.Editor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (Editor.this.sequenceRenderer != null) {
                                Editor.this.sequenceRenderer.init();
                            }
                        } catch (ExoPlaybackException e2) {
                            e2.printStackTrace();
                        }
                    }
                });
                this.initialized = true;
                this.projectPosterResources = new ProjectPosterResources(this.context, this.gpuMediaSurfaceView, new ProjectPosterResources.Listener() { // from class: com.adobe.premiereclip.editor.Editor.2
                    @Override // com.adobe.premiereclip.mediaengine.resources.ProjectPosterResources.Listener
                    public void onInit() {
                        if (Editor.this.pendingPosterTask && Editor.this.initialized) {
                            Editor.this.updateProjectPoster();
                        }
                    }
                });
                this.gpuMediaSurfaceView.requestRender();
            } catch (ExoPlaybackException e2) {
                e2.printStackTrace();
            }
        }
    }

    public String getExportFilePath() {
        return this.currentProject.getProjectExportName() + " " + new SimpleDateFormat("yyyy-MM-dd HH-mm-ss", Locale.US).format(new Date()) + ".mp4";
    }

    public boolean initPlayback() {
        if (!this.initialized) {
            return false;
        }
        this.currentProject.getSequence().setModeToPlayback();
        if (this.currentProject.getSequence().getClips().size() <= 0) {
            return false;
        }
        this.player.init(this.context, this.sequenceRenderer, this.clipSaveState);
        if (this.timeline != null) {
            this.timeline.refreshClipsTime(this.currentProject.getSequence().getClips());
            onUpdateSequenceDuration();
        }
        return true;
    }

    public void startExport(boolean z) {
        if (this.initialized) {
            this.exportMode = true;
            this.canAddBumper = z && DCXReader.isBumperEnabled(this.currentProject.projectKey);
            this.bumperPath = DCXReader.getBumperPath(this.currentProject.projectKey);
            if (this.player != null) {
                this.clipSaveState = this.player.release();
            }
        }
    }

    public void storeClipSaveState() {
        if (this.player != null) {
            this.clipSaveState = this.player.getClipSaveState();
        }
    }

    public void seekToClipSaveState() {
        seekToClipTime(this.clipSaveState.clipIndex, this.clipSaveState.clipOffset);
    }

    private void seekToClipTime(int i, long j) {
        this.player.seekToClipTime(i, j);
    }

    private void onUpdateSequenceDuration() {
        Sequence sequence = this.currentProject.getSequence();
        long sequenceDurationUs = sequence.getSequenceDurationUs();
        this.timeline.updateDuration(sequenceDurationUs);
        sequence.setDurationOfOverlayTrack(sequenceDurationUs);
    }

    private void resetSequence() {
        this.player.resetClips();
        this.delayedInit = true;
        if (this.currentProject.getSequence().getClips().size() == 0) {
            if (this.editorListener != null) {
                this.editorListener.triggerRemovePlayerView();
            }
        } else if (this.editorListener != null) {
            this.editorListener.triggerAddPlayerView();
        }
    }

    public SequencePlayer.PLAYER_STATE getPlayerState() {
        return this.player == null ? SequencePlayer.PLAYER_STATE.PAUSED : this.player.getPlayerState();
    }

    public void playerReInit(int i) {
        playerReInit(i, -1L);
    }

    public void playerReInit(int i, long j) {
        if (!this.initialized) {
            if (init() && initPlayback()) {
                if (this.editorListener != null) {
                    this.editorListener.triggerAddPlayerView();
                }
            } else if (this.editorListener != null) {
                this.editorListener.triggerRemovePlayerView();
            }
        } else {
            pauseInternal();
            resetSequence();
        }
        if (j == -1) {
            selectClip(i, true);
        } else {
            this.currentClipIndex = i;
            this.player.seekToClipTime(i, j);
        }
        onUpdateSequenceDuration();
    }

    private void notifyClipSelection(boolean z) {
        if (z) {
            ArrayList<Clip> clips = this.currentProject.getSequence().getClips();
            if (clips.size() > this.currentClipIndex && this.currentClipIndex >= 0) {
                Clip clip = clips.get(this.currentClipIndex);
                if (clip instanceof ImageClip) {
                    Log.d("storycard", "story card text: " + ((ImageClip) clip).getStoryCardText());
                    if (((ImageClip) clip).isStoryCard()) {
                        this.editorListener.onClipSelected(true);
                        return;
                    }
                }
            }
        }
        this.editorListener.onClipSelected(false);
    }

    public void setListener(Listener listener) {
        this.editorListener = listener;
    }

    public void pause() {
        if (this.player != null) {
            this.player.pause();
        }
    }

    protected void pauseInternal() {
        if (this.player != null) {
            this.player.pause();
            this.editorListener.onPlayerPaused();
        }
    }

    public View getView() {
        return this.gpuMediaSurfaceView;
    }

    public void release() {
        release(true);
    }

    public void release(boolean z) {
        if (this.player == null && this.sequenceExporter == null) {
            this.initialized = false;
            return;
        }
        if (this.player != null) {
            SequencePlayer.ClipSaveState clipSaveStateRelease = this.player.release();
            if (z) {
                this.clipSaveState = clipSaveStateRelease;
            }
            this.player = null;
        }
        if (this.sequenceExporter != null) {
            this.sequenceExporter.release();
            this.sequenceExporter = null;
        }
        if (ProjectPosterTask.isRunning() && this.currentProject.getSequence().getClips().size() > 0) {
            ProjectPosterTask.getInstance().cancel(true);
            this.projectPosterResources.release();
        }
        if (this.sequenceRenderer != null) {
            try {
                this.sequenceRenderer.release();
                this.sequenceRenderer = null;
            } catch (ExoPlaybackException e2) {
                e2.printStackTrace();
            }
        }
        this.initialized = false;
        this.pendingPosterTask = false;
    }

    protected void releaseInternal() {
        Log.i("Project Poster", "released");
        release();
        if (this.editorListener != null) {
            this.editorListener.triggerRemovePlayerView();
        }
    }

    public void setClipPlayback() {
        if (this.player != null) {
            this.player.setClipPlayback(true);
        }
    }

    public void setSequencePlayback() {
        if (this.player != null) {
            this.player.setClipPlayback(false);
        }
    }

    public void playSequence() {
        if (this.player != null) {
            if (this.delayedInit) {
                this.player.reinitAudio(false);
                this.delayedInit = false;
            }
            this.player.playSequence();
        }
    }

    public void playClip() {
        if (this.player != null) {
            if (this.delayedInit) {
                this.player.reinitAudio(true);
                this.delayedInit = false;
            }
            this.player.playClip();
        }
    }

    public void makeClipIntoStoryCard(String str) {
        Clip clip = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
        if (clip instanceof ImageClip) {
            ((ImageClip) clip).setStoryCard(str);
            DCXWriter.updateClip(clip);
        }
    }

    public void replaceClipAtIndex(int i, String str) {
        ArrayList<MediaInfo> arrayList = new ArrayList<>();
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.setAssetUrl(str);
        mediaInfo.setLocalPath(str);
        mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(str).lastModified())));
        arrayList.add(mediaInfo);
        ArrayList<ClipAsset> arrayListAddAssets = MediaManager.getInstance().addAssets(arrayList);
        if (arrayListAddAssets.size() > 0) {
            this.currentProject.replaceAssetAtIndex(i, arrayListAddAssets.get(0));
            playerReInit(this.currentClipIndex);
            snapToBeatForClipsOnward(this.currentClipIndex, true);
        }
    }

    public void duplicateClip() {
        pauseInternal();
        Clip clip = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
        Clip clipCopyClip = clip.copyClip();
        Metrics.sharedInstance().didTapDuplicateClipForClipType(clip.getClipTypeString());
        ArrayList<Clip> arrayList = new ArrayList<>();
        arrayList.add(clipCopyClip);
        this.currentProject.addClipsAtIndex(arrayList, this.currentClipIndex + 1);
        if (this.timeline != null) {
            this.timeline.addClip(this.currentProject.getSequence().getClips().get(this.currentClipIndex + 1), this.currentClipIndex + 1);
        }
        playerReInit(this.currentClipIndex + 1);
        snapToBeatForClipsOnward(this.currentClipIndex + 1, true);
    }

    public void splitClip() {
        float durationUs;
        pauseInternal();
        Clip clip = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
        Clip clipCopyClip = clip.copyClip();
        ArrayList<Clip> arrayList = new ArrayList<>();
        arrayList.add(clipCopyClip);
        this.currentProject.addClipsAtIndex(arrayList, this.currentClipIndex + 1);
        float selectedScrubberValue = this.trimBar.getSelectedScrubberValue();
        if (this.snapToBeatController.isEnabled() && this.snapToBeatController.isReady()) {
            ArrayList<SnapToBeatController.SyncPoint> syncPoints = this.trimBar.getSyncPoints();
            durationUs = syncPoints.get(SnapToBeatController.findClosestSyncPoint(syncPoints, (long) (selectedScrubberValue * r4))).time / ((long) (clip.getAssetReference().getDurationUs() / clip.getSpeed()));
        } else {
            durationUs = selectedScrubberValue;
        }
        Metrics.sharedInstance().didTapSplitClipForClipType(clip.getClipTypeString(), durationUs, this.currentProject.getSequence().getClips().get(this.currentClipIndex + 1).getDurationUsWithSpeed() / 1000000);
        setClipEndTime(this.currentClipIndex, durationUs);
        setClipStartTime(this.currentClipIndex + 1, durationUs);
        if (this.timeline != null) {
            this.timeline.addClip(this.currentProject.getSequence().getClips().get(this.currentClipIndex + 1), this.currentClipIndex + 1);
            Clip clip2 = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
            this.timeline.updateTimeOfClipAt(this.currentClipIndex, clip2.getStartTimeUs(), clip2.getDurationUsWithSpeed());
        }
        playerReInit(this.currentClipIndex + 1);
        snapToBeatForClipsOnward(this.currentClipIndex - 1, true);
    }

    public void endExport() {
        if (this.sequenceExporter != null) {
            this.sequenceExporter.release();
        }
    }

    public void seekToSequenceTime(long j) {
        if (this.initialized && this.player != null) {
            pauseInternal();
            this.player.seekToSequenceTime(j);
        }
    }

    public void setScrubbing(boolean z) {
        this.scrubbing = z;
        if (this.player != null) {
            this.player.setScrubbing(z);
        }
    }

    public void setTrimBar(RangeSeekBar rangeSeekBar) {
        if (this.player != null) {
            this.trimBar = rangeSeekBar;
            this.trimBar.setNotifyWhileDragging(true);
            this.trimBar.setOnRangeSeekBarChangeListener(this);
        }
    }

    public void onScrubbingStarted() {
        this.scrubbing = true;
        this.scrubTimeMs = System.currentTimeMillis();
        this.prevSeekOffset = -1.0f;
        pauseInternal();
        this.player.setScrubbing(true);
        this.player.setClipPlayback(true);
    }

    public void onScrubberMoved(float f2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.scrubTimeMs;
        if (jCurrentTimeMillis / 1000.0f < 0.33333334f) {
            Log.i("SeekRestrict", " not seeking timeElapsed " + jCurrentTimeMillis + " 0.33333334");
            return;
        }
        this.scrubTimeMs = System.currentTimeMillis();
        if (this.prevSeekOffset == -1.0f || Math.abs(f2 - this.prevSeekOffset) > 0.01d) {
            Log.i("SeekRestrict", " seeking offset: " + f2 + " " + this.prevSeekOffset);
            this.prevSeekOffset = f2;
            this.player.seekCurrentClipToOffset(f2);
            return;
        }
        Log.i("SeekRestrict", " not seeking offset: " + f2 + " " + this.prevSeekOffset);
    }

    public void onScrubbingEnded() {
        this.scrubbing = false;
        this.player.setScrubbing(false);
        this.player.seekCurrentClipToOffset(this.trimBar.getSelectedScrubberValue());
    }

    @Override // com.adobe.premiereclip.editor.RangeSeekBar.OnRangeSeekBarChangeListener
    public void onThumbMoved(RangeSeekBar.Thumb thumb) {
        float selectedScrubberValue = 0.0f;
        switch (thumb) {
            case MIN:
                selectedScrubberValue = this.trimBar.getSelectedMinValue();
                setClipStartTime(this.currentClipIndex, selectedScrubberValue);
                break;
            case MAX:
                selectedScrubberValue = this.trimBar.getSelectedMaxValue();
                setClipEndTime(this.currentClipIndex, selectedScrubberValue);
                break;
            case SCRUBBER:
                selectedScrubberValue = this.trimBar.getSelectedScrubberValue();
                break;
        }
        onScrubberMoved(selectedScrubberValue);
    }

    @Override // com.adobe.premiereclip.editor.RangeSeekBar.OnRangeSeekBarChangeListener
    public void onThumbMoveStarted(RangeSeekBar.Thumb thumb) {
        this.editorListener.onRangeSeekbarThumbMoveStarted();
        onScrubbingStarted();
    }

    @Override // com.adobe.premiereclip.editor.RangeSeekBar.OnRangeSeekBarChangeListener
    public void onThumbMoveEnded(RangeSeekBar.Thumb thumb) {
        boolean z;
        switch (thumb) {
            case MIN:
                z = true;
                break;
            case MAX:
                z = false;
                break;
            default:
                this.editorListener.onRangeSeekbarThumbMoveEnded();
                onScrubbingEnded();
        }
        this.delayedInit = true;
        Clip clip = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
        if (this.timeline != null) {
            this.timeline.updateTimeOfClipAt(this.currentClipIndex, clip.getStartTimeUs(), clip.getDurationUsWithSpeed());
            onUpdateSequenceDuration();
        }
        Metrics.sharedInstance().didTrimClipForClipType(clip.getClipTypeString(), Boolean.valueOf(z), clip.getStartTimeUsWithSpeed() / 1000000.0d, clip.getDurationUsWithSpeed() / 1000000.0d, clip.getAssetReference().getDurationUs() / 1000000.0d);
        snapToBeatForClipsOnward(this.currentClipIndex, false);
        this.editorListener.onRangeSeekbarThumbMoveEnded();
        onScrubbingEnded();
    }

    public void setClipStartTimeLocal(int i, float f2) {
        this.currentProject.setStartTimeOfClipUs(i, (long) (this.currentProject.getSequence().getClips().get(i).getAssetReference().getDurationUs() * f2));
    }

    public void setClipStartTime(int i, float f2) {
        setClipStartTimeLocal(i, f2);
        DCXWriter.updateClip(this.currentProject.getSequence().getClips().get(i));
    }

    public void setClipEndTimeLocal(int i, float f2) {
        this.currentProject.setEndTimeOfClipUs(i, (long) (this.currentProject.getSequence().getClips().get(i).getAssetReference().getDurationUs() * f2));
    }

    public void setClipEndTime(int i, float f2) {
        setClipEndTimeLocal(i, f2);
        DCXWriter.updateClip(this.currentProject.getSequence().getClips().get(i));
    }

    public void finishTwoFingerSwipe() {
        Clip clip = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
        setClipStartTime(this.currentClipIndex, this.trimBar.getSelectedMinValue());
        setClipEndTime(this.currentClipIndex, this.trimBar.getSelectedMaxValue());
        Metrics.sharedInstance().didTwoFingerPan(clip.getStartTimeUsWithSpeed() / 1000000.0d, clip.getDurationUsWithSpeed() / 1000000.0d, clip.getAssetReference().getDurationUs() / 1000000.0d);
        this.delayedInit = true;
        if (this.timeline != null) {
            this.timeline.updateTimeOfClipAt(this.currentClipIndex, clip.getStartTimeUs(), clip.getDurationUsWithSpeed());
        }
        onScrubbingEnded();
    }

    public void setLook(BaseLook baseLook) {
        this.currentProject.getSequence().setLook(baseLook);
    }

    public void setClipOptions(ClipOptions clipOptions, float f2) {
        int posterClipIndex = this.currentProject.getPosterClipIndex();
        switch (clipOptions) {
            case EXPOSURE:
                this.currentProject.setExposureOnClip(this.currentClipIndex, f2);
                if (this.currentClipIndex == posterClipIndex) {
                    this.posterClipDirty = true;
                }
                break;
            case HIGHLIGHTS:
                this.currentProject.setHighlightsOnClip(this.currentClipIndex, f2);
                if (this.currentClipIndex == posterClipIndex) {
                    this.posterClipDirty = true;
                }
                break;
            case SHADOWS:
                this.currentProject.setShadowsOnClip(this.currentClipIndex, 1.0f - f2);
                if (this.currentClipIndex == posterClipIndex) {
                    this.posterClipDirty = true;
                }
                break;
            case SPEED:
                pauseInternal();
                float speed = this.currentProject.getSequence().getClips().get(this.currentClipIndex).getSpeed();
                long currentClipOffset = this.player.getCurrentClipOffset();
                Log.i("Player speed", "current: " + currentClipOffset);
                this.currentProject.setSpeedOfClip(this.currentClipIndex, f2);
                Clip clip = this.currentProject.getSequence().getClips().get(this.currentClipIndex);
                if (this.timeline != null) {
                    this.timeline.updateTimeOfClipAt(this.currentClipIndex, clip.getStartTimeUs(), clip.getDurationUsWithSpeed());
                    onUpdateSequenceDuration();
                }
                long j = (long) ((currentClipOffset * speed) / f2);
                Log.i("Player speed", "changed to: " + j);
                this.player.reinitAudio(true);
                this.player.seekToClipTime(this.currentClipIndex, j);
                snapToBeatForClipsOnward(this.currentClipIndex, false);
                break;
            case VOLUME:
                pauseInternal();
                this.currentProject.setAudioVolumeOfClip(this.currentClipIndex, f2);
                this.delayedInit = true;
                break;
            case AUDIO_FADE_IN:
                pauseInternal();
                if (f2 > 0.0f) {
                    this.currentProject.setAudioFadeInOfClip(this.currentClipIndex, true);
                } else {
                    this.currentProject.setAudioFadeInOfClip(this.currentClipIndex, false);
                }
                this.delayedInit = true;
                break;
            case AUDIO_FADE_OUT:
                pauseInternal();
                if (f2 > 0.0f) {
                    this.currentProject.setAudioFadeOutOfClip(this.currentClipIndex, true);
                } else {
                    this.currentProject.setAudioFadeOutOfClip(this.currentClipIndex, false);
                }
                this.delayedInit = true;
                break;
            case AUDIO_SMART_VOLUME:
                pauseInternal();
                if (f2 > 0.0f) {
                    this.currentProject.setSmartVolumeOfClip(this.currentClipIndex, true);
                } else {
                    this.currentProject.setSmartVolumeOfClip(this.currentClipIndex, false);
                }
                this.delayedInit = true;
                break;
            case AUDIO_MUTE:
                pauseInternal();
                if (f2 > 0.0f) {
                    this.currentProject.muteClip(this.currentClipIndex);
                } else {
                    this.currentProject.unMuteClip(this.currentClipIndex);
                }
                this.delayedInit = true;
                break;
        }
        DCXWriter.updateClip(this.currentProject.getSequence().getClips().get(this.currentClipIndex));
    }

    public void setSequenceAudioOptions(SequenceAudioOptions sequenceAudioOptions, float f2) {
        boolean zIsEmpty = this.currentProject.getSequence().getClips().isEmpty();
        if (!zIsEmpty) {
            pauseInternal();
            seekToSequenceTime(0L);
        }
        switch (sequenceAudioOptions) {
            case AUDIO_FADE_IN:
                this.currentProject.getSequence().setAudioFadeInApplied(f2 > 0.0f);
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                break;
            case AUDIO_FADE_OUT:
                this.currentProject.getSequence().setAudioFadeOutApplied(f2 > 0.0f);
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                break;
            case AUDIO_MIX:
                this.currentProject.getSequence().setAudioDuckApplied(f2 > 0.0f);
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                break;
            case AUDIO_VOLUME:
                this.currentProject.getSequence().setVolume(f2);
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                break;
            case AUDIO_DELETE:
                this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().removeAllClips();
                DCXWriter.deleteAudioTrack();
                break;
            case AUDIO_SNAP_TO_BEAT:
                this.currentProject.getSequence().setSnapToBeatApplied(f2 > 0.0f);
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                break;
            case AUDIO_START_CHANGE:
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                break;
            case AUDIO_SYNC_PACE:
                pauseInternal();
                this.currentProject.getSequence().setAudioSyncPace(f2);
                DCXWriter.updateAudioTrack(this.currentProject.getSequence());
                this.delayedInit = true;
                break;
        }
        if (!zIsEmpty) {
            this.delayedInit = true;
        }
    }

    public void maybeUpdatePoster() {
        if (this.posterClipDirty) {
            this.posterClipDirty = false;
            if (this.timeline != null) {
                int posterClipIndex = this.currentProject.getPosterClipIndex();
                if (posterClipIndex != -1) {
                    this.timeline.resetClipThumb(posterClipIndex);
                    return;
                }
                return;
            }
            updateProjectPoster();
        }
    }

    public void setTransition(boolean z) {
        boolean zTransitionAppliedOnSequence = this.currentProject.getSequence().transitionAppliedOnSequence();
        this.currentProject.getSequence().setGlobalTransition(z);
        if (this.currentProject.getSequence().transitionAppliedOnSequence() != zTransitionAppliedOnSequence) {
            DCXWriter.setCrossDissolves(z);
        }
    }

    public void setFadeIn(boolean z) {
        boolean zFadeInApplied = this.currentProject.getSequence().fadeInApplied();
        this.currentProject.getSequence().setFadeIn(z);
        if (this.currentProject.getSequence().fadeInApplied() != zFadeInApplied) {
            DCXWriter.setFadeIn(z);
        }
    }

    public void setFadeOut(boolean z) {
        boolean zFadeOutApplied = this.currentProject.getSequence().fadeOutApplied();
        this.currentProject.getSequence().setFadeOut(z);
        if (this.currentProject.getSequence().fadeOutApplied() != zFadeOutApplied) {
            DCXWriter.setFadeOut(z);
        }
    }

    public void setPhotoMotion(boolean z) {
        boolean zPhotoMotionApplied = this.currentProject.getSequence().photoMotionApplied();
        this.currentProject.getSequence().setPhotoMotion(z);
        if (this.currentProject.getSequence().photoMotionApplied() != zPhotoMotionApplied) {
            DCXWriter.setPhotoMotion(z);
        }
    }

    public void addAssets(ArrayList<ClipAsset> arrayList) {
        this.currentProject.addAssetsAtIndex(arrayList, this.currentClipIndex + 1);
        snapToBeatForClipsOnward(this.currentClipIndex + 1, true);
    }

    public int getCurrentClipIndex() {
        return this.currentClipIndex;
    }

    public void saveCurrentClipIndex(int i) {
        this.currentClipIndex = i;
        this.clipSaveState.clipIndex = i;
        ArrayList<Clip> clips = this.currentProject.getSequence().getClips();
        if (i < clips.size() && i >= 0) {
            this.clipSaveState.clipOffset = clips.get(i).getStartTimeUsWithSpeed();
        } else {
            this.clipSaveState.clipOffset = 0L;
        }
        this.clipSaveState.isEnded = false;
    }

    protected void setCurrentClipIndex(int i, boolean z) {
        this.currentClipIndex = i;
        if (this.timeline != null) {
            this.timeline.setActiveClipIndex(i, z);
        }
        notifyClipSelection(true);
    }

    public void selectClip(int i, boolean z) {
        if (this.player != null) {
            pauseInternal();
            this.player.selectClip(i, z);
        }
        this.currentClipIndex = i;
    }

    @Override // com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onClipSelected(int i) {
        selectClip(i, false);
    }

    @Override // com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onClipRemoved(int i) {
        pauseInternal();
        Clip clip = this.currentProject.getSequence().getClips().get(i);
        this.currentProject.removeAsset(i);
        DCXWriter.removeClip(clip);
        int size = this.currentProject.getSequence().getClips().size();
        if (this.currentClipIndex >= size) {
            this.currentClipIndex = size - 1;
        }
        setCurrentClipIndex(this.currentClipIndex, true);
        if (size == 0) {
            releaseInternal();
        } else {
            playerReInit(this.currentClipIndex);
            snapToBeatForClipsOnward(this.currentClipIndex, true);
        }
    }

    @Override // com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onClipMoved(int i, int i2) {
        pauseInternal();
        long currentClipOffset = this.player.getCurrentClipOffset();
        this.currentProject.moveAsset(i, i2);
        Clip clip = this.currentProject.getSequence().getClips().get(i2);
        Clip clip2 = i2 + (-1) >= 0 ? this.currentProject.getSequence().getClips().get(i2 - 1) : null;
        Clip clip3 = i2 + 1 < this.currentProject.getSequence().getClips().size() ? this.currentProject.getSequence().getClips().get(i2 + 1) : null;
        ArrayList arrayList = new ArrayList();
        arrayList.add(clip);
        DCXWriter.moveClips(clip2, arrayList, clip3);
        this.currentClipIndex = i2;
        playerReInit(this.currentClipIndex, currentClipOffset);
        snapToBeatForClipsOnward(Math.min(i, i2), true);
    }

    @Override // com.adobe.premiereclip.editor.Timeline.TimelineListener
    public String onClipChanged(int i) {
        return (i == 0 || i == this.currentProject.getPosterClipIndex()) ? this.currentProject.getThumbPath() : "";
    }

    @Override // com.adobe.premiereclip.editor.Timeline.TimelineListener
    public void onProjectPosterUpdated() {
        updateProjectPoster();
    }

    @Override // com.adobe.premiereclip.util.ProjectPosterTask.TaskCompleted
    public void onProjectPosterSaved(boolean z) {
        if (z) {
            DCXWriter.setProjectPoster(this.currentProject.getPosterPath());
            this.currentProject.setPosterProperties();
        }
        if (this.timeline != null) {
            this.timeline.projectPosterSaved();
        }
        BitmapCache.markBitmapDirty(this.currentProject.projectKey);
    }

    public void updateProjectPoster() {
        String thumbPath = this.currentProject.getThumbPath();
        if (this.currentProject.posterPropertiesEqual(thumbPath)) {
            Log.i(TAG, "Aborting poster generation for " + thumbPath);
            return;
        }
        Log.i("Project Poster", "firstclip: " + thumbPath);
        if (thumbPath == null) {
            Log.i("Project Poster", "set null");
            this.currentProject.setPosterPath(null);
            this.currentProject.setPosterHashValue(null);
            this.currentProject.setNormalPosterPath(null);
            DCXWriter.setProjectPoster(null);
            return;
        }
        if (!this.initialized) {
            synchronized (this) {
                this.pendingPosterTask = true;
            }
            return;
        }
        this.pendingPosterTask = false;
        if (ProjectPosterTask.isRunning()) {
            Crashlytics.log(6, TAG, "Found ProjectPosterTask running. Task should not be running");
        }
        ProjectPosterTask projectPosterTask = ProjectPosterTask.getInstance();
        projectPosterTask.setProjectPosterResources(this.projectPosterResources);
        projectPosterTask.setTaskCompletedListener(this);
        projectPosterTask.executeOnExecutor(Utilities.THREAD_POOL_EXECUTOR, this.currentProject);
    }

    public void createTitleImage() {
        int i;
        TitleImage titleImage = new TitleImage(UUID.randomUUID().toString(), this.currentProject.projectKey, null, null, null);
        if (this.currentClipIndex == -1) {
            i = 0;
        } else {
            i = this.currentClipIndex + 1;
        }
        ArrayList<Clip> arrayList = new ArrayList<>();
        ImageClip imageClip = (ImageClip) Project.createClip(titleImage.getClipAsset(), this.currentProject.getSequence().getClips());
        imageClip.setTitleImage(titleImage);
        arrayList.add(imageClip);
        this.currentProject.addClipsAtIndex(arrayList, i);
        if (this.timeline != null) {
            this.timeline.addClip(imageClip, i);
        }
        playerReInit(i);
        snapToBeatForClipsOnward(i, true);
    }

    public void snapToBeatForClipsOnward(int i, boolean z) {
        if (this.snapToBeatController.isEnabled() && this.snapToBeatController.isReady()) {
            Log.d(TAG, "snapping beats for clips from " + i);
            ArrayList<Clip> clips = this.currentProject.getSequence().getClips();
            int size = clips.size();
            ArrayList arrayList = new ArrayList();
            while (i < size) {
                snapToBeatForClip(i, z);
                arrayList.add(clips.get(i));
                i++;
            }
            DCXWriter.updateClips(arrayList);
        }
    }

    private void snapToBeatForClip(int i, boolean z) {
        if (this.snapToBeatController.isEnabled() && this.snapToBeatController.isReady()) {
            Sequence sequence = this.currentProject.getSequence();
            Clip clip = sequence.getClips().get(i);
            ArrayList<SnapToBeatController.SyncPoint> syncPointsForClip = this.snapToBeatController.getSyncPointsForClip(i, sequence, true, z || i != this.currentClipIndex);
            Log.d(TAG, "snapping beats for clip index " + i);
            if (syncPointsForClip != null && syncPointsForClip.size() != 0) {
                long startTimeUsWithSpeed = clip.getStartTimeUsWithSpeed();
                if (i != 0 && SnapToBeatController.binary_search(syncPointsForClip, startTimeUsWithSpeed) == -1) {
                    Log.w(TAG, "The start time " + startTimeUsWithSpeed + " isn't present as a filtered sync point.");
                }
                long endTimeUsWithSpeed = clip.getEndTimeUsWithSpeed();
                int iLower_bound = SnapToBeatController.lower_bound(syncPointsForClip, endTimeUsWithSpeed);
                long j = Long.MAX_VALUE;
                if (iLower_bound == -1) {
                    Log.w(TAG, "Couldn't find lower bound for end time " + endTimeUsWithSpeed);
                } else {
                    j = syncPointsForClip.get(iLower_bound).time;
                }
                if (j >= endTimeUsWithSpeed) {
                    long j2 = Long.MIN_VALUE;
                    if (iLower_bound > 0) {
                        j2 = syncPointsForClip.get(iLower_bound - 1).time;
                    } else if (iLower_bound == -1) {
                        j2 = syncPointsForClip.get(syncPointsForClip.size() - 1).time;
                    }
                    if (endTimeUsWithSpeed - j2 >= j - endTimeUsWithSpeed || j2 <= startTimeUsWithSpeed) {
                        if (j >= Long.MAX_VALUE) {
                            return;
                        } else {
                            j2 = j;
                        }
                    }
                    long durationUs = (long) ((clip.getAssetReference().getDurationUs() / clip.getSpeed()) + 0.5f);
                    if (j2 > durationUs && j2 - durationUs <= startTimeUsWithSpeed) {
                        setClipStartTime(i, (startTimeUsWithSpeed - (j2 - durationUs)) / durationUs);
                    }
                    Log.d(TAG, "setting local offset " + j2 + "clip duration " + durationUs);
                    float f2 = j2 / durationUs;
                    setClipEndTimeLocal(i, f2);
                    this.timeline.updateTimeOfClipAt(i, startTimeUsWithSpeed, clip.getDurationUsWithSpeed());
                    onUpdateSequenceDuration();
                    if (i == this.currentClipIndex) {
                        this.trimBar.setSyncPoints(syncPointsForClip, durationUs, startTimeUsWithSpeed);
                        this.trimBar.setSelectedMaxValue(f2);
                    }
                }
            }
        }
    }

    public static Clip createBumperClip(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        ArrayList<MediaInfo> arrayList = new ArrayList<>();
        MediaInfo mediaInfo = new MediaInfo();
        mediaInfo.setAssetUrl(str);
        mediaInfo.setLocalPath(str);
        mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(str).lastModified())));
        arrayList.add(mediaInfo);
        ClipAsset clipAsset = MediaManager.getInstance().addAssets(arrayList).get(0);
        AssetReference assetReference = new AssetReference(clipAsset.clipAssetID, clipAsset.fileUri, clipAsset.filePath, clipAsset.originalPath, clipAsset.originalAssetDate, clipAsset.assetType);
        assetReference.setWidth(clipAsset.width);
        assetReference.setHeight(clipAsset.height);
        assetReference.setRotation(clipAsset.rotation);
        assetReference.setDurationUs(0L);
        return Sequence.createClip(assetReference, 0L, 0L, UUID.randomUUID().toString());
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void setSequenceTime(long j) {
        if (this.player != null && this.editorListener != null) {
            this.editorListener.onPlayerTimeUpdate(j);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void setClipTime(float f2, boolean z) {
        if (this.player == null || this.trimBar == null || this.scrubbing) {
            return;
        }
        if ((z || !this.player.isPaused()) && this.trimBar.getSelectedScrubberValue() != f2) {
            this.trimBar.setSelectedScrubberValue(f2);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void setTrimBar(float f2, float f3) {
        if (this.player != null && this.trimBar != null) {
            this.trimBar.setSelectedMaxValue(1.0f);
            this.trimBar.setSelectedMinValue(f2);
            this.trimBar.setSelectedMaxValue(f3);
            this.trimBar.setSelectedScrubberValue(f2);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void setCurrentClip(int i) {
        if (this.player != null) {
            setCurrentClipIndex(i, false);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void onPaused() {
        if (this.player != null && this.editorListener != null) {
            this.editorListener.onPlayerPaused();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void foundUnavailableClip(int i) {
        if (this.player != null && this.currentProject.getSequence().getClips().size() > i) {
            Clip clip = this.currentProject.getSequence().getClips().get(i);
            if (this.timeline != null) {
                this.timeline.resetClip(clip, i);
            }
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void onLoadingStarted() {
        if (this.player != null && this.editorListener != null && !this.scrubbing) {
            this.editorListener.onLoadingStarted();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void onLoadingCompleted() {
        if (this.player != null && this.editorListener != null) {
            this.editorListener.onLoadingCompleted(this.player.isPaused());
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.SequencePlayer.Listener
    public void onReleased() {
        if (!this.exportMode || this.sequenceExporter == null) {
            this.exportMode = false;
            return;
        }
        this.exportMode = false;
        this.sequenceExporter.init(this.sequenceRenderer);
        this.exportFile = Utilities.getExportMediaFile(this.context, getExportFilePath());
        this.sequenceExporter.exportSequence(this.exportFile, this.canAddBumper, this.bumperPath);
    }

    @Override // com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.Listener
    public void onProgress(double d2) {
        this.editorListener.onExportProgress(d2);
    }

    @Override // com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.Listener
    public void onEnded(boolean z) {
        if (this.initialized) {
            this.editorListener.onExportEnded(this.exportFile, z);
        }
    }
}
