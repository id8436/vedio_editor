package com.adobe.premiereclip.editor;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.SwitchCompat;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import c.a.a.a.a.b.a;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.BottomSheetView;
import com.adobe.premiereclip.CameraCaptureManager;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.coachmarks.CoachMarks;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXSyncStatusActivity;
import com.adobe.premiereclip.dcx.DCXSyncStatusButton;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.dialogs.AbstractDialog;
import com.adobe.premiereclip.dialogs.ConfirmDialog;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.downloadmanager.CCDownloadSession;
import com.adobe.premiereclip.editor.ClipOptionsView;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.editor.RangeSeekBar;
import com.adobe.premiereclip.editor.SnapToBeatController;
import com.adobe.premiereclip.editor.StoryCardTextInputDialog;
import com.adobe.premiereclip.editor.Timeline;
import com.adobe.premiereclip.editor.TitleTextInputDialog;
import com.adobe.premiereclip.editor.waveform.AudioPeakGenerator;
import com.adobe.premiereclip.editor.waveform.BackgroundMusicView;
import com.adobe.premiereclip.editor.waveform.WaveDisplayParam;
import com.adobe.premiereclip.library.LooksListActivity;
import com.adobe.premiereclip.media.AddMediaManager;
import com.adobe.premiereclip.media.ClipAsset;
import com.adobe.premiereclip.media.MediaInfo;
import com.adobe.premiereclip.media.MediaManager;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediaengine.SequencePlayer;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.music.TrackCategoryActivity;
import com.adobe.premiereclip.project.NewProjectData;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.ProjectManager;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ImageClip;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.sharing.SharingOptions;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.MarshmallowUtils;
import com.adobe.premiereclip.util.ScreenUtils;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import com.google.gdata.data.photos.TagData;
import com.h.a.d;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Observable;
import java.util.Observer;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes2.dex */
public class EditorActivity extends Activity implements DCXSyncStatusButton.Listener, CCDownloadSession.Listener, ClipOptionsView.ClipOptionListener, Editor.Listener, Timeline.ClipDeleteListener, SharingOptions.Listener {
    private static final int BACKGROUND_AUDIO_REQUEST = 100071;
    private static final int BACKGROUND_COLOR_PICKER_REQUEST = 10010;
    private static final int NONE = 0;
    private static final int ONE = 1;
    private static final int SWIPE = 2;
    private static final String TAG = "EditorActivity";
    private static final int TEXT_COLOR_PICKER_REQUEST = 10009;
    private static final int THRESHOLD = 10;
    private static final int VIDEO_SETTING_REQUEST = 10007;
    private static final int previewSeekBarMax = 1000000;
    View audioOptionsView;
    private AudioPeakGenerator audioPeakGenerator;
    private View backgroundColorView;
    private BottomSheetView bottomSheetView;
    private CCDownloadSession ccDownloadSession;
    private int clipIndexToBeDeleted;
    private ClipOptionsView clipOptionsView;
    private CustomCountDownTimer countDownTimer;
    private Project currentProject;
    private ImageClip currentTitleImage;
    private DCXSyncStatusButton dcxSyncStatusButton;
    private boolean exportMode;
    View exposureOptionsView;
    private SeekBar exposureSeekBar;
    private FloatingActionsMenu floatingActionsMenu;
    private boolean fullScreenMode;
    private SeekBar highlightsSeekBar;
    private String initialLookId;
    private boolean isConvertedFromAutomatic;
    private boolean loadingBeats;
    private LinearLayout loadingLayout;
    private boolean loadingPlayer;
    private Editor mEditor;
    private ClipPreferences mPreferences;
    private CoachMarks mcoachMarks;
    private MediaCaptureOptionsView mediaCaptureOptionsView;
    View moreOptionsView;
    private BackgroundMusicView musicView;
    private Observer network_reachability_observer;
    private boolean newProject;
    private boolean pausedState;
    private ImageView playPauseBtn;
    private FrameLayout playerBar;
    private int[] playerContainerLandscapeSize;
    private int[] playerContainerPortraitSize;
    private RelativeLayout playerLayout;
    private boolean playerViewSet;
    private long prevSeekOffset;
    private TextView previewDurationTextView;
    private ImageView previewFullScreenButton;
    private ImageView previewPlayPauseBtn;
    private SeekBar previewSeekBar;
    private boolean previewSeekBarTouched;
    private ImageView previewShareButton;
    private TextView previewTimeTextView;
    private long scrubTimeMs;
    private SeekBar shadowsSeekBar;
    private ImageView shareButton;
    private SharingOptions sharingOptions;
    private SnapToBeatController snapToBeatController;
    private SeekBar speedSeekBar;
    private TextView speedTextView;
    private float startX;
    private float stopX;
    private boolean storyCardMode;
    private boolean storyCardReplaced;
    private TextView storyCardText;
    private ImageView syncCloudButton;
    private View textColorView;
    View textOptionsView;
    private Timeline timeline;
    private RelativeLayout timelineView;
    private TextView titleTextView;
    private RangeSeekBar trimBar;
    private Bitmap trimBarBackgroundBitmap;
    private float twoFingerSwipeScale;
    private SeekBar volumeSeekBar;
    private TextView volumeText;
    private Handler coachmarkHandler = null;
    private Runnable coachmarkRunnable = null;
    private int mode = 0;
    private final int MY_PERMISSIONS_REQUEST_CAMERA = 11;
    private final int MY_PERMISSIONS_REQUEST_STORYCARD_CAMERA = 12;
    private final int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_GALLERY = 41;
    private final int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_AUDIO = 42;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH = 51;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY = 52;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC = 53;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE = 54;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_TWITTER = 55;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS = 71;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE = 72;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX = 73;
    private final double MIN_CLIP_DURATION_US = 166666.66666666d;
    private boolean mTrimmingInProgress = false;
    private boolean mTwoFingerInProgress = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        ThumbnailHelper.cancelAllUnexecutedTasks();
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("project_key");
        this.newProject = intent.getBooleanExtra("newProject", false) && !NewProjectData.isRead();
        this.isConvertedFromAutomatic = intent.getBooleanExtra("converted", false);
        Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(stringExtra);
        this.currentProject = projectWithKey;
        if (projectWithKey != null) {
            DCXWriter.setCurrentComposite(stringExtra);
            ProjectManager.getInstance().loadSequence(projectWithKey);
            this.ccDownloadSession = new CCDownloadSession(this, this.currentProject.projectKey);
            Metrics.sharedInstance().didShowProjectEditorView();
            if (this.newProject) {
                editNewProject();
            }
            this.initialLookId = this.currentProject.getSequence().getLook().getLookId();
            this.pausedState = false;
            this.storyCardReplaced = false;
            requestWindowFeature(1);
            setContentView(R.layout.activity_editor);
            d.a(this);
            this.floatingActionsMenu = (FloatingActionsMenu) findViewById(R.id.add_clip_btn);
            this.floatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.premiereclip.editor.EditorActivity.1
                @Override // com.getbase.floatingactionbutton.h
                public void onMenuExpanded() {
                    Metrics.sharedInstance().didTapMediaPickerForSequenceWithDuration(EditorActivity.this.currentProject.getSequence().getSequenceDurationInSeconds(), EditorActivity.this.currentProject.getSequence().numAudioClips(), EditorActivity.this.currentProject.getSequence().numVideoClips());
                    EditorActivity.this.findViewById(R.id.background_for_fab).setVisibility(0);
                    EditorActivity.this.bottomSheetView.openView();
                }

                @Override // com.getbase.floatingactionbutton.h
                public void onMenuCollapsed() {
                    EditorActivity.this.findViewById(R.id.background_for_fab).setVisibility(8);
                    if (EditorActivity.this.bottomSheetView.isOpen()) {
                        EditorActivity.this.bottomSheetView.closeView();
                    }
                }
            });
            addFullScreenViewListener();
            addCollapseFullScreenListener();
            Display defaultDisplay = getWindowManager().getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getSize(point);
            int i = point.x;
            int i2 = (i * 9) / 16;
            this.playerContainerPortraitSize = new int[]{i, i2};
            int i3 = point.x;
            this.playerContainerLandscapeSize = new int[]{(i3 * 16) / 9, i3};
            this.twoFingerSwipeScale = 0.85f * point.x;
            this.playerLayout = (RelativeLayout) findViewById(R.id.player_container);
            this.playerLayout.getLayoutParams().height = i2;
            this.loadingLayout = (LinearLayout) getLayoutInflater().inflate(R.layout.view_loading, (ViewGroup) this.playerLayout, false);
            this.loadingLayout.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13, -1);
            this.loadingLayout.setLayoutParams(layoutParams);
            d.a(this.loadingLayout);
            this.loadingBeats = false;
            this.loadingPlayer = false;
            setPlayerControlsEditMode();
            this.timelineView = (RelativeLayout) findViewById(R.id.timeline_view);
            this.timeline = new Timeline(this, this.currentProject.projectKey, this.timelineView);
            this.timeline.setClipDeleteListener(this);
            this.snapToBeatController = new SnapToBeatController(this, this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack());
            this.snapToBeatController.setTransitionTimes(this.currentProject.getSequence().getTransitionTimes());
            this.mEditor = new Editor(this, this.timeline, projectWithKey, this.snapToBeatController);
            this.mEditor.setListener(this);
            this.previewPlayPauseBtn = (ImageView) findViewById(R.id.preview_play_pause_btn);
            this.playerBar = (FrameLayout) findViewById(R.id.player_bar);
            this.trimBar = new RangeSeekBar(0.0f, 1.0f, this);
            this.previewSeekBar = (SeekBar) findViewById(R.id.preview_seek_bar);
            this.previewSeekBar.setMax(previewSeekBarMax);
            this.previewTimeTextView = (TextView) findViewById(R.id.preview_time_text);
            this.previewDurationTextView = (TextView) findViewById(R.id.preview_duration_text);
            this.countDownTimer = new CustomCountDownTimer(4000L, 50L);
            this.playerBar.addView(this.trimBar);
            this.playPauseBtn = (ImageView) findViewById(R.id.clip_play_pause_btn);
            this.clipOptionsView = new ClipOptionsView(this);
            this.clipOptionsView.setClipOptionListener(this);
            this.exposureOptionsView = this.clipOptionsView.getExposureOptionsView();
            this.audioOptionsView = this.clipOptionsView.getAudioOptionsView();
            this.textOptionsView = this.clipOptionsView.getTextOptionsView();
            this.moreOptionsView = this.clipOptionsView.getMoreOptionsView();
            this.exposureSeekBar = (SeekBar) this.exposureOptionsView.findViewById(R.id.exposureSeek);
            this.highlightsSeekBar = (SeekBar) this.exposureOptionsView.findViewById(R.id.highlightsSeek);
            this.shadowsSeekBar = (SeekBar) this.exposureOptionsView.findViewById(R.id.shadowsSeek);
            this.speedSeekBar = (SeekBar) this.moreOptionsView.findViewById(R.id.speedValue);
            this.speedTextView = (TextView) this.moreOptionsView.findViewById(R.id.speedValueText);
            this.volumeSeekBar = (SeekBar) this.audioOptionsView.findViewById(R.id.volumeValue);
            this.volumeText = (TextView) this.audioOptionsView.findViewById(R.id.volumeValueText);
            this.exportMode = false;
            this.fullScreenMode = false;
            this.trimBar.setSplitListener(new RangeSeekBar.SplitListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.2
                @Override // com.adobe.premiereclip.editor.RangeSeekBar.SplitListener
                public void onSplitEnabled(RangeSeekBar rangeSeekBar) {
                    EditorActivity.this.clipOptionsView.enableSplitView();
                }

                @Override // com.adobe.premiereclip.editor.RangeSeekBar.SplitListener
                public void onSplitDisabled(RangeSeekBar rangeSeekBar) {
                    EditorActivity.this.clipOptionsView.disableSplitView();
                }
            });
            createTrimBarBackgroundBitmap();
            this.titleTextView = (TextView) this.textOptionsView.findViewById(R.id.titleTextView);
            this.textColorView = this.textOptionsView.findViewById(R.id.textColor);
            this.backgroundColorView = this.textOptionsView.findViewById(R.id.backgroundColor);
            this.syncCloudButton = (ImageView) findViewById(R.id.editorIconBarCloudBtn);
            this.dcxSyncStatusButton = new DCXSyncStatusButton(this, stringExtra);
            addOnClickListenerForSyncButton();
            this.shareButton = (ImageView) findViewById(R.id.editorIconBarShareBtn);
            this.storyCardText = (TextView) findViewById(R.id.storycardText);
            this.previewShareButton = (ImageView) findViewById(R.id.editorPreviewShareBtn);
            this.sharingOptions = new SharingOptions(this, projectWithKey);
            this.sharingOptions.setListener(this);
            addSharingPickerListener();
            Metrics.sharedInstance().didFinishProjectOpenForMyProject(projectWithKey.projectKey);
            this.clipIndexToBeDeleted = -1;
            setClipOptionsSeekBarListeners();
            this.storyCardMode = false;
            this.playerViewSet = false;
            setCloseMusicViewButton();
            setMusicReplaceButton();
            this.audioPeakGenerator = new AudioPeakGenerator();
            this.musicView = new BackgroundMusicView(this, this.currentProject.projectKey, this.audioPeakGenerator, getBackgroundMusicListener());
            findViewById(R.id.player_edit_mode).setVisibility(4);
            findViewById(R.id.player_bar).setVisibility(4);
            findViewById(R.id.clip_options).setVisibility(4);
            this.mcoachMarks = new CoachMarks(this, true);
            this.coachmarkHandler = new Handler();
            setCoachmarkListener();
            this.mPreferences = ClipPreferences.getInstance(this);
            this.audioPeakGenerator = new AudioPeakGenerator();
            ((RelativeLayout) findViewById(R.id.player_wrapper)).setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return EditorActivity.this.onTouchPlayer(view, motionEvent);
                }
            });
            findViewById(R.id.catch_touch).setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.4
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return true;
                }
            });
            findViewById(R.id.catch_touch_2).setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.5
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return true;
                }
            });
            findViewById(R.id.touch_guard).setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.6
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return true;
                }
            });
            this.mediaCaptureOptionsView = new MediaCaptureOptionsView(this);
            this.bottomSheetView = new BottomSheetView(this);
            this.bottomSheetView.background.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    EditorActivity.this.bottomSheetView.closeView();
                    EditorActivity.this.findViewById(R.id.background_for_fab).setVisibility(8);
                    EditorActivity.this.floatingActionsMenu.a();
                }
            });
            return;
        }
        Log.e("Editor", "Could not set current project");
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        setVolumeControlStream(3);
        boolean z = this.musicView != null && this.musicView.isOpen();
        if (z) {
            this.musicView.hideView();
        }
        if (this.mEditor.init()) {
            if (this.exportMode) {
                this.sharingOptions.startSharing();
            } else {
                this.mEditor.initPlayback();
                this.sharingOptions.mayBeExportPPro();
            }
            this.mEditor.setTrimBar(this.trimBar);
            setPreviewSeekBar(this.previewSeekBar);
            addPlayerView();
            if (this.clipOptionsView != null && this.clipOptionsView.isOpen()) {
                this.clipOptionsView.reOpen();
                onClipOptionsOpened();
            }
            enableShareAndPreviewButtons();
            initSnapToBeatUI();
        } else if (this.storyCardReplaced) {
            this.storyCardReplaced = false;
        } else {
            disableShareAndPreviewButtons();
        }
        if (z || this.musicView.toBeOpened()) {
            openMusicView();
        }
        if (this.fullScreenMode) {
            setFullScreenUI();
        }
        ThumbnailHelper.resetAllKeys();
        final Handler handler = new Handler();
        this.snapToBeatController.setListener(new SnapToBeatController.SnapToBeatListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.8
            @Override // com.adobe.premiereclip.editor.SnapToBeatController.SnapToBeatListener
            public void onReady() {
                handler.post(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (EditorActivity.this.snapToBeatController.isEnabled() && EditorActivity.this.snapToBeatController.isReady()) {
                            int currentClipIndex = EditorActivity.this.mEditor.getCurrentClipIndex();
                            if (currentClipIndex >= 0) {
                                EditorActivity.this.mEditor.snapToBeatForClipsOnward(0, true);
                                EditorActivity.this.showSyncPointsForClip(currentClipIndex);
                            }
                            EditorActivity.this.loadingBeats = false;
                        }
                        EditorActivity.this.updateLoadingSpinner();
                    }
                });
            }
        });
        registerNetworkChangeNotification();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.pausedState = false;
        Config.collectLifecycleData(this);
    }

    @Override // android.app.Activity
    public void onPause() {
        this.pausedState = true;
        this.mEditor.pause();
        setPauseUX();
        this.timeline.onPause();
        getWindow().clearFlags(128);
        this.audioPeakGenerator.cancelOngoingTask();
        Config.pauseCollectingLifecycleData();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        Utilities.setThumbnailThreadPoolThrottle(false);
        setVolumeControlStream(Integer.MIN_VALUE);
        this.exportMode = false;
        this.sharingOptions.stop();
        this.playerViewSet = false;
        this.mEditor.release(!this.musicView.isOpen());
        this.snapToBeatController.clearListener();
        this.loadingPlayer = false;
        this.loadingBeats = false;
        updateLoadingSpinner();
        super.onStop();
        unRegisterNetworkChangeNotification();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.timeline.onDestroy();
        if (this.coachmarkHandler != null) {
            this.coachmarkHandler.removeCallbacksAndMessages(null);
        }
        this.mcoachMarks.getHandler().removeCallbacksAndMessages(null);
        this.trimBarBackgroundBitmap.recycle();
        super.onDestroy();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.i("On Config Change", "here");
        if (this.fullScreenMode) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.playerLayout.getLayoutParams();
            if (configuration.orientation == 2) {
                Log.i("On Config Change", "LANDSCAPE");
                layoutParams.width = this.playerContainerLandscapeSize[0];
                layoutParams.height = this.playerContainerLandscapeSize[1];
            } else {
                Log.i("On Config Change", "PORTRAIT");
                layoutParams.width = this.playerContainerPortraitSize[0];
                layoutParams.height = this.playerContainerPortraitSize[1];
            }
            this.playerLayout.requestLayout();
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        if (this.sharingOptions.isOpen()) {
            closeSharingOptions(null);
        } else if (this.mediaCaptureOptionsView.isOpen()) {
            this.mediaCaptureOptionsView.closeView();
        } else if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
            this.floatingActionsMenu.a();
        } else if (!this.fullScreenMode) {
            if (this.clipOptionsView.isOpen()) {
                closeClipOptions();
            } else if (this.musicView.isOpen()) {
                closeMusicView();
            } else {
                DCXWriter.commitToDCX();
                Metrics.sharedInstance().didTapHomeInProjectEditor();
                Metrics.sharedInstance().clearCurrentProjectInfo();
                Metrics.sharedInstance().clearCurrentProjectSignature();
                super.onBackPressed();
                overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
            }
        } else {
            closeFullScreen();
        }
        this.mcoachMarks.onBackPressed();
        this.timeline.getCoachmarkObject().onBackPressed();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            if (!this.currentProject.getSequence().getClips().isEmpty()) {
                if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_TRIM2, true) || this.mPreferences.getPreference(ClipPreferences.FREEFORM_REORDER, true)) {
                    ArrayList arrayList = new ArrayList();
                    if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_TRIM2, true)) {
                        CoachMarks.CoachmarkParam coachmarkParam = new CoachMarks.CoachmarkParam(getString(R.string.coachmark_freeform_trim_title), getString(this.isConvertedFromAutomatic ? R.string.coachmark_freeform_trim_message1 : R.string.coachmark_freeform_trim_message2), ClipPreferences.FREEFORM_TRIM2, this.playerBar, false, 0, null, null, false);
                        coachmarkParam.delay = 500L;
                        arrayList.add(coachmarkParam);
                    }
                    View childAt = this.timeline.getRecyclerView().getChildAt(1);
                    if (childAt != null) {
                        if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_REORDER, true)) {
                            arrayList.add(new CoachMarks.CoachmarkParam(getString(R.string.coachmark_freeform_reorder_title), getString(R.string.coachmark_freeform_reorder_message), ClipPreferences.FREEFORM_REORDER, childAt, false, null, null, null, true));
                        }
                        this.mcoachMarks.showCoachMarkWithNext(arrayList);
                    } else {
                        return;
                    }
                }
                if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_ADJUST, true)) {
                    CoachMarks.CoachmarkParam coachmarkParam2 = new CoachMarks.CoachmarkParam(getString(R.string.coachmark_freeform_adjust_title), getString(R.string.coachmark_freeform_adjust_message), ClipPreferences.FREEFORM_ADJUST, findViewById(R.id.clip_options), true, null, null, null, true);
                    coachmarkParam2.delay = 500L;
                    this.timeline.setCoachmarkParam(coachmarkParam2);
                }
                if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_EDIT_PROJECT, true)) {
                    this.coachmarkRunnable = new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.9
                        @Override // java.lang.Runnable
                        public void run() {
                            if (EditorActivity.this.mPreferences.getPreference(ClipPreferences.FREEFORM_EDIT_PROJECT, true)) {
                                EditorActivity.this.mcoachMarks.showCoachMarkWithOk(new CoachMarks.CoachmarkParam(EditorActivity.this.getString(R.string.coachmark_freeform_editSound_title), EditorActivity.this.getString(R.string.coachmark_freeform_editSound_message), ClipPreferences.FREEFORM_EDIT_PROJECT, (ImageView) EditorActivity.this.findViewById(R.id.editorIconBarSoundtrackBtn), true, null, null, null, true));
                            }
                        }
                    };
                    this.coachmarkHandler.postDelayed(this.coachmarkRunnable, DateUtils.MILLIS_PER_MINUTE);
                }
                showTwoFingerCoachmark();
            }
            showEmptyTimelineCoachmark();
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        ThumbnailHelper.cancelAllUnexecutedTasks();
        if (i == VIDEO_SETTING_REQUEST) {
            if (i2 == -1) {
                boolean booleanExtra = intent.getBooleanExtra("cross_fade", false);
                boolean booleanExtra2 = intent.getBooleanExtra("fade_in", false);
                boolean booleanExtra3 = intent.getBooleanExtra("fade_out", false);
                boolean booleanExtra4 = intent.getBooleanExtra("photo_motion", true);
                this.mEditor.setTransition(booleanExtra);
                this.mEditor.setFadeIn(booleanExtra2);
                this.mEditor.setFadeOut(booleanExtra3);
                this.mEditor.setPhotoMotion(booleanExtra4);
                if (!this.initialLookId.equals(this.currentProject.getSequence().getLook().getLookId()) && this.currentProject.getSequence().getClips().size() > 0) {
                    this.timeline.resetClipThumb(0);
                }
            }
            showShareCoachmark();
            return;
        }
        if (i == BACKGROUND_AUDIO_REQUEST) {
            if (intent != null) {
                boolean booleanExtra5 = intent.getBooleanExtra("track_selected", false);
                String stringExtra = intent.getStringExtra("track_location");
                boolean booleanExtra6 = intent.getBooleanExtra("track_replace", false);
                if (booleanExtra5) {
                    if (booleanExtra6) {
                        Metrics.sharedInstance().didReplaceSoundtrackFromLocation(stringExtra);
                    } else {
                        Metrics.sharedInstance().didAddSoundtrackFromLocation(stringExtra);
                    }
                    this.musicView.setToBeOpened();
                }
            }
            showShareCoachmark();
            return;
        }
        if (i == TEXT_COLOR_PICKER_REQUEST) {
            if (i2 == -1) {
                this.currentTitleImage.setTextColor(intent.getStringExtra("color"));
                updateTitleImage();
                return;
            }
            return;
        }
        if (i == BACKGROUND_COLOR_PICKER_REQUEST) {
            if (i2 == -1) {
                this.currentTitleImage.setBackgroundColor(intent.getStringExtra("color"));
                updateTitleImage();
                return;
            }
            return;
        }
        if (i == 20001) {
            if (i2 == -1 && intent != null && intent.getBooleanExtra("publish_video_ccv", false)) {
                this.exportMode = true;
                String stringExtra2 = intent.getStringExtra("title");
                boolean booleanExtra7 = intent.getBooleanExtra("unlisted", false);
                this.sharingOptions.getSharingManager().setMode(3);
                this.sharingOptions.getSharingManager().setCCVPublishData(stringExtra2, booleanExtra7);
                return;
            }
            return;
        }
        if (i == 20002) {
            if (i2 == -1 && intent != null && intent.getBooleanExtra("youtube_upload", false)) {
                this.exportMode = true;
                Log.d(TAG, "Back To Editor Activity");
                String stringExtra3 = intent.getStringExtra("account_name");
                String stringExtra4 = intent.getStringExtra("video_access");
                String stringExtra5 = intent.getStringExtra("title");
                String stringExtra6 = intent.getStringExtra("description");
                String stringExtra7 = intent.getStringExtra(TagData.KIND);
                Log.d(TAG, "account name = " + stringExtra3 + "and video access = " + stringExtra4);
                Log.d(TAG, "setting YouTubeCredentials");
                this.sharingOptions.getSharingManager().setMode(2);
                this.sharingOptions.getSharingManager().setYouTubeCredential(this, stringExtra3, stringExtra4, stringExtra5, stringExtra6, stringExtra7);
                return;
            }
            return;
        }
        if (i == 20003) {
            if (i2 == -1 && intent != null && intent.getBooleanExtra("twitter_upload", false)) {
                this.exportMode = true;
                String stringExtra8 = intent.getStringExtra("tweet");
                String stringExtra9 = intent.getStringExtra("token");
                String stringExtra10 = intent.getStringExtra("secret");
                this.sharingOptions.getSharingManager().setMode(4);
                this.sharingOptions.getSharingManager().setTwitterData(this.currentProject.getProjectExportName(), stringExtra9, stringExtra10, stringExtra8);
                return;
            }
            return;
        }
        if (i == 10011) {
            if (i2 == -1) {
                ArrayList<MediaInfo> mediaInfoArrayListFromCameraIntentResult = Utilities.getMediaInfoArrayListFromCameraIntentResult(this, intent);
                if (mediaInfoArrayListFromCameraIntentResult != null) {
                    addMedias(mediaInfoArrayListFromCameraIntentResult);
                    return;
                }
                return;
            }
            if (i2 == 0) {
            }
            return;
        }
        if (i == 10012) {
            if (i2 == -1) {
                Metrics.sharedInstance().didShootIntoStorycardInSequenceWithDuration(this.currentProject.getSequence().getSequenceDurationInSeconds(), this.currentProject.getSequence().numVideoClips(), this.currentProject.getSequence().numStorycardClips());
                this.mEditor.replaceClipAtIndex(this.clipIndexToBeDeleted, CameraCaptureManager.getInstance().getCaptureFilePath());
                this.storyCardReplaced = true;
                Utilities.runMediaScanner(this, CameraCaptureManager.getInstance().getCaptureFileUri());
                return;
            }
            if (i2 == 0) {
            }
            return;
        }
        if (i == 10006) {
            if (i2 == -1) {
                Metrics.sharedInstance().didImportMyDeviceAssetInMediaPicker();
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(GalleryActivity.INTENT_EXTRA_LIST);
                if (stringArrayListExtra != null && stringArrayListExtra.size() > 0) {
                    ArrayList<MediaInfo> arrayList = new ArrayList<>();
                    for (String str : stringArrayListExtra) {
                        MediaInfo mediaInfo = new MediaInfo();
                        mediaInfo.setLocalPath(str);
                        mediaInfo.setAssetUrl(str);
                        mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(str).lastModified())));
                        arrayList.add(mediaInfo);
                    }
                    addMedias(arrayList);
                    return;
                }
                return;
            }
            return;
        }
        if (i == 9001) {
            this.ccDownloadSession.startDownload(this.currentProject.projectKey, i, i2, intent, this);
        }
    }

    class CustomCountDownTimer extends CountDownTimer {
        private boolean inFadeOutTime;

        CustomCountDownTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            RelativeLayout relativeLayout = (RelativeLayout) EditorActivity.this.findViewById(R.id.player_preview_mode);
            if (EditorActivity.this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PAUSED) {
                cancelTimer();
            }
            if (j <= 1000) {
                this.inFadeOutTime = true;
                relativeLayout.setAlpha(j / 1000);
            } else {
                this.inFadeOutTime = false;
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            RelativeLayout relativeLayout = (RelativeLayout) EditorActivity.this.findViewById(R.id.player_preview_mode);
            if (relativeLayout.getVisibility() == 0) {
                relativeLayout.setVisibility(8);
            }
            relativeLayout.setAlpha(1.0f);
            this.inFadeOutTime = false;
        }

        public void cancelTimer() {
            cancel();
            ((RelativeLayout) EditorActivity.this.findViewById(R.id.player_preview_mode)).setAlpha(1.0f);
        }

        public boolean isInFadeOutTime() {
            return this.inFadeOutTime;
        }
    }

    private void editNewProject() throws Throwable {
        Log.i("NewProject", "Editing");
        int mediaRequestType = NewProjectData.getInstance().getMediaRequestType();
        Intent mediaRequestResult = NewProjectData.getInstance().getMediaRequestResult();
        switch (mediaRequestType) {
            case 9001:
                Log.i("NewProject", "CC_ASSET");
                this.ccDownloadSession.startDownload(this.currentProject.projectKey, mediaRequestType, -1, mediaRequestResult, this);
                break;
            case AddMediaManager.DEVICE_MEDIA_REQUEST /* 10006 */:
                Log.i("NewProject", "Device");
                ArrayList<String> stringArrayListExtra = mediaRequestResult.getStringArrayListExtra(GalleryActivity.INTENT_EXTRA_LIST);
                if (stringArrayListExtra != null) {
                    ArrayList<MediaInfo> arrayList = new ArrayList<>();
                    for (String str : stringArrayListExtra) {
                        MediaInfo mediaInfo = new MediaInfo();
                        mediaInfo.setLocalPath(str);
                        mediaInfo.setAssetUrl(str);
                        mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(str).lastModified())));
                        arrayList.add(mediaInfo);
                    }
                    this.currentProject.addAssetsAtIndex(MediaManager.getInstance().addAssets(arrayList), 0);
                }
                this.newProject = false;
                break;
            case AddMediaManager.CAMERA_CAPTURE_REQUEST /* 10011 */:
                Log.i("NewProject", "Camera asset");
                ArrayList<MediaInfo> mediaInfoArrayListFromCameraIntentResult = Utilities.getMediaInfoArrayListFromCameraIntentResult(this, mediaRequestResult);
                if (mediaInfoArrayListFromCameraIntentResult != null) {
                    this.currentProject.addAssetsAtIndex(MediaManager.getInstance().addAssets(mediaInfoArrayListFromCameraIntentResult), 0);
                    this.newProject = false;
                } else {
                    return;
                }
                break;
        }
        NewProjectData.reset();
    }

    private void closeAndDeleteProject() {
        ProjectManager.getInstance().deleteProjectWithKey(this.currentProject.projectKey);
        DCXModelController.getInstance().deleteProjectWithKey(this.currentProject.projectKey);
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
        this.mcoachMarks.onBackPressed();
        this.timeline.getCoachmarkObject().onBackPressed();
    }

    private void setCloseMusicViewButton() {
        findViewById(R.id.music_back).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditorActivity.this.closeMusicView();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeMusicView() {
        this.musicView.hideView();
        if (!this.currentProject.getSequence().getClips().isEmpty()) {
            this.mEditor.pause();
            this.mEditor.seekToClipSaveState();
            findViewById(R.id.clip_options).setVisibility(0);
            findViewById(R.id.sequence_controls).setVisibility(0);
            initSnapToBeatUI();
            setWaveformAndBeats();
            return;
        }
        findViewById(R.id.player_wrapper).setBackgroundColor(getResources().getColor(R.color.timeline_background_color));
    }

    private void openMusicView() {
        findViewById(R.id.touch_guard).setVisibility(0);
        if (!this.currentProject.getSequence().getClips().isEmpty()) {
            this.mEditor.storeClipSaveState();
            this.mEditor.selectClip(0, true);
            this.mEditor.setClipPlayback();
            this.mEditor.seekToSequenceTime(0L);
        } else {
            findViewById(R.id.player_wrapper).setBackgroundColor(getResources().getColor(R.color.black));
        }
        this.musicView.showView();
    }

    private void setMusicReplaceButton() {
        ((Button) findViewById(R.id.music_replace)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Metrics.sharedInstance().didTapReplaceSoundtrack();
                Intent intent = new Intent(EditorActivity.this, (Class<?>) TrackCategoryActivity.class);
                intent.putExtra("project_key", EditorActivity.this.currentProject.projectKey);
                EditorActivity.this.startActivityForResult(intent, EditorActivity.BACKGROUND_AUDIO_REQUEST);
                EditorActivity.this.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            }
        });
    }

    private void setAudioOptions() {
        ArrayList<Clip> clips = this.currentProject.getSequence().getClips();
        if (clips.size() > 0) {
            float volume = clips.get(this.mEditor.getCurrentClipIndex()).getVolume();
            this.volumeSeekBar.setProgress(((int) (volume * 100.0f)) / 2);
            this.volumeText.setText(String.valueOf((int) (volume * 100.0f)) + "%");
            setAudioFadeOutSwitch();
            setAudioFadeInSwitch();
            setSmartVolumeSwitch();
            setMuteSwitch();
        }
    }

    private BackgroundMusicView.Listener getBackgroundMusicListener() {
        return new BackgroundMusicView.Listener() { // from class: com.adobe.premiereclip.editor.EditorActivity.12
            @Override // com.adobe.premiereclip.editor.waveform.BackgroundMusicView.Listener
            public void audioSettingsUpdated(Editor.SequenceAudioOptions sequenceAudioOptions, float f2) {
                EditorActivity.this.mEditor.setSequenceAudioOptions(sequenceAudioOptions, f2);
                if (sequenceAudioOptions == Editor.SequenceAudioOptions.AUDIO_DELETE) {
                    EditorActivity.this.closeMusicView();
                }
            }
        };
    }

    private void setPlayerControlsEditMode() {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.player_edit_mode);
        relativeLayout.setVisibility(0);
        relativeLayout.getLayoutParams().height = this.playerContainerPortraitSize[1];
        ((RelativeLayout) findViewById(R.id.player_preview_mode)).setVisibility(8);
    }

    private void setPlayerControlsPreviewMode() {
        ((RelativeLayout) findViewById(R.id.player_edit_mode)).setVisibility(8);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", a.ANDROID_CLIENT_TYPE);
        if (identifier <= 0) {
            return 0;
        }
        return getResources().getDimensionPixelSize(identifier);
    }

    private void setPreviewSeekBar(SeekBar seekBar) {
        this.previewSeekBar = seekBar;
        this.previewSeekBarTouched = false;
        this.previewSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.13
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (EditorActivity.this.previewSeekBarTouched) {
                    EditorActivity.this.countDownTimer.cancelTimer();
                    long sequenceDurationUs = (long) ((i / 1000000.0f) * EditorActivity.this.currentProject.getSequence().getSequenceDurationUs());
                    EditorActivity.this.mEditor.setSequencePlayback();
                    long jCurrentTimeMillis = System.currentTimeMillis() - EditorActivity.this.scrubTimeMs;
                    if (jCurrentTimeMillis / 1000.0f < 0.33333334f) {
                        Log.i("SeekRestrict", " not seeking timeElapsed " + jCurrentTimeMillis + " 0.33333334");
                        return;
                    }
                    EditorActivity.this.scrubTimeMs = System.currentTimeMillis();
                    if (EditorActivity.this.prevSeekOffset == -1 || Math.abs(sequenceDurationUs - EditorActivity.this.prevSeekOffset) > 32000) {
                        Log.i("SeekRestrict", " seeking offset: " + sequenceDurationUs + " " + EditorActivity.this.prevSeekOffset);
                        EditorActivity.this.prevSeekOffset = sequenceDurationUs;
                        EditorActivity.this.mEditor.seekToSequenceTime(sequenceDurationUs);
                        return;
                    }
                    Log.i("SeekRestrict", " not seeking offset: " + sequenceDurationUs + " " + EditorActivity.this.prevSeekOffset);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
                EditorActivity.this.previewSeekBarTouched = true;
                EditorActivity.this.scrubTimeMs = System.currentTimeMillis();
                EditorActivity.this.prevSeekOffset = -1L;
                EditorActivity.this.mEditor.setScrubbing(true);
                EditorActivity.this.countDownTimer.cancelTimer();
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                EditorActivity.this.previewSeekBarTouched = false;
                EditorActivity.this.mEditor.setScrubbing(false);
                EditorActivity.this.mEditor.seekToSequenceTime((long) ((seekBar2.getProgress() / 1000000.0f) * EditorActivity.this.currentProject.getSequence().getSequenceDurationUs()));
            }
        });
    }

    private void enableShareAndPreviewButtons() {
        this.previewFullScreenButton.setEnabled(true);
        this.previewFullScreenButton.setImageResource(R.drawable.proj_full_white);
        this.shareButton.setEnabled(true);
        this.shareButton.setImageResource(R.drawable.proj_share_white);
    }

    private void disableShareAndPreviewButtons() {
        this.previewFullScreenButton.setEnabled(false);
        this.previewFullScreenButton.setImageResource(R.drawable.proj_full_grey);
        this.shareButton.setEnabled(false);
        this.shareButton.setImageResource(R.drawable.proj_share_grey);
    }

    private void updatePlayPauseButton() {
        if (this.mTwoFingerInProgress || this.mTrimmingInProgress || this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE || this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_CLIP || (!this.previewSeekBarTouched && (this.loadingPlayer || this.loadingBeats))) {
            this.playPauseBtn.setVisibility(8);
        } else {
            this.playPauseBtn.setVisibility(0);
        }
    }

    public final void playPauseSequence(View view) {
        SequencePlayer.PLAYER_STATE playerState = this.mEditor.getPlayerState();
        if (playerState == SequencePlayer.PLAYER_STATE.PAUSED) {
            Utilities.setThumbnailThreadPoolThrottle(true);
            this.mEditor.playSequence();
            updatePlayPauseButton();
            this.previewPlayPauseBtn.setImageDrawable(getResources().getDrawable(R.drawable.btn_project_pause_white));
            this.countDownTimer.cancelTimer();
            this.countDownTimer.start();
            getWindow().addFlags(128);
            this.floatingActionsMenu.setEnabled(false);
            return;
        }
        if (playerState == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE) {
            Utilities.setThumbnailThreadPoolThrottle(false);
            this.mEditor.pause();
            updatePlayPauseButton();
            this.previewPlayPauseBtn.setImageDrawable(getResources().getDrawable(R.drawable.btn_project_play_white));
            getWindow().clearFlags(128);
            this.countDownTimer.cancelTimer();
            this.floatingActionsMenu.setEnabled(true);
            return;
        }
        if (playerState == SequencePlayer.PLAYER_STATE.LOADING) {
            Log.i(TAG, "Loading");
        } else {
            Log.e(TAG, "Unexpected value of player state");
        }
    }

    public final void playPauseClip() {
        SequencePlayer.PLAYER_STATE playerState = this.mEditor.getPlayerState();
        if (playerState == SequencePlayer.PLAYER_STATE.PAUSED) {
            this.mEditor.playClip();
            this.clipOptionsView.enableClipMoreOptions(false);
            updatePlayPauseButton();
            getWindow().addFlags(128);
            this.floatingActionsMenu.setEnabled(false);
            return;
        }
        if (playerState == SequencePlayer.PLAYER_STATE.PLAYING_CLIP) {
            this.mEditor.pause();
            updatePlayPauseButton();
            getWindow().clearFlags(128);
            updateSplitView();
            this.floatingActionsMenu.setEnabled(true);
            return;
        }
        if (playerState == SequencePlayer.PLAYER_STATE.LOADING) {
            Log.i(TAG, "Loading");
        } else {
            Log.e(TAG, "Unexpected value of player state");
        }
    }

    public final void closeAndGoBack(View view) {
        onBackPressed();
    }

    private void addPlayerView() {
        if (!this.playerViewSet) {
            this.playerLayout.removeAllViews();
            this.playerLayout.addView(this.mEditor.getView());
            this.playerLayout.addView(this.loadingLayout);
            this.playerViewSet = true;
            enableShareAndPreviewButtons();
            this.mEditor.setTrimBar(this.trimBar);
            setPreviewSeekBar(this.previewSeekBar);
        }
        findViewById(R.id.player_edit_mode).setVisibility(0);
        findViewById(R.id.player_bar).setVisibility(0);
        findViewById(R.id.clip_options).setVisibility(0);
    }

    private void setPauseUX() {
        if (this.loadingLayout.getVisibility() != 0) {
            updatePlayPauseButton();
        }
        this.previewPlayPauseBtn.setImageDrawable(getResources().getDrawable(R.drawable.btn_project_play_white));
        this.countDownTimer.cancelTimer();
        if (this.fullScreenMode) {
            ((RelativeLayout) findViewById(R.id.player_preview_mode)).setVisibility(0);
        }
        this.floatingActionsMenu.setEnabled(true);
        updateSplitView();
    }

    private void setPlayUX() {
        updatePlayPauseButton();
        this.previewPlayPauseBtn.setImageDrawable(getResources().getDrawable(R.drawable.btn_project_pause_white));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLoadingSpinner() {
        if (this.loadingLayout != null) {
            if (this.loadingPlayer || this.loadingBeats) {
                if (!this.previewSeekBarTouched) {
                    if (this.loadingLayout.getVisibility() == 8) {
                        this.loadingLayout.setVisibility(0);
                        this.loadingLayout.findViewById(R.id.loading_spinner).startAnimation(AnimationUtils.loadAnimation(this, R.anim.rotate_indefinitely));
                    }
                    updatePlayPauseButton();
                    this.previewPlayPauseBtn.setVisibility(8);
                } else {
                    return;
                }
            } else if (this.loadingLayout.getVisibility() == 0) {
                this.loadingLayout.findViewById(R.id.loading_spinner).clearAnimation();
                this.loadingLayout.setVisibility(8);
                this.previewPlayPauseBtn.setVisibility(0);
                if (this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PAUSED) {
                    setPauseUX();
                }
            }
            if (this.loadingBeats && this.snapToBeatController.isDetectingData()) {
                ((TextView) this.loadingLayout.findViewById(R.id.loading_msg)).setText(R.string.detecting_beats);
            } else {
                ((TextView) this.loadingLayout.findViewById(R.id.loading_msg)).setText("");
            }
        }
    }

    private void updateSplitView() {
        this.clipOptionsView.enableClipMoreOptions(true);
        if (this.trimBar.isSplitEnabled()) {
            this.clipOptionsView.enableSplitView();
        } else {
            this.clipOptionsView.disableSplitView();
        }
    }

    private void initSnapToBeatUI() {
        if (this.currentProject.getSequence().getSnapToBeatApplied()) {
            this.snapToBeatController.enable();
            if (!this.snapToBeatController.isReady()) {
                this.trimBar.setSyncPoints(null, -1L, -1L);
            }
            this.loadingBeats = this.snapToBeatController.isFetchingData();
            updateLoadingSpinner();
            return;
        }
        this.snapToBeatController.disable();
        this.trimBar.setSyncPoints(null, -1L, -1L);
        this.loadingBeats = false;
        updateLoadingSpinner();
    }

    private void setWaveformAndBeats() {
        if (!this.musicView.isOpen() && !this.currentProject.getSequence().getClips().isEmpty()) {
            this.trimBar.setBackground(new BitmapDrawable(getResources(), this.trimBarBackgroundBitmap));
            boolean z = this.snapToBeatController.isEnabled() && !this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClips().isEmpty();
            if (z) {
                showSyncPointsForClip(this.mEditor.getCurrentClipIndex());
            }
            this.audioPeakGenerator.initPeakGenerator(this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()), new WaveDisplayParam(this.trimBar.getStartX(), this.trimBar.getStartY(), this.trimBar.getEndX(), this.trimBar.getEndY()), new WaveDisplayParam(0.0f, 0.0f, this.trimBar.getBarWidth(), this.trimBar.getBarHeight()), new Handler(), getWaveformDrawListener(), z);
        }
    }

    private void createTrimBarBackgroundBitmap() {
        this.trimBarBackgroundBitmap = Bitmap.createBitmap((int) this.trimBar.getBarWidth(), (int) this.trimBar.getBarHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.trimBarBackgroundBitmap);
        canvas.drawColor(Color.argb(255, 255, 255, 255));
        Paint paint = new Paint();
        paint.setColor(Color.argb(255, 180, 180, 180));
        canvas.drawRect(this.trimBar.getStartX(), this.trimBar.getStartY(), this.trimBar.getEndX(), this.trimBar.getEndY(), paint);
    }

    private AudioPeakGenerator.Listener getWaveformDrawListener() {
        return new AudioPeakGenerator.Listener() { // from class: com.adobe.premiereclip.editor.EditorActivity.14
            @Override // com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.Listener
            public void onWaveformDraw(ArrayList<Bitmap> arrayList, Clip clip) {
                int currentClipIndex = EditorActivity.this.mEditor.getCurrentClipIndex();
                if (EditorActivity.this.currentProject != null && EditorActivity.this.currentProject.getSequence() != null && EditorActivity.this.currentProject.getSequence().getClips() != null && currentClipIndex >= 0 && currentClipIndex < EditorActivity.this.currentProject.getSequence().getClips().size() && EditorActivity.this.currentProject.getSequence().getClips().get(currentClipIndex).getClipId().equals(clip.getClipId()) && arrayList.size() > 0) {
                    EditorActivity.this.trimBar.setBackground(new BitmapDrawable(EditorActivity.this.getResources(), arrayList.get(0)));
                }
            }

            @Override // com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.Listener
            public void onWaveformClear() {
                EditorActivity.this.trimBar.setBackground(new BitmapDrawable(EditorActivity.this.getResources(), EditorActivity.this.trimBarBackgroundBitmap));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSyncPointsForClip(int i) {
        ArrayList<SnapToBeatController.SyncPoint> syncPointsForClip = this.snapToBeatController.getSyncPointsForClip(i, this.currentProject.getSequence(), true, true);
        Clip clip = this.currentProject.getSequence().getClips().get(i);
        this.trimBar.setSyncPoints(syncPointsForClip, (long) ((clip.getAssetReference().getDurationUs() / clip.getSpeed()) + 0.5f), clip.getStartTimeUsWithSpeed());
        this.trimBar.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStoryCardView(String str) {
        if (str.equals("")) {
            str = "\n\n\n";
        }
        findViewById(R.id.storyCardView).setVisibility(0);
        this.storyCardText.setText(str);
        this.storyCardMode = true;
        findViewById(R.id.player_bar).setVisibility(8);
        this.clipOptionsView.setClip(Clip.CLIP_TYPE.NONE, false);
    }

    private void removeStoryCardView() {
        findViewById(R.id.storyCardView).setVisibility(8);
        this.storyCardText.setText("");
        this.storyCardMode = false;
        findViewById(R.id.player_bar).setVisibility(0);
    }

    private void shootFromStoryCard() {
        this.mEditor.pause();
        this.mEditor.setClipPlayback();
        setPauseUX();
        this.clipIndexToBeDeleted = this.mEditor.getCurrentClipIndex();
        Metrics.sharedInstance().didTapShootForStorycardInSequenceWithDuration(this.currentProject.getSequence().getSequenceDurationInSeconds(), this.currentProject.getSequence().numVideoClips(), this.currentProject.getSequence().numStorycardClips());
        CameraCaptureManager.getInstance().showMediaCaptureOptions(this, this.mediaCaptureOptionsView, AddMediaManager.STORYCARD_CAPTURE_REQUEST);
    }

    public void storyCardShoot(View view) {
        if (MarshmallowUtils.getPermission(12, "android.permission.CAMERA", this)) {
            shootFromStoryCard();
        }
    }

    private void setPlayerControlsAndClipOptionsView(boolean z) {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.player_edit_mode);
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(R.id.player_wrapper);
        if (!z) {
            if (relativeLayout.getVisibility() == 0) {
                relativeLayout.setVisibility(8);
            }
            relativeLayout2.setClickable(false);
        }
    }

    private String getTimeString(long j) {
        int iRound = (int) Math.round(j / 1000000.0d);
        String str = (iRound % 60) + "";
        if (str.length() == 1) {
            str = 0 + str;
        }
        int i = iRound / 60;
        int i2 = i / 60;
        String str2 = "" + (i > 0 ? Integer.valueOf(i % 60) : "00");
        if (str2.length() == 1) {
            str2 = 0 + str2;
        }
        String str3 = "" + (i2 > 0 ? Integer.valueOf(i2) : "");
        if (str3.length() == 1) {
            str3 = 0 + str3;
        }
        return (str3.length() > 0 ? str3 + ":" : "") + str2 + ":" + str;
    }

    private boolean addMedias(ArrayList<MediaInfo> arrayList) {
        ArrayList<ClipAsset> arrayListAddAssets = MediaManager.getInstance().addAssets(arrayList);
        if (arrayListAddAssets.size() <= 0) {
            return false;
        }
        this.mEditor.addAssets(arrayListAddAssets);
        this.mEditor.saveCurrentClipIndex(arrayListAddAssets.size() + this.mEditor.getCurrentClipIndex());
        return true;
    }

    public void addSharingPickerListener() {
        this.shareButton.setOnClickListener(getSharingListener());
        this.previewShareButton.setOnClickListener(getSharingListener());
    }

    private View.OnClickListener getSharingListener() {
        return new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditorActivity.this.closeFullScreen();
                Metrics.sharedInstance().setCurrentProjectSignatureWithVideoClips(EditorActivity.this.currentProject.getSequence().numVideoClips(), EditorActivity.this.currentProject.getSequence().numStillImageClips(), EditorActivity.this.currentProject.getSequence().numTitleClips(), EditorActivity.this.currentProject.getSequence().numStorycardClips(), EditorActivity.this.currentProject.getSequence().numAudioClips(), EditorActivity.this.currentProject.getSequence().getLook().getLookName());
                Metrics.sharedInstance().didTapExport();
                EditorActivity.this.sharingOptionsOpened();
            }
        };
    }

    private void setFullScreenUI() {
        ScreenUtils.fullscreen(this);
        setPlayerControlsAndClipOptionsView(true);
        findViewById(R.id.top_bar).setVisibility(8);
        findViewById(R.id.clip_options).setVisibility(8);
        this.floatingActionsMenu.setVisibility(8);
        findViewById(R.id.player_bar).setVisibility(8);
        findViewById(R.id.timeline_view).setVisibility(8);
        findViewById(R.id.music_top).setVisibility(8);
        findViewById(R.id.track_name_ui).setVisibility(8);
        boolean z = getResources().getConfiguration().orientation == 2;
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.player_wrapper);
        relativeLayout.getLayoutParams().height = -1;
        relativeLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.playerLayout.getLayoutParams();
        if (!z) {
            layoutParams.width = this.playerContainerPortraitSize[0];
            layoutParams.height = this.playerContainerPortraitSize[1];
        }
        if (this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PAUSED) {
            ((RelativeLayout) findViewById(R.id.player_preview_mode)).setVisibility(0);
        }
        this.previewDurationTextView.setText(getTimeString(this.currentProject.getSequence().getSequenceDurationUs()));
        setPlayerControlsPreviewMode();
        setRequestedOrientation(-1);
        getWindow().addFlags(1024);
        getWindow().clearFlags(2048);
        relativeLayout.requestLayout();
        Metrics.sharedInstance().setCurrentProjectSignatureWithVideoClips(this.currentProject.getSequence().numVideoClips(), this.currentProject.getSequence().numStillImageClips(), this.currentProject.getSequence().numTitleClips(), this.currentProject.getSequence().numStorycardClips(), this.currentProject.getSequence().numAudioClips(), this.currentProject.getSequence().getLook().getLookName());
        Metrics.sharedInstance().didShowPresentationView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openFullScreen() {
        if (!this.fullScreenMode) {
            this.mEditor.pause();
            playPauseSequence(null);
            setFullScreenUI();
            ((RelativeLayout) findViewById(R.id.player_preview_mode)).setVisibility(8);
            this.fullScreenMode = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeFullScreen() {
        if (this.fullScreenMode) {
            this.countDownTimer.cancelTimer();
            setRequestedOrientation(1);
            findViewById(R.id.top_bar).setVisibility(0);
            findViewById(R.id.clip_options).setVisibility(0);
            this.floatingActionsMenu.setVisibility(0);
            findViewById(R.id.player_bar).setVisibility(0);
            findViewById(R.id.timeline_view).setVisibility(0);
            findViewById(R.id.music_top).setVisibility(4);
            findViewById(R.id.track_name_ui).setVisibility(4);
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.player_wrapper);
            relativeLayout.getLayoutParams().height = this.playerContainerPortraitSize[1];
            relativeLayout.setBackgroundColor(-1);
            ((RelativeLayout.LayoutParams) this.playerLayout.getLayoutParams()).setMargins(0, 0, 0, 0);
            setPlayerControlsEditMode();
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
            getWindow().getDecorView().setSystemUiVisibility(0);
            relativeLayout.requestLayout();
            this.fullScreenMode = false;
            this.mEditor.pause();
            setPauseUX();
        }
    }

    public void addCollapseFullScreenListener() {
        ((ImageView) findViewById(R.id.editorPreviewCollapseBtn)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditorActivity.this.closeFullScreen();
            }
        });
    }

    public void addFullScreenViewListener() {
        this.previewFullScreenButton = (ImageView) findViewById(R.id.editorIconBarExpandBtn);
        this.previewFullScreenButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Metrics.sharedInstance().didTapPresentationMode();
                EditorActivity.this.openFullScreen();
            }
        });
    }

    public boolean onTouchPlayer(View view, MotionEvent motionEvent) {
        if (this.currentProject.getSequence().getClips().size() == 0) {
            return false;
        }
        if ((this.loadingBeats || this.loadingPlayer || this.mTrimmingInProgress) && !this.fullScreenMode) {
            return true;
        }
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.mode = 1;
                break;
            case 1:
                if (this.mode == 2) {
                    finishTwoFingerSwipe(true);
                }
                if (this.mode == 1) {
                    onClickPlayer(view);
                }
                this.mode = 0;
                break;
            case 2:
                if (this.mode == 2) {
                    this.stopX = motionEvent.getX(0);
                    if (Math.abs(this.startX - this.stopX) > 10.0f) {
                        moveTwoFingerSwipe();
                    }
                }
                break;
            case 3:
                if (this.mode == 2) {
                    finishTwoFingerSwipe(false);
                }
                this.mode = 0;
                break;
            case 5:
                Log.d(TAG, "2 finger swipe ACTION_POINTER_DOWN " + motionEvent.getActionIndex());
                if (!this.fullScreenMode && !this.musicView.isOpen()) {
                    if (this.mode != 2) {
                        this.mode = 2;
                        this.startX = motionEvent.getX(0);
                        startTwoFingerSwipe();
                    } else if (motionEvent.getActionIndex() == 0) {
                        this.startX = motionEvent.getX(0);
                    }
                }
                break;
            case 6:
                Log.d(TAG, "2 finger swipe ACTION_POINTER_UP " + motionEvent.getActionIndex());
                if (!this.fullScreenMode && !this.musicView.isOpen() && motionEvent.getActionIndex() == 0) {
                    this.startX = motionEvent.getX(1);
                }
                break;
        }
        return true;
    }

    private void startTwoFingerSwipe() {
        this.trimBar.disableInAndOutTrimHandle();
        this.mTwoFingerInProgress = true;
        updatePlayPauseButton();
        this.floatingActionsMenu.setEnabled(false);
        findViewById(R.id.catch_touch).setVisibility(0);
        findViewById(R.id.catch_touch_2).setVisibility(0);
        this.mEditor.onScrubbingStarted();
    }

    public void moveTwoFingerSwipe() {
        if (this.mEditor.getPlayerState() != SequencePlayer.PLAYER_STATE.PAUSED) {
            onClickPlayer(null);
            this.floatingActionsMenu.setEnabled(false);
        }
        float selectedMinValue = this.trimBar.getSelectedMinValue();
        float selectedMaxValue = this.trimBar.getSelectedMaxValue();
        if ((this.stopX - this.startX) / this.twoFingerSwipeScale >= 0.0f) {
            this.trimBar.setNormalizedMaxValue(r2 + selectedMaxValue);
            this.trimBar.setNormalizedMinValue(selectedMinValue + (this.trimBar.getSelectedMaxValue() - selectedMaxValue));
        } else {
            this.trimBar.setNormalizedMinValue(r2 + selectedMinValue);
            this.trimBar.setNormalizedMaxValue((this.trimBar.getSelectedMinValue() - selectedMinValue) + selectedMaxValue);
        }
        this.startX = this.stopX;
        this.mEditor.onScrubberMoved(this.trimBar.getSelectedMinValue());
    }

    private void finishTwoFingerSwipe(boolean z) {
        this.mTwoFingerInProgress = false;
        updatePlayPauseButton();
        this.trimBar.enableInAndOutTrimHandle();
        this.stopX = 0.0f;
        this.startX = 0.0f;
        if (z) {
            this.mEditor.finishTwoFingerSwipe();
        }
        showSyncPointsForClip(this.mEditor.getCurrentClipIndex());
        this.floatingActionsMenu.setEnabled(true);
        findViewById(R.id.catch_touch).setVisibility(8);
        findViewById(R.id.catch_touch_2).setVisibility(8);
    }

    public void onClickPlayer(View view) {
        if (!this.fullScreenMode) {
            if (!this.loadingPlayer || this.loadingLayout.getVisibility() != 0) {
                if (this.playerViewSet) {
                    if (this.clipOptionsView.isOpen()) {
                        playPauseClip();
                        return;
                    }
                    if (this.musicView.isOpen() && this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE) {
                        playPauseSequence(null);
                        this.mEditor.setClipPlayback();
                        this.mEditor.seekToSequenceTime(0L);
                        return;
                    }
                    playPauseSequence(null);
                    return;
                }
                findViewById(R.id.player_edit_mode).setVisibility(4);
                findViewById(R.id.player_bar).setVisibility(4);
                findViewById(R.id.clip_options).setVisibility(4);
                return;
            }
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.player_preview_mode);
        if (!this.countDownTimer.isInFadeOutTime()) {
            relativeLayout.setVisibility(relativeLayout.getVisibility() == 8 ? 0 : 8);
        }
        if (this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE) {
            this.countDownTimer.cancelTimer();
            if (relativeLayout.getVisibility() == 0) {
                this.countDownTimer.start();
            }
        }
    }

    private void setClipOptionsSeekBarListeners() {
        Utilities.setSeekBarTheme(this, this.exposureSeekBar);
        Utilities.setSeekBarTheme(this, this.highlightsSeekBar);
        Utilities.setSeekBarTheme(this, this.shadowsSeekBar);
        Utilities.setSeekBarTheme(this, this.volumeSeekBar);
        Utilities.setSeekBarTheme(this, this.speedSeekBar);
        this.exposureSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.18
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.EXPOSURE, i / 100.0f);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                Metrics.sharedInstance().didChangeClipExposureSlider(seekBar.getProgress() / 100.0f, EditorActivity.this.currentProject.getSequence().getClips().get(EditorActivity.this.mEditor.getCurrentClipIndex()).getClipTypeString());
            }
        });
        this.highlightsSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.19
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.HIGHLIGHTS, i / 100.0f);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                Metrics.sharedInstance().didChangeClipHighlightsSlider(seekBar.getProgress() / 100.0f, EditorActivity.this.currentProject.getSequence().getClips().get(EditorActivity.this.mEditor.getCurrentClipIndex()).getClipTypeString());
            }
        });
        this.shadowsSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.20
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.SHADOWS, i / 100.0f);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                Metrics.sharedInstance().didChangeClipShadowsSlider(seekBar.getProgress() / 100.0f, EditorActivity.this.currentProject.getSequence().getClips().get(EditorActivity.this.mEditor.getCurrentClipIndex()).getClipTypeString());
            }
        });
        this.speedSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.21
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    EditorActivity.this.speedTextView.setText(((int) ((((3.0f * i) / 400.0f) + 0.25f) * 100.0f)) + "%");
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                String clipTypeString = EditorActivity.this.currentProject.getSequence().getClips().get(EditorActivity.this.mEditor.getCurrentClipIndex()).getClipTypeString();
                float progress = ((3.0f * seekBar.getProgress()) / 400.0f) + 0.25f;
                EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.SPEED, progress);
                Metrics.sharedInstance().didChangeClipSpeedSlider(progress, clipTypeString, 0.0d);
            }
        });
        this.volumeSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.22
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    int i2 = i * 2;
                    EditorActivity.this.volumeText.setText(String.valueOf(i2) + "%");
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.VOLUME, i2 / 100.0f);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                Metrics.sharedInstance().didChangeClipVolumeSlider((seekBar.getProgress() * 2.0f) / 100.0f, EditorActivity.this.currentProject.getSequence().getClips().get(EditorActivity.this.mEditor.getCurrentClipIndex()).getClipTypeString());
            }
        });
    }

    @Override // com.adobe.premiereclip.editor.ClipOptionsView.ClipOptionListener
    public void onClipOptionsOpened() {
        this.mEditor.pause();
        this.mEditor.setClipPlayback();
        setPauseUX();
        this.floatingActionsMenu.setVisibility(4);
        findViewById(R.id.timeline_view).setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sharingOptionsOpened() {
        this.mEditor.pause();
        setPauseUX();
        this.sharingOptions.openView();
        this.floatingActionsMenu.setVisibility(4);
    }

    public void sharingOptionClicked(View view) {
        this.sharingOptions.onOptionSelected(view);
    }

    private void sharingOptionsClosed() {
        this.mEditor.pause();
        setPauseUX();
        this.sharingOptions.closeView();
        this.floatingActionsMenu.setVisibility(0);
        findViewById(R.id.timeline_view).setVisibility(0);
    }

    public void closeSharingOptions(View view) {
        sharingOptionsClosed();
    }

    public void onClickExposureOption(View view) {
        this.clipOptionsView.selectDummyOption(0);
    }

    public void onClickAudioOption(View view) {
        this.clipOptionsView.selectDummyOption(1);
    }

    public void onClickTextOption(View view) {
        this.clipOptionsView.selectDummyOption(0);
    }

    public void onClickMoreOption(View view) {
        this.clipOptionsView.selectDummyOption(this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getClipType() == Clip.CLIP_TYPE.VIDEO ? 2 : 1);
    }

    @Override // com.adobe.premiereclip.editor.ClipOptionsView.ClipOptionListener
    public void onSelectExposureOption() {
        Clip clip = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex());
        Clip.CLIP_TYPE clipType = clip.getClipType();
        Metrics.sharedInstance().didTapClipBrightnessMenuForClipType(clip.getClipTypeString());
        if (!this.storyCardMode && clipType != Clip.CLIP_TYPE.IMAGE_TITLE && clip.isAvailable()) {
            this.exposureSeekBar.setProgress((int) (clip.getClipOptionEffects().getSeekExposure() * 100.0f));
            this.highlightsSeekBar.setProgress((int) (clip.getClipOptionEffects().getHighlights() * 100.0f));
            this.shadowsSeekBar.setProgress((int) ((1.0f - clip.getClipOptionEffects().getShadows()) * 100.0f));
        }
    }

    @Override // com.adobe.premiereclip.editor.ClipOptionsView.ClipOptionListener
    public void onSelectAudioOption() {
        Clip clip = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex());
        Clip.CLIP_TYPE clipType = clip.getClipType();
        Metrics.sharedInstance().didTapClipAudioMenuForClipType(clip.getClipTypeString());
        if (!this.storyCardMode && clipType == Clip.CLIP_TYPE.VIDEO && clip.isAvailable()) {
            setAudioOptions();
        }
    }

    @Override // com.adobe.premiereclip.editor.ClipOptionsView.ClipOptionListener
    public void onSelectTextOption() {
        Clip clip = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex());
        Clip.CLIP_TYPE clipType = clip.getClipType();
        Metrics.sharedInstance().didTapClipTextMenuForClipType(clip.getClipTypeString());
        if (!this.storyCardMode && clipType == Clip.CLIP_TYPE.IMAGE_TITLE && clip.isAvailable()) {
            initCurrentTitleImage((ImageClip) clip);
        }
    }

    @Override // com.adobe.premiereclip.editor.ClipOptionsView.ClipOptionListener
    public void onSelectMoreOption() {
        Clip clip = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex());
        if (!this.storyCardMode && clip.isAvailable()) {
            Clip.CLIP_TYPE clipType = clip.getClipType();
            Metrics.sharedInstance().didTapClipMoreMenuForClipType(clip.getClipTypeString());
            if (clipType == Clip.CLIP_TYPE.VIDEO) {
                this.speedSeekBar.setProgress((int) (((clip.getSpeed() * 100.0f) / 0.75f) - 33.333332f));
                this.speedTextView.setText(((int) (clip.getSpeed() * 100.0f)) + "%");
            }
            updateSplitView();
        }
    }

    public void closeFAB(View view) {
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    @Override // com.adobe.premiereclip.editor.Timeline.ClipDeleteListener
    public void onClipDelete(int i) {
        this.mEditor.pause();
        setPauseUX();
        ConfirmDialog confirmDialog = new ConfirmDialog(this, getString(R.string.delete_clip_title), getString(R.string.delete_clip_message), true);
        confirmDialog.setAcceptButton(getString(R.string.delete_positive), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.23
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                EditorActivity.this.onConfirmDelete(null);
            }
        });
        confirmDialog.setRejectButton(getString(R.string.delete_negative), null);
        confirmDialog.show();
    }

    public void onConfirmDelete(View view) {
        this.timeline.removeClip(this.mEditor.getCurrentClipIndex());
        if (this.clipOptionsView.isOpen()) {
            closeClipOptions();
        }
        showEmptyTimelineCoachmark();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeClipOptions() {
        this.timelineView.setVisibility(0);
        this.mEditor.pause();
        this.mEditor.maybeUpdatePoster();
        setPauseUX();
        this.clipOptionsView.closeClipOption();
        this.floatingActionsMenu.setVisibility(0);
    }

    public final void setAudioFadeInSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.audiofadein_value);
        switchCompat.setChecked(this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getAudioFadeInApplied());
        final String clipTypeString = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getClipTypeString();
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.24
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleClipAudioFadeIn(Boolean.valueOf(z), clipTypeString);
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_FADE_IN, 1.0f);
                } else {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_FADE_IN, 0.0f);
                }
            }
        });
    }

    public final void setAudioFadeOutSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.audiofadeout_value);
        switchCompat.setChecked(this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getAudioFadeOutApplied());
        final String clipTypeString = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getClipTypeString();
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.25
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleClipAudioFadeOut(Boolean.valueOf(z), clipTypeString);
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_FADE_OUT, 1.0f);
                } else {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_FADE_OUT, 0.0f);
                }
            }
        });
    }

    public final void setSmartVolumeSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.smartVolumeValue);
        switchCompat.setChecked(this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getSmartVolumeApplied());
        final String clipTypeString = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getClipTypeString();
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.26
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleClipSmartVolume(Boolean.valueOf(z), clipTypeString);
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_SMART_VOLUME, 1.0f);
                } else {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_SMART_VOLUME, 0.0f);
                }
            }
        });
    }

    public final void setMuteSwitch() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.playAudioValue);
        final String clipTypeString = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getClipTypeString();
        if (this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).isMuted()) {
            switchCompat.setChecked(false);
            disableAudioControls();
        } else {
            switchCompat.setChecked(true);
            enableAudioControls();
        }
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.27
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                Metrics.sharedInstance().didToggleClipPlayAudio(Boolean.valueOf(z), clipTypeString);
                if (z) {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_MUTE, 0.0f);
                    EditorActivity.this.enableAudioControls();
                } else {
                    EditorActivity.this.mEditor.setClipOptions(Editor.ClipOptions.AUDIO_MUTE, 1.0f);
                    EditorActivity.this.disableAudioControls();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableAudioControls() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.smartVolumeValue);
        SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.audiofadein_value);
        SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.audiofadeout_value);
        SeekBar seekBar = (SeekBar) findViewById(R.id.volumeValue);
        switchCompat.setEnabled(false);
        switchCompat2.setEnabled(false);
        switchCompat3.setEnabled(false);
        seekBar.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableAudioControls() {
        SwitchCompat switchCompat = (SwitchCompat) findViewById(R.id.smartVolumeValue);
        SwitchCompat switchCompat2 = (SwitchCompat) findViewById(R.id.audiofadein_value);
        SwitchCompat switchCompat3 = (SwitchCompat) findViewById(R.id.audiofadeout_value);
        SeekBar seekBar = (SeekBar) findViewById(R.id.volumeValue);
        switchCompat.setEnabled(true);
        switchCompat2.setEnabled(true);
        switchCompat3.setEnabled(true);
        seekBar.setEnabled(true);
    }

    public void duplicateClip(View view) {
        if (this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PAUSED) {
            this.mEditor.duplicateClip();
            closeClipOptions();
            Toast.makeText(this, getResources().getText(R.string.clip_duplicated_toast), 0).show();
        }
    }

    public void splitClip(View view) {
        if (this.trimBar.isSplitEnabled() && this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PAUSED) {
            this.mEditor.splitClip();
            closeClipOptions();
            Toast.makeText(this, getResources().getText(R.string.clip_split_toast), 0).show();
        }
    }

    public void showStoryCardConfirmDialog(View view) {
        final String clipTypeString = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex()).getClipTypeString();
        Metrics.sharedInstance().didTapTurnIntoStorycardForClipType(clipTypeString);
        ConfirmDialog confirmDialog = new ConfirmDialog(this, getResources().getString(R.string.storycard_button_title), getResources().getString(R.string.turn_into_storycard_text), false);
        confirmDialog.setAcceptButton(getResources().getString(R.string.convert_storycard), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.28
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                EditorActivity.this.closeClipOptions();
                EditorActivity.this.showStoryCardView("");
                EditorActivity.this.mEditor.makeClipIntoStoryCard("");
                EditorActivity.this.showStoryCardInputDialog(null);
                EditorActivity.this.timeline.resetClip(EditorActivity.this.currentProject.getSequence().getClips().get(EditorActivity.this.mEditor.getCurrentClipIndex()), EditorActivity.this.mEditor.getCurrentClipIndex());
                Metrics.sharedInstance().didCreateStorycardFromClipType(clipTypeString);
            }
        });
        confirmDialog.setRejectButton(getResources().getString(R.string.btn_title_cancel), new AbstractDialog.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.29
            @Override // com.adobe.premiereclip.dialogs.AbstractDialog.OnClickListener
            public void onClick() {
                EditorActivity.this.closeClipOptions();
            }
        });
        confirmDialog.show();
    }

    public void showStoryCardInputDialog(View view) {
        this.mEditor.pause();
        this.mEditor.setClipPlayback();
        setPauseUX();
        StoryCardTextInputDialog storyCardTextInputDialog = new StoryCardTextInputDialog(this, ((ImageClip) this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex())).getStoryCardText(), new StoryCardTextInputDialog.StoryCardTextChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.30
            @Override // com.adobe.premiereclip.editor.StoryCardTextInputDialog.StoryCardTextChangeListener
            public void onStoryCardTextChanged(String str) {
                EditorActivity.this.showStoryCardView(str);
                EditorActivity.this.mEditor.makeClipIntoStoryCard(str);
            }
        });
        storyCardTextInputDialog.getWindow().setSoftInputMode(4);
        storyCardTextInputDialog.show();
    }

    public void showTitleTextInputDialog(View view) {
        this.mEditor.pause();
        setPauseUX();
        TitleTextInputDialog titleTextInputDialog = new TitleTextInputDialog(this, this.currentTitleImage.getTitleText(), new TitleTextInputDialog.TitleTextChangeListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.31
            @Override // com.adobe.premiereclip.editor.TitleTextInputDialog.TitleTextChangeListener
            public void onTitleTextChanged(String str) {
                EditorActivity.this.currentTitleImage.setTitleText(str);
                EditorActivity.this.updateTitleImage();
            }
        });
        titleTextInputDialog.getWindow().setSoftInputMode(4);
        titleTextInputDialog.show();
    }

    public void pickTextColor(View view) {
        Intent intent = new Intent(this, (Class<?>) ColorPickerActivity.class);
        intent.putExtra("project_key", this.currentProject.projectKey);
        intent.putExtra("color", Color.parseColor(this.currentTitleImage.getTextColor()));
        startActivityForResult(intent, TEXT_COLOR_PICKER_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void pickBackgroundColor(View view) {
        Intent intent = new Intent(this, (Class<?>) ColorPickerActivity.class);
        intent.putExtra("project_key", this.currentProject.projectKey);
        intent.putExtra("color", Color.parseColor(this.currentTitleImage.getBackgroundColor()));
        startActivityForResult(intent, BACKGROUND_COLOR_PICKER_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void showProjectSync(View view) {
        Intent intent = new Intent(this, (Class<?>) DCXSyncStatusActivity.class);
        intent.putExtra("project_key", this.currentProject.projectKey);
        startActivity(intent);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    private void openAudioSettingsView() {
        if (this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() == 0) {
            Intent intent = new Intent(this, (Class<?>) TrackCategoryActivity.class);
            intent.putExtra("project_key", this.currentProject.projectKey);
            startActivityForResult(intent, BACKGROUND_AUDIO_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            return;
        }
        openMusicView();
    }

    public void openAudioSettings(View view) {
        Metrics.sharedInstance().didTapSoundtrack();
        if (MarshmallowUtils.getPermission(42, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            openAudioSettingsView();
        }
    }

    public final void openLooks(View view) {
        Metrics.sharedInstance().didTapFinishingTouchesForSequenceWithDuration(this.currentProject.getSequence().getSequenceDurationUs(), this.currentProject.getSequence().numAudioClips(), this.currentProject.getSequence().numVideoClips());
        Metrics.sharedInstance().didTapFinishingTouchesLooksMenu();
        Intent intent = new Intent(this, (Class<?>) LooksListActivity.class);
        intent.putExtra("project_key", this.currentProject.projectKey);
        startActivity(intent);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void openVideoSetting(View view) {
        this.initialLookId = this.currentProject.getSequence().getLook().getLookId();
        Metrics.sharedInstance().didTapFinishingTouchesForSequenceWithDuration(this.currentProject.getSequence().getSequenceDurationUs(), this.currentProject.getSequence().numAudioClips(), this.currentProject.getSequence().numVideoClips());
        Intent intent = new Intent(this, (Class<?>) VideoSettingActivity.class);
        intent.putExtra("cross_fade", this.currentProject.getSequence().transitionAppliedOnSequence());
        intent.putExtra("fade_in", this.currentProject.getSequence().fadeInApplied());
        intent.putExtra("fade_out", this.currentProject.getSequence().fadeOutApplied());
        intent.putExtra("photo_motion", this.currentProject.getSequence().photoMotionApplied());
        intent.putExtra("project_key", this.currentProject.projectKey);
        startActivityForResult(intent, VIDEO_SETTING_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    private void initCurrentTitleImage(ImageClip imageClip) {
        this.currentTitleImage = imageClip;
        this.titleTextView.setText(this.currentTitleImage.getTitleText());
        this.textColorView.setBackgroundColor(Color.parseColor(this.currentTitleImage.getTextColor()));
        this.backgroundColorView.setBackgroundColor(Color.parseColor(this.currentTitleImage.getBackgroundColor()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTitleImage() {
        if (this.currentTitleImage != null) {
            this.titleTextView.setText(this.currentTitleImage.getTitleText());
            this.textColorView.setBackgroundColor(Color.parseColor(this.currentTitleImage.getTextColor()));
            this.backgroundColorView.setBackgroundColor(Color.parseColor(this.currentTitleImage.getBackgroundColor()));
            this.currentTitleImage.updateTitleImage();
            this.timeline.resetClip(this.currentTitleImage, this.mEditor.getCurrentClipIndex());
        }
    }

    public void addMediaFromDevice(View view) {
        Metrics.sharedInstance().didTapMediaPickerOnMyDevice();
        if (MarshmallowUtils.getPermission(41, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            openGalleryPickerActivity();
        }
    }

    public void addMediaFromGooglePhotos(View view) {
        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_GOOGLE_PHOTOS);
        if (MarshmallowUtils.getMultiplePermission(71, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_GOOGLE_PHOTOS);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromGoogleDrive(View view) {
        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_GOOGLE_DRIVE);
        if (MarshmallowUtils.getMultiplePermission(72, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_GOOGLE_DRIVE);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromDropbox(View view) {
        Metrics.sharedInstance().didTapMediaPickerRemoteSource(Metrics.REMOTE_SOURCE_DROPBOX);
        if (MarshmallowUtils.getMultiplePermission(73, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_CONTACTS"}, this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_DROPBOX);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromLightRoom(View view) {
        Metrics.sharedInstance().didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker();
        CreativeCloudSource.getInstance().openCreativeCloudImagePicker(this, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourcePhotos));
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    public void addMediaFromCamera(View view) {
        Metrics.sharedInstance().didTapMediaPickerUseCamera();
        if (MarshmallowUtils.getPermission(11, "android.permission.CAMERA", this)) {
            CameraCaptureManager.getInstance().showMediaCaptureOptions(this, this.mediaCaptureOptionsView, AddMediaManager.CAMERA_CAPTURE_REQUEST);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
        }
    }

    public void addMediaFromCC(View view) {
        Metrics.sharedInstance().didAttemptImportOfCreativeCloudFileAssetInMediaPicker();
        CreativeCloudSource.getInstance().openCreativeCloudImagePicker(this, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles));
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    public void addTitleImage(View view) {
        Metrics.sharedInstance().didTapMediaPickerTitle();
        this.mEditor.createTitleImage();
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
        new Handler().postDelayed(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.32
            @Override // java.lang.Runnable
            public void run() {
                EditorActivity.this.onClickTextOption(null);
            }
        }, 1000L);
    }

    private void openGalleryPickerActivity() {
        Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
        intent.putExtra("type", GalleryActivity.SOURCE_MOMENTS);
        startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 11:
                if (iArr.length > 0 && iArr[0] == 0) {
                    CameraCaptureManager.getInstance().showMediaCaptureOptions(this, this.mediaCaptureOptionsView, AddMediaManager.CAMERA_CAPTURE_REQUEST);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else {
                    getCameraAccessDialog();
                }
                break;
            case 12:
                if (iArr.length > 0 && iArr[0] == 0) {
                    shootFromStoryCard();
                } else {
                    getCameraAccessDialog();
                }
                break;
            case 41:
                if (iArr.length > 0 && iArr[0] == 0) {
                    openGalleryPickerActivity();
                } else {
                    getReadExternalStorageDialog();
                }
                break;
            case 42:
                if (iArr.length > 0 && iArr[0] == 0) {
                    openAudioSettingsView();
                } else {
                    getReadExternalStorageDialog();
                }
                break;
            case 51:
                if (iArr.length > 0 && iArr[0] == 0) {
                    this.sharingOptions.sharePublish();
                } else {
                    getWriteExternalStorageDialog();
                }
                break;
            case 52:
                if (iArr.length > 0 && iArr[0] == 0) {
                    this.sharingOptions.shareSaveGallery();
                } else {
                    getWriteExternalStorageDialog();
                }
                break;
            case 53:
                if (iArr.length > 0 && iArr[0] == 0) {
                    this.sharingOptions.shareSaveCC();
                } else {
                    getWriteExternalStorageDialog();
                }
                break;
            case 54:
                if (iArr.length > 0 && iArr[0] == 0) {
                    this.sharingOptions.shareYoutube();
                } else {
                    getWriteExternalStorageDialog();
                }
                break;
            case 55:
                if (iArr.length > 0 && iArr[0] == 0) {
                    this.sharingOptions.shareTwitter();
                } else {
                    getWriteExternalStorageDialog();
                }
                break;
            case 71:
                int length = iArr.length;
                if ((length == 1 && iArr[0] == 0) || (length == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent.putExtra("type", GalleryActivity.SOURCE_GOOGLE_PHOTOS);
                    startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE") || !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_CONTACTS")) {
                    new MessageDialog(this, getString(R.string.need_access), getString(R.string.enable_storage_and_contacts_permission), true).show();
                }
                break;
            case 72:
                int length2 = iArr.length;
                if ((length2 == 1 && iArr[0] == 0) || (length2 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent2 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent2.putExtra("type", GalleryActivity.SOURCE_GOOGLE_DRIVE);
                    startActivityForResult(intent2, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE") || !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_CONTACTS")) {
                    new MessageDialog(this, "Need Access", "Please enable Storage and Contacts access in Settings->Apps->Adobe Clip->Permissions", true).show();
                }
                break;
            case 73:
                int length3 = iArr.length;
                if ((length3 == 1 && iArr[0] == 0) || (length3 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent3 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent3.putExtra("type", GalleryActivity.SOURCE_DROPBOX);
                    startActivityForResult(intent3, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE") || !ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_CONTACTS")) {
                    new MessageDialog(this, "Need Access", "Please enable Storage and Contacts access in Settings->Apps->Adobe Clip->Permissions", true).show();
                }
                break;
        }
    }

    private void getCameraAccessDialog() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
            new MessageDialog(this, getString(R.string.camera_access_alert), getString(R.string.camera_access_settings_path), true).show();
        }
    }

    private void getWriteExternalStorageDialog() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            new MessageDialog(this, getString(R.string.external_storage_access_alert), getString(R.string.external_storage_access_settings_path), true).show();
        }
    }

    private void getReadExternalStorageDialog() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_EXTERNAL_STORAGE")) {
            new MessageDialog(this, getString(R.string.external_storage_access_alert), getString(R.string.external_storage_access_settings_path), true).show();
        }
    }

    private void showShareCoachmark() {
        if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_SHARE, true) && !this.currentProject.getSequence().getClips().isEmpty()) {
            CoachMarks.CoachmarkParam coachmarkParam = new CoachMarks.CoachmarkParam(getString(R.string.coachmark_freeform_shareVideo_title), getString(R.string.coachmark_freeform_shareVideo_message), ClipPreferences.FREEFORM_SHARE, this.shareButton, true, null, null, null, true);
            coachmarkParam.delay = 750L;
            this.mcoachMarks.showCoachMarkWithOk(coachmarkParam);
        }
    }

    private void showEmptyTimelineCoachmark() {
        if (this.mPreferences.getPreference(ClipPreferences.FREEFORM_EMPTY, true) && this.currentProject.getSequence().getClips().isEmpty()) {
            this.mcoachMarks.showCoachMarkWithOk(new CoachMarks.CoachmarkParam(getString(R.string.coachmark_freeform_empty_title), getString(R.string.coachmark_freeform_empty_message), ClipPreferences.FREEFORM_EMPTY, (LinearLayout) findViewById(R.id.openTextTitle), false, null, null, null, true));
        }
    }

    private void showTwoFingerCoachmark() {
        this.coachmarkHandler.postDelayed(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.33
            @Override // java.lang.Runnable
            public void run() {
                if (EditorActivity.this.mPreferences.getPreference(ClipPreferences.FREEFORM_TWOFINGER, true) && !EditorActivity.this.currentProject.getSequence().getClips().isEmpty()) {
                    CoachMarks.CoachmarkParam coachmarkParam = new CoachMarks.CoachmarkParam(EditorActivity.this.getString(R.string.coachmark_freeform_twofinger_title), EditorActivity.this.getString(R.string.coachmark_freeform_twofinger_message), ClipPreferences.FREEFORM_TWOFINGER, EditorActivity.this.playPauseBtn, true, null, null, null, true);
                    coachmarkParam.delay = 5000L;
                    EditorActivity.this.mcoachMarks.showCoachMarkWithOk(coachmarkParam);
                }
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addOnClickListenerForSyncButton() {
        this.syncCloudButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.EditorActivity.34
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                EditorActivity.this.dcxSyncStatusButton.handleMediaSyncIndicatorButtonTapped();
            }
        });
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
    public void onDownloadStart() {
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
    public void onDownloadProgress(double d2) {
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
    public void onDownloadComplete(ArrayList<MediaInfo> arrayList, int i, int i2) {
        int size = arrayList.size();
        if (i2 > 0) {
            Toast.makeText(this, getResources().getString(R.string.cc_download_reject), 1).show();
        }
        int i3 = (i - i2) - size;
        if (i3 > 0) {
            new MessageDialog(this, getResources().getString(R.string.cc_downloaded_header), getString(R.string.cc_downloaded_text, new Object[]{Integer.valueOf(size), Integer.valueOf(i3)}), false).show();
        }
        if (addMedias(arrayList) && !this.pausedState) {
            this.timeline.setClips(this.currentProject.getSequence().getClips(), this.mEditor.getCurrentClipIndex());
            this.mEditor.playerReInit(0);
        }
        this.newProject = false;
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadSession.Listener
    public void onDownloadCancel(int i) {
        if (i == 1) {
            Toast.makeText(this, getString(R.string.cc_download_reject_low_space), 1).show();
        }
        if (this.newProject) {
            closeAndDeleteProject();
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void showConnectionFailureIcon() {
        if (this != null) {
            runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.35
                @Override // java.lang.Runnable
                public void run() {
                    EditorActivity.this.syncCloudButton.setVisibility(0);
                    EditorActivity.this.syncCloudButton.clearAnimation();
                    EditorActivity.this.syncCloudButton.setImageResource(R.drawable.gra_errorsign_2x);
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void startAnimation() {
        if (this != null) {
            runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.36
                @Override // java.lang.Runnable
                public void run() {
                    EditorActivity.this.syncCloudButton.setVisibility(0);
                    EditorActivity.this.syncCloudButton.setImageResource(R.drawable.btn_sync_white);
                    EditorActivity.this.syncCloudButton.startAnimation(AnimationUtils.loadAnimation(EditorActivity.this, R.anim.rotate_indefinitely));
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void stopAnimation() {
        if (this != null) {
            runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.37
                @Override // java.lang.Runnable
                public void run() {
                    EditorActivity.this.syncCloudButton.clearAnimation();
                    EditorActivity.this.syncCloudButton.setVisibility(8);
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void showConnectionFailureDialog(boolean z) {
        String string = getString(R.string.dcx_no_wifi_message);
        if (!z) {
            string = getString(R.string.dcx_no_internet_message);
        }
        new MessageDialog(this, getString(R.string.dcx_no_internet_title), string, true).show();
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void openSyncTableView() {
        Intent intent = new Intent(this, (Class<?>) DCXSyncStatusActivity.class);
        intent.putExtra("restrictedCompositeId", this.currentProject.projectKey);
        intent.putExtra("project_key", this.currentProject.projectKey);
        startActivity(intent);
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void retryPendingPPro() {
        runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.EditorActivity.38
            @Override // java.lang.Runnable
            public void run() {
                EditorActivity.this.sharingOptions.mayBeExportPPro();
            }
        });
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void showProjectSyncingText() {
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void removeProjectSyncingText() {
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void triggerRemovePlayerView() {
        if (this.playerViewSet) {
            this.playerLayout.removeAllViews();
            disableShareAndPreviewButtons();
            this.loadingPlayer = false;
            this.loadingBeats = false;
            this.playerViewSet = false;
            onClickPlayer(null);
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void triggerAddPlayerView() {
        addPlayerView();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onPlayerPaused() {
        setPauseUX();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onPlayerTimeUpdate(long j) {
        if (this.previewSeekBar != null && !this.previewSeekBarTouched) {
            this.previewSeekBar.setProgress((int) ((1000000.0f * j) / this.currentProject.getSequence().getSequenceDurationUs()));
        }
        if (this.previewTimeTextView != null) {
            this.previewTimeTextView.setText(getTimeString(j));
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onExportProgress(double d2) {
        if (this.exportMode) {
            this.sharingOptions.getSharingManager().setExportProgress(d2);
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onExportEnded(File file, boolean z) {
        if (this.exportMode) {
            this.sharingOptions.getSharingManager().onExportEnded(file, z);
            this.exportMode = false;
            this.mEditor.initPlayback();
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onClipSelected(boolean z) {
        Clip clip = null;
        if (this.currentProject.getSequence().getClips().size() > 0) {
            clip = this.currentProject.getSequence().getClips().get(this.mEditor.getCurrentClipIndex());
        }
        if (clip != null) {
            if (z) {
                this.clipOptionsView.setClip(Clip.CLIP_TYPE.NONE, false);
                showStoryCardView(((ImageClip) clip).getStoryCardText());
                return;
            } else {
                this.clipOptionsView.setClip(clip.getClipType(), clip.isAvailable());
                this.trimBar.setMinNormalizedTrimHandleDistance(getMinNormalizedTrimHandleDistanceForClip(clip));
                setWaveformAndBeats();
            }
        }
        removeStoryCardView();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onLoadingStarted() {
        this.loadingPlayer = true;
        updateLoadingSpinner();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onLoadingCompleted(boolean z) {
        this.loadingPlayer = false;
        updateLoadingSpinner();
        if (!z) {
            setPlayUX();
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onRangeSeekbarThumbMoveStarted() {
        this.mTrimmingInProgress = true;
        updatePlayPauseButton();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onRangeSeekbarThumbMoveEnded() {
        this.mTrimmingInProgress = false;
        updatePlayPauseButton();
    }

    @Override // com.adobe.premiereclip.sharing.SharingOptions.Listener
    public void onSharingStarted(boolean z) {
        this.exportMode = true;
        this.mEditor.startExport(z);
    }

    @Override // com.adobe.premiereclip.sharing.SharingOptions.Listener
    public void onSharingEnded() {
        this.mEditor.endExport();
    }

    @Override // com.adobe.premiereclip.sharing.SharingOptions.Listener
    public void onSharingOptionsClosed() {
        sharingOptionsClosed();
    }

    private void setCoachmarkListener() {
        this.mcoachMarks.setListener(new CoachMarks.Listener() { // from class: com.adobe.premiereclip.editor.EditorActivity.39
            @Override // com.adobe.premiereclip.coachmarks.CoachMarks.Listener
            public boolean isViewAvailable() {
                return (EditorActivity.this.fullScreenMode || EditorActivity.this.exportMode || EditorActivity.this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE || EditorActivity.this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_CLIP || PrepareVideoDialog.isOpen() || EditorActivity.this.sharingOptions.isOpen() || EditorActivity.this.floatingActionsMenu.d() || EditorActivity.this.mediaCaptureOptionsView.isOpen()) ? false : true;
            }
        });
    }

    private void registerNetworkChangeNotification() {
        if (this.network_reachability_observer == null) {
            this.network_reachability_observer = new Observer() { // from class: com.adobe.premiereclip.editor.EditorActivity.40
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    if (DCXModelController.getInstance().isSyncInitialized()) {
                        EditorActivity.this.dcxSyncStatusButton = new DCXSyncStatusButton(EditorActivity.this, EditorActivity.this.currentProject.projectKey);
                        EditorActivity.this.addOnClickListenerForSyncButton();
                    }
                }
            };
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.network_reachability_observer);
    }

    private void unRegisterNetworkChangeNotification() {
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this.network_reachability_observer);
    }

    private double getMinNormalizedTrimHandleDistanceForClip(Clip clip) {
        if (clip != null) {
            return (1.0d / clip.getAssetReference().getDurationUs()) * 166666.66666666d;
        }
        return 0.0015d;
    }
}
