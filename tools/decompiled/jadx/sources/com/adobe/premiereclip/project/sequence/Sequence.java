package com.adobe.premiereclip.project.sequence;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.adobe.audiomixer.AudioMixer;
import com.adobe.audiomixer.IAudioSequence;
import com.adobe.audiomixer.IBackgroundMusicTrack;
import com.adobe.audiomixer.IClip;
import com.adobe.audiomixer.VideoTime;
import com.adobe.customextractor.ClipExtractor;
import com.adobe.customextractor.Util.Media.MediaFormat;
import com.adobe.customextractor.Util.Media.MimeTypes;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.dcx.DCXReader;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.util.Utilities;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Sequence {
    public static final int BASE_TRACK_INDEX = 0;
    public static final int EXPORT_FHD_HEIGHT = 1080;
    public static final int EXPORT_FHD_WIDTH = 1920;
    public static final int EXPORT_HD_HEIGHT = 720;
    public static final int EXPORT_HD_WIDTH = 1280;
    public static final int EXPORT_UHD_HEIGHT = 2160;
    public static final int EXPORT_UHD_WIDTH = 3840;
    public static final int PLAYBACK_HEIGHT = 360;
    public static final int PLAYBACK_WIDTH = 640;
    public static final int VIDEO_BUG_TRACK_INDEX = 1;
    private BaseLook look;
    private boolean photoMotion;
    private ArrayList<Long> transitionTimes;
    public static boolean MODE_PLAYBACK = true;
    private static int timePrecision = 6;
    private int _audioClipsCount = -1;
    private int _videoClipsCount = -1;
    private int _storycardClipsCount = -1;
    private int _titleClipsCount = -1;
    private int _stillImageClipsCount = -1;
    private int _sampleRate = 48000;
    private int _channel = 2;
    private VideoTrackGroup videoTrackGroup = new VideoTrackGroup();
    private AudioTrackGroup audioTrackGroup = new AudioTrackGroup();

    private static float roundToPrecision(double d2, int i) {
        return (float) (Math.round(d2 * r0) / Math.pow(10.0d, i));
    }

    public Sequence() {
        setLook(LocalLooks.getClipLook("0"));
        Log.d(DCXProjectKeys.kDCXKey_SequenceNode_name, "got look" + this.look.getLookName());
        this.videoTrackGroup.setSize(PLAYBACK_WIDTH, PLAYBACK_HEIGHT);
        setPhotoMotion(true);
    }

    public boolean photoMotionApplied() {
        return this.photoMotion;
    }

    public void setPhotoMotion(boolean z) {
        this.photoMotion = z;
        Iterator<Clip> it = getClips().iterator();
        while (it.hasNext()) {
            it.next().setScalingOn(z);
        }
    }

    public boolean getAudioFadeInApplied() {
        return ((AudioClip) this.audioTrackGroup.getAudioTrack().getClipAtIndex(0)).getAudioFadeInApplied();
    }

    public void setAudioFadeInApplied(boolean z) {
        ((AudioClip) this.audioTrackGroup.getAudioTrack().getClipAtIndex(0)).setAudioFadeInApplied(z);
    }

    public boolean getAudioFadeOutApplied() {
        return ((AudioClip) this.audioTrackGroup.getAudioTrack().getClipAtIndex(0)).getAudioFadeOutApplied();
    }

    public void setAudioFadeOutApplied(boolean z) {
        ((AudioClip) this.audioTrackGroup.getAudioTrack().getClipAtIndex(0)).setAudioFadeOutApplied(z);
    }

    public boolean getAudioDuckApplied() {
        return this.audioTrackGroup.getAudioTrack().isAudioDuckApplied();
    }

    public void setAudioDuckApplied(boolean z) {
        this.audioTrackGroup.getAudioTrack().setAudioDuckApplied(z);
    }

    public boolean getSnapToBeatApplied() {
        return this.audioTrackGroup.getAudioTrack().isSnapToBeatApplied();
    }

    public void setSnapToBeatApplied(boolean z) {
        this.audioTrackGroup.getAudioTrack().setSnapToBeatApplied(z);
    }

    public float getAudioSyncPace() {
        return this.audioTrackGroup.getAudioTrack().getAudioSyncPace();
    }

    public void setAudioSyncPace(float f2) {
        this.audioTrackGroup.getAudioTrack().setAudioSyncPace(f2);
    }

    public float getVolume() {
        return ((AudioClip) this.audioTrackGroup.getAudioTrack().getClipAtIndex(0)).getVolume();
    }

    public void setVolume(float f2) {
        ((AudioClip) this.audioTrackGroup.getAudioTrack().getClipAtIndex(0)).setVolume(f2);
    }

    public void setModeToPlayback() {
        this.videoTrackGroup.setSize(PLAYBACK_WIDTH, PLAYBACK_HEIGHT);
        MODE_PLAYBACK = true;
        for (Clip clip : getClips()) {
            clip.setDisableTransition(false);
            clip.setTempUnavailable(false);
        }
    }

    public void setModeToExport() {
        int i = EXPORT_HD_WIDTH;
        int exportResolution = EXPORT_HD_HEIGHT;
        Context context = PremiereClipApplication.getContext();
        if (Utilities.is1080pExportSupported(context)) {
            exportResolution = ClipPreferences.getInstance(context).getExportResolution();
        }
        switch (exportResolution) {
            case 1080:
                i = 1920;
                break;
            case EXPORT_UHD_HEIGHT /* 2160 */:
                i = EXPORT_UHD_WIDTH;
                break;
        }
        this.videoTrackGroup.setSize(i, exportResolution);
        MODE_PLAYBACK = false;
        for (Clip clip : getClips()) {
            clip.setDisableTransition(false);
            clip.setTempUnavailable(false);
        }
    }

    public int[] getSize() {
        return new int[]{this.videoTrackGroup.getWidth(), this.videoTrackGroup.getHeight()};
    }

    public VideoTrackGroup getVideoTrackGroup() {
        return this.videoTrackGroup;
    }

    public AudioTrackGroup getAudioTrackGroup() {
        return this.audioTrackGroup;
    }

    public long getSequenceDurationUs() {
        return this.videoTrackGroup.getMainVideoTrack().getTrackDurationUS();
    }

    public double getSequenceDurationInSeconds() {
        return getSequenceDurationUs() / 1000000.0d;
    }

    public ArrayList<Clip> getClips() {
        return this.videoTrackGroup.getMainVideoTrack().getClips();
    }

    public ArrayList<Clip> getClips(int i) {
        if (i == 0) {
            return this.videoTrackGroup.getMainVideoTrack().getClips();
        }
        if (i == 1) {
            return this.videoTrackGroup.getOverlayTrack().getClips();
        }
        return null;
    }

    public ArrayList<ArrayList<Clip>> getGroups() {
        return this.videoTrackGroup.getMainVideoTrack().getGroups();
    }

    public int getFirstClipIndexInGroup(int i) {
        return this.videoTrackGroup.getMainVideoTrack().getFirstClipIndexInGroup(i);
    }

    public int getLastClipIndexInGroup(int i) {
        return this.videoTrackGroup.getMainVideoTrack().getLastClipIndexInGroup(i);
    }

    public void setClips(ArrayList<Clip> arrayList) {
        synchronized (this) {
            this.videoTrackGroup.getMainVideoTrack().setClips(arrayList);
        }
    }

    public void addClip(Clip clip) {
        synchronized (this) {
            clip.setScalingOn(this.photoMotion);
            this.videoTrackGroup.addClipToVideoTrack(clip);
        }
    }

    public void addClipToTrack(Clip clip, int i) {
        synchronized (this) {
            VideoTrack videoTrack = this.videoTrackGroup.getVideoTrack(i);
            if (videoTrack != null) {
                videoTrack.addClip(clip);
            }
        }
    }

    public void setTrackXYOffset(int i, float f2, float f3) {
        synchronized (this) {
            VideoTrack videoTrack = this.videoTrackGroup.getVideoTrack(i);
            if (videoTrack != null) {
                videoTrack.setXYOffset(f2, f3);
            }
        }
    }

    public void addClipAtIndex(Clip clip, int i) {
        synchronized (this) {
            clip.setScalingOn(this.photoMotion);
            this.videoTrackGroup.addClipToVideoTrackAtIndex(clip, i);
        }
    }

    public void addClipsAtIndex(ArrayList<Clip> arrayList, int i) {
        synchronized (this) {
            Iterator<Clip> it = arrayList.iterator();
            while (it.hasNext()) {
                addClipAtIndex(it.next(), i);
                i++;
            }
        }
    }

    public Clip removeClip(int i) {
        Clip clipRemove;
        synchronized (this) {
            clipRemove = this.videoTrackGroup.getMainVideoTrack().getClips().remove(i);
        }
        return clipRemove;
    }

    public Clip removeClipFromTrack(int i, int i2) {
        Clip clipRemove;
        synchronized (this) {
            clipRemove = this.videoTrackGroup.getVideoTrack(i).getClips().remove(i2);
        }
        return clipRemove;
    }

    public void removeClips(int i, int i2) {
        synchronized (this) {
            this.videoTrackGroup.getMainVideoTrack().getClips().subList(i, i2 + 1).clear();
        }
    }

    public void removeGroup(int i) {
        synchronized (this) {
            this.videoTrackGroup.getMainVideoTrack().getGroups().remove(i);
        }
    }

    public void removeAllClips() {
        synchronized (this) {
            getClips().clear();
        }
    }

    public void removeAllClipsFromTrack(int i) {
        synchronized (this) {
            this.videoTrackGroup.getVideoTrack(i).getClips().clear();
        }
    }

    public void setAssetDurationUs(int i, long j) {
        Clip clip = getClips().get(i);
        clip.getAssetReference().setDurationUs(j);
        if (clip.getStartTimeUs() == 0 && clip.getEndTimeUs() == 0) {
            Log.i(DCXProjectKeys.kDCXKey_SequenceNode_name, "first time");
            clip.setEndTimeUs(clip.getStartTimeUs() + j);
            DCXWriter.updateClip(clip);
        } else {
            Log.i(DCXProjectKeys.kDCXKey_SequenceNode_name, "n time");
            if (clip.getEndTimeUs() > j) {
                clip.setEndTimeUs(j);
            }
        }
    }

    public void setStartTimeOfClipUs(int i, long j) {
        getClips().get(i).setStartTimeUs(j);
    }

    public void setEndTimeOfClipUs(int i, long j) {
        getClips().get(i).setEndTimeUs(j);
    }

    public void setDurationOfOverlayTrack(long j) {
        ArrayList<Clip> clips = getClips(1);
        if (clips != null && clips.size() > 0) {
            Clip clip = clips.get(0);
            if (clip.getClipType() != Clip.CLIP_TYPE.EMPTY_VIDEO) {
                clip.setEndTimeUs(j);
            }
        }
    }

    public static Clip createClip(AssetReference assetReference, long j, long j2, String str) {
        findAssetProperties(assetReference);
        Log.i(DCXProjectKeys.kDCXKey_SequenceNode_name, "Foundmetadata");
        switch (assetReference.getMediaType()) {
            case "video":
                return new VideoClip(assetReference, j, j2, str);
            case "image":
                return new ImageClip(assetReference, j, j2, false, str);
            case "title":
                return new ImageClip(assetReference, j, j2, true, str);
            default:
                return null;
        }
    }

    public static Clip createEmptyVideoClip(long j, long j2, String str) {
        return new Clip(null, j, j2, Clip.CLIP_TYPE.EMPTY_VIDEO, str);
    }

    private static void findAssetProperties(AssetReference assetReference) {
        boolean z = false;
        if (!assetReference.getPropertiesSet()) {
            assetReference.setPropertiesSet(true);
            switch (assetReference.getMediaType()) {
                case "video":
                    try {
                        Log.i(DCXProjectKeys.kDCXKey_SequenceNode_name, "Finding metadata");
                        ClipExtractor clipExtractor = new ClipExtractor(PremiereClipApplication.getContext());
                        clipExtractor.setDataSource(assetReference.getAssetUri(), true);
                        int trackCount = clipExtractor.getTrackCount();
                        for (int i = 0; i < trackCount; i++) {
                            MediaFormat trackFormat = clipExtractor.getTrackFormat(i);
                            if (trackFormat != null) {
                                String str = trackFormat.mimeType;
                                if (MimeTypes.isVideo(str)) {
                                    int i2 = trackFormat.width;
                                    int i3 = trackFormat.height;
                                    int i4 = trackFormat.rotation;
                                    Rotation rotationFromInt = Rotation.fromInt(i4);
                                    if (i4 == 90 || i4 == 270) {
                                        rotationFromInt = i4 == 90 ? Rotation.ROTATION_270 : Rotation.ROTATION_90;
                                        i2 = i3;
                                        i3 = i2;
                                    } else if (i4 == 180) {
                                        rotationFromInt = Rotation.ROTATION_180;
                                    }
                                    assetReference.setWidth(i2);
                                    assetReference.setHeight(i3);
                                    assetReference.setRotation(rotationFromInt);
                                    assetReference.setDurationUs(trackFormat.durationUs);
                                    z = true;
                                }
                                if (MimeTypes.isAudio(str)) {
                                    assetReference.setNumAudioChannels(trackFormat.channelCount);
                                }
                            }
                        }
                        if (!z) {
                            assetReference.setDurationUs(0L);
                            assetReference.setWidth(-1);
                            assetReference.setHeight(-1);
                            assetReference.setRotation(Rotation.NORMAL);
                        }
                        clipExtractor.release();
                        break;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return;
                    }
                    break;
                case "image":
                case "title":
                default:
                    assetReference.setDurationUs(10000000L);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeFile(assetReference.getAssetPath(), options);
                    int i5 = options.outWidth;
                    int i6 = options.outHeight;
                    Rotation rotation = Rotation.NORMAL;
                    int bitmapRotation = Utilities.getBitmapRotation(assetReference.getAssetPath());
                    if (bitmapRotation == 90 || bitmapRotation == 270) {
                        rotation = bitmapRotation == 90 ? Rotation.ROTATION_270 : Rotation.ROTATION_90;
                        i5 = i6;
                        i6 = i5;
                    } else if (bitmapRotation == 180) {
                        rotation = Rotation.ROTATION_180;
                    }
                    assetReference.setWidth(i5);
                    assetReference.setHeight(i6);
                    assetReference.setRotation(rotation);
                    break;
            }
        }
    }

    public void moveClip(int i, int i2) {
        synchronized (this) {
            ArrayList<Clip> clips = getClips();
            int i3 = i > i2 ? -1 : 1;
            while (i != i2) {
                Collections.swap(clips, i, i + i3);
                i += i3;
            }
        }
    }

    public void moveGroup(int i, int i2) {
        synchronized (this) {
            ArrayList<ArrayList<Clip>> groups = getGroups();
            int i3 = i > i2 ? -1 : 1;
            while (i != i2) {
                Collections.swap(groups, i, i + i3);
                i += i3;
            }
            this.videoTrackGroup.getMainVideoTrack().reInitClipsFromGroups();
        }
    }

    public void moveClips(int i, int i2, int i3, int i4) {
        synchronized (this) {
            ArrayList<Clip> clips = getClips();
            ArrayList<Clip> arrayList = new ArrayList<>();
            if (i < i3) {
                if (i != 0) {
                    arrayList.addAll(clips.subList(0, i));
                }
                arrayList.addAll(clips.subList(i2 + 1, i4 + 1));
                arrayList.addAll(clips.subList(i, i2 + 1));
                if (i4 + 1 != clips.size()) {
                    arrayList.addAll(clips.subList(i4 + 1, clips.size()));
                }
            } else {
                if (i3 != 0) {
                    arrayList.addAll(clips.subList(0, i3));
                }
                arrayList.addAll(clips.subList(i, i2 + 1));
                arrayList.addAll(clips.subList(i3, i));
                if (i2 + 1 != clips.size()) {
                    arrayList.addAll(clips.subList(i2 + 1, clips.size()));
                }
            }
            setClips(arrayList);
        }
    }

    public void invalidateGroups() {
        this.videoTrackGroup.getMainVideoTrack().invalidateGroups();
    }

    public void setAvailability(int i, boolean z) {
        synchronized (this) {
            getClips().get(i).setAvailability(z);
        }
    }

    public int getLastAvailClipIndex() {
        return this.videoTrackGroup.getMainVideoTrack().getLastAvailClipIndex();
    }

    public ArrayList<Playable> getClipsAtSequenceTimeUs(long j) {
        return this.videoTrackGroup.getMainVideoTrack().getClipsAtTrackTimeUs(j);
    }

    public long sequenceStartTimeOfClip(int i) {
        return this.videoTrackGroup.getMainVideoTrack().trackStartTimeOfClip(i);
    }

    public long sequenceTimeFromClipTime(int i, long j) {
        return this.videoTrackGroup.getMainVideoTrack().trackTimeFromClipTime(i, j);
    }

    public long clipTimeFromSequenceTime(int i, long j) {
        return this.videoTrackGroup.getMainVideoTrack().clipTimeFromTrackTime(i, j);
    }

    public boolean transitionAppliedOnSequence() {
        return this.videoTrackGroup.getMainVideoTrack().transitionAppliedOnSequence();
    }

    public boolean fadeInApplied() {
        return this.videoTrackGroup.getMainVideoTrack().fadeInApplied();
    }

    public boolean fadeOutApplied() {
        return this.videoTrackGroup.getMainVideoTrack().fadeOutApplied();
    }

    public void setGlobalTransition(boolean z) {
        this.videoTrackGroup.getMainVideoTrack().setGlobalTransition(z);
    }

    public void setFadeIn(boolean z) {
        this.videoTrackGroup.getMainVideoTrack().setFadeIn(z);
        this.videoTrackGroup.getOverlayTrack().setFadeIn(z);
    }

    public void setFadeOut(boolean z) {
        this.videoTrackGroup.getMainVideoTrack().setFadeOut(z);
        this.videoTrackGroup.getOverlayTrack().setFadeOut(z);
    }

    private long transitionLengthUs(int i, int i2) {
        return this.videoTrackGroup.getMainVideoTrack().transitionLengthUs(i, i2);
    }

    private long fadeInLengthUs() {
        return this.videoTrackGroup.getMainVideoTrack().fadeInLengthUs();
    }

    private long fadeOutLengthUs() {
        return this.videoTrackGroup.getMainVideoTrack().fadeOutLengthUs();
    }

    public void setLook(BaseLook baseLook) {
        this.look = baseLook;
        this.videoTrackGroup.getMainVideoTrack().setLook(baseLook);
    }

    public BaseLook getLook() {
        return this.look;
    }

    public static IAudioSequence convertSequenceToAudioSequence(Context context, Sequence sequence, int i, int i2) {
        AudioClip audioClip;
        AudioMixer.initialize(context);
        IAudioSequence iAudioSequenceCreateSequence = AudioMixer.createSequence();
        iAudioSequenceCreateSequence.setSampleRate(i);
        iAudioSequenceCreateSequence.setChannels(i2);
        long durationUsWithSpeed = 0;
        if (sequence != null) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= sequence.getClips().size()) {
                    break;
                }
                Clip clip = sequence.getClips().get(i4);
                if (!clip.isBumper()) {
                    String assetPath = "";
                    if (clip.isAvailable() && clip.getClipType() == Clip.CLIP_TYPE.VIDEO) {
                        assetPath = clip.getAssetReference().getAssetPath();
                    }
                    IClip iClipAppendMedia = iAudioSequenceCreateSequence.getAudioTrack().appendMedia(assetPath, new VideoTime(durationUsWithSpeed, 1000000L), new VideoTime(clip.getStartTimeUs() + ((long) ((sequence.transitionLengthUs(i4, i4 - 1) / 2) * clip.getSpeed())), 1000000L), new VideoTime((long) ((clip.getDurationUs() + 0.5d) - ((long) ((r12 + (sequence.transitionLengthUs(i4 + 1, i4) / 2)) * clip.getSpeed()))), 1000000L));
                    iClipAppendMedia.setAudioFadeIn(clip.getAudioFadeInApplied());
                    iClipAppendMedia.setAudioFadeOut(clip.getAudioFadeOutApplied());
                    iClipAppendMedia.setAudioSpeechLevel(clip.getSmartVolumeApplied());
                    iClipAppendMedia.setAudioMute(clip.isMuted());
                    iClipAppendMedia.setAudioGainLevel(clip.getVolume());
                    iClipAppendMedia.setAudioSpeedLevel(clip.getSpeed());
                    iClipAppendMedia.release();
                    durationUsWithSpeed += (clip.getDurationUsWithSpeed() - (sequence.transitionLengthUs(i4, i4 - 1) / 2)) - (sequence.transitionLengthUs(i4 + 1, i4) / 2);
                }
                i3 = i4 + 1;
            }
            ArrayList<Clip> clips = sequence.getAudioTrackGroup().getAudioTrack().getClips();
            if (clips.size() > 0 && (audioClip = (AudioClip) clips.get(0)) != null) {
                IBackgroundMusicTrack backgroundMusicTrack = iAudioSequenceCreateSequence.getBackgroundMusicTrack();
                backgroundMusicTrack.setSource(audioClip.getAssetReference().getAssetPath());
                backgroundMusicTrack.setInTime(new VideoTime(audioClip.getStartTimeUs(), 1000000L));
                backgroundMusicTrack.setAudioFadeIn(audioClip.getAudioFadeInApplied());
                backgroundMusicTrack.setAudioFadeOut(audioClip.getAudioFadeOutApplied());
                backgroundMusicTrack.setAudioAutoDuck(sequence.getAudioDuckApplied());
                backgroundMusicTrack.setAudioGainLevel(audioClip.getVolume());
            }
        }
        iAudioSequenceCreateSequence.readyForRendering();
        return iAudioSequenceCreateSequence;
    }

    public int numAudioClips() {
        this._audioClipsCount = getAudioTrackGroup().getAudioTrack().getClips().size();
        if (this._audioClipsCount < 0) {
            this._audioClipsCount = 0;
        }
        return this._audioClipsCount;
    }

    public int numVideoClips() {
        categorizeVideoClips();
        if (this._videoClipsCount < 0) {
            this._videoClipsCount = 0;
        }
        return this._videoClipsCount;
    }

    public int numStorycardClips() {
        if (this._storycardClipsCount < 0) {
            categorizeVideoClips();
        }
        return this._storycardClipsCount;
    }

    public int numTitleClips() {
        if (this._titleClipsCount < 0) {
            categorizeVideoClips();
        }
        return this._titleClipsCount;
    }

    public int numStillImageClips() {
        if (this._stillImageClipsCount < 0) {
            categorizeVideoClips();
        }
        return this._stillImageClipsCount;
    }

    public void setSampleRate(int i) {
        this._sampleRate = i;
    }

    public void setChannel(int i) {
        this._channel = i;
    }

    public int getSampleRate() {
        return this._sampleRate;
    }

    public int getChannel() {
        return this._channel;
    }

    private void categorizeVideoClips() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        VideoTrackGroup videoTrackGroup = getVideoTrackGroup();
        if (videoTrackGroup != null) {
            int i7 = 0;
            i = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i7 < 1) {
                ArrayList<Clip> clips = videoTrackGroup.getMainVideoTrack().getClips();
                int size = clips.size();
                int i11 = i10 + size;
                int i12 = 0;
                int i13 = i8;
                int i14 = i9;
                int i15 = i;
                while (i12 < size) {
                    Clip clip = clips.get(i12);
                    if (clip != null) {
                        if (clip.getClipType() == Clip.CLIP_TYPE.STORY_CARD) {
                            i14++;
                        }
                        if (clip.getClipType() == Clip.CLIP_TYPE.IMAGE_TITLE) {
                            int i16 = i15;
                            i5 = i13 + 1;
                            i4 = i16;
                        } else if (clip.getClipType() == Clip.CLIP_TYPE.IMAGE_NON_TITLE) {
                            i4 = i15 + 1;
                            i5 = i13;
                        } else {
                            i4 = i15;
                            i5 = i13;
                        }
                        i12++;
                        i13 = i5;
                        i15 = i4;
                    } else {
                        return;
                    }
                }
                i7++;
                i = i15;
                i9 = i14;
                i8 = i13;
                i10 = i11;
            }
            i6 = i8;
            i2 = i9;
            i3 = i10;
        } else {
            i = 0;
            i2 = 0;
            i3 = 0;
        }
        this._videoClipsCount = i3;
        this._storycardClipsCount = i2;
        this._titleClipsCount = i6;
        this._stillImageClipsCount = i;
    }

    public ArrayList<Long> getTransitionTimes() {
        return this.transitionTimes;
    }

    public void setTransitionTimes(ArrayList<Long> arrayList) {
        this.transitionTimes = arrayList;
    }

    public ArrayList<Long> calculateTransitionTimes() {
        ArrayList<Long> arrayList = new ArrayList<>();
        long j = 0;
        ArrayList<Clip> clips = getClips();
        int i = 0;
        while (i < clips.size()) {
            long durationUs = clips.get(i).getDurationUs() + j;
            arrayList.add(Long.valueOf(Utilities.convertTimescale(durationUs, 1000000L, 30000L, 1000L)));
            i++;
            j = durationUs;
        }
        return arrayList;
    }

    public boolean isOverlayEnabled() {
        ArrayList<Clip> clips = getClips(1);
        return clips != null && clips.size() > 0 && clips.get(0).getClipType() == Clip.CLIP_TYPE.IMAGE_NON_TITLE;
    }

    public Clip getOverlayClip() {
        ArrayList<Clip> clips = getClips(1);
        if (clips == null || clips.size() <= 0 || clips.get(0).getClipType() != Clip.CLIP_TYPE.IMAGE_NON_TITLE) {
            return null;
        }
        return clips.get(0);
    }

    public boolean isBumperEnabled(String str) {
        String bumperPath = DCXReader.getBumperPath(str);
        return (bumperPath == null || bumperPath.equals("")) ? false : true;
    }
}
