package com.adobe.premiereclip.editor.automatic;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.TabLayout;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import com.adobe.creativesdk.foundation.storage.AdobeAssetDataSourceType;
import com.adobe.mobile.Config;
import com.adobe.premiereclip.BottomSheetView;
import com.adobe.premiereclip.CameraCaptureManager;
import com.adobe.premiereclip.ClipPreferences;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.coachmarks.CoachMarks;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.dcx.DCXProjectKeys;
import com.adobe.premiereclip.dcx.DCXSyncStatusActivity;
import com.adobe.premiereclip.dcx.DCXSyncStatusButton;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.dcx.DCXWriter;
import com.adobe.premiereclip.dialogs.MessageDialog;
import com.adobe.premiereclip.downloadmanager.CCDownloadSession;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.editor.EditorActivity;
import com.adobe.premiereclip.editor.MediaCaptureOptionsView;
import com.adobe.premiereclip.editor.SnapToBeatController;
import com.adobe.premiereclip.editor.Timeline;
import com.adobe.premiereclip.editor.automatic.TimelineViewManager;
import com.adobe.premiereclip.editor.waveform.AudioPeakGenerator;
import com.adobe.premiereclip.editor.waveform.SoundWaveView;
import com.adobe.premiereclip.editor.waveform.WaveDisplayParam;
import com.adobe.premiereclip.editor.waveform.WaveUtils;
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
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.project.sequence.AudioTrack;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.project.sequence.SyncData;
import com.adobe.premiereclip.sharing.PrepareVideoDialog;
import com.adobe.premiereclip.sharing.SharingOptions;
import com.adobe.premiereclip.source.CreativeCloudSource;
import com.adobe.premiereclip.util.MarshmallowUtils;
import com.adobe.premiereclip.util.ProjectPosterTask;
import com.adobe.premiereclip.util.ThumbnailHelper;
import com.adobe.premiereclip.util.Utilities;
import com.adobe.utility.FontUtils;
import com.getbase.floatingactionbutton.FloatingActionsMenu;
import com.getbase.floatingactionbutton.h;
import com.google.gdata.data.photos.TagData;
import com.h.a.d;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class AutomaticActivity extends FragmentActivity implements DCXSyncStatusButton.Listener, CCDownloadSession.Listener, Editor.Listener, Timeline.ClipDeleteListener, SharingOptions.Listener {
    private static final int BACKGROUND_AUDIO_REQUEST = 1071;
    private static final int NUM_PACE_VALUES = 5;
    private static final int NUM_PAGES = 2;
    private static final int SHARING_REQUEST = 1072;
    private static final String TAG = "AutomaticActivity";
    private boolean LRAssetCountMoreThanMax;
    private BottomSheetView bottomSheetView;
    private CCDownloadSession ccDownloadSession;
    private CoachMarks coachMarks;
    private View convertDialog;
    private boolean convertDialogOpen;
    private ImageView convertToFreeformButton;
    private Project currentProject;
    private DCXSyncStatusButton dcxSyncStatusButton;
    private boolean exportMode;
    private FloatingActionsMenu floatingActionsMenu;
    private boolean isComposingTimeline;
    private boolean isPlayerReady;
    private LinearLayout loadingLayout;
    private TextView loadingMessage;
    private ImageView loadingSpinner;
    private AutomaticEditor mEditor;
    private ImpactDataHandler mImpactDataHandler;
    private ClipPreferences mPreferences;
    private SyncData mSyncData;
    private Handler mUIHandler;
    private WindowManager mWM;
    private MediaCaptureOptionsView mediaCaptureOptionsView;
    private boolean newProject;
    private boolean pausedState;
    private AudioPeakGenerator peakGenerator;
    private ImageView playPauseBtn;
    private int[] playerContainerLandscapeSize;
    private int[] playerContainerPortraitSize;
    private RelativeLayout playerLayout;
    private boolean playerViewSet;
    private int previousTab;
    private String projectKey;
    private ImageView sequenceButton;
    private ImageView shareButton;
    private SharingOptions sharingOptions;
    private SnapToBeatController snapToBeatController;
    private ImageView syncCloudButton;
    private TabLayout tabLayout;
    private AutomaticTimeline timeline;
    private TimelineViewManager timelineViewManager;
    private ViewPager viewPager;
    private ViewPagerAdapter viewPagerAdapter;
    private final WindowManager.LayoutParams mParams = new WindowManager.LayoutParams();
    private final int MY_PERMISSIONS_REQUEST_CAMERA = 11;
    private final int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE = 14;
    private final int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_GALLERY = 41;
    private final int MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_AUDIO = 42;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH = 51;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY = 52;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC = 53;
    private final int MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE = 54;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS = 71;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE = 72;
    private final int MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX = 73;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws Throwable {
        super.onCreate(bundle);
        this.mUIHandler = new Handler();
        ThumbnailHelper.cancelAllUnexecutedTasks();
        setContentView(R.layout.activity_automatic);
        d.a(this);
        Intent intent = getIntent();
        this.projectKey = intent.getStringExtra("project_key");
        this.newProject = intent.getBooleanExtra("newProject", false) && !NewProjectData.isRead();
        Project projectWithKey = ProjectManager.getInstance().getProjectWithKey(this.projectKey);
        this.currentProject = projectWithKey;
        if (projectWithKey != null) {
            DCXWriter.setCurrentComposite(this.projectKey);
            ProjectManager.getInstance().loadSequence(projectWithKey);
        } else {
            Log.e("Editor", "Could not set current project");
        }
        this.ccDownloadSession = new CCDownloadSession(this, this.currentProject.projectKey);
        Metrics.sharedInstance().didShowProjectEditorView();
        if (this.newProject) {
            editNewProject();
        }
        this.convertDialog = getLayoutInflater().inflate(R.layout.view_convert_freeform, (ViewGroup) null);
        this.playPauseBtn = (ImageView) findViewById(R.id.clip_play_pause_btn);
        this.convertToFreeformButton = (ImageView) findViewById(R.id.convert_freeform);
        this.shareButton = (ImageView) findViewById(R.id.auto_share);
        this.sequenceButton = (ImageView) findViewById(R.id.automatic_sequence);
        this.loadingLayout = (LinearLayout) findViewById(R.id.loading_layout);
        this.loadingLayout.setVisibility(8);
        this.loadingSpinner = (ImageView) findViewById(R.id.loading_spinner);
        this.syncCloudButton = (ImageView) findViewById(R.id.dcx_spinner);
        this.loadingMessage = (TextView) findViewById(R.id.loading_msg);
        this.loadingMessage.setText(getString(R.string.creating_video));
        this.dcxSyncStatusButton = new DCXSyncStatusButton(this, this.projectKey);
        addOnClickListenerForSyncButton();
        setTabLayout();
        d.a(findViewById(R.id.auto_title));
        getPlayerSize();
        this.playerLayout = (RelativeLayout) findViewById(R.id.player_container);
        this.playerLayout.getLayoutParams().height = this.playerContainerPortraitSize[1];
        findViewById(R.id.player_edit_mode).getLayoutParams().height = this.playerContainerPortraitSize[1];
        this.timelineViewManager = new TimelineViewManager(this, this.currentProject);
        this.timelineViewManager.setListener(new TimelineViewManager.Listener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.1
            @Override // com.adobe.premiereclip.editor.automatic.TimelineViewManager.Listener
            public void onTimelineClosed() {
                TabLayout.Tab tabAt = AutomaticActivity.this.tabLayout.getTabAt(AutomaticActivity.this.previousTab);
                if (tabAt != null) {
                    tabAt.select();
                }
                AutomaticActivity.this.handleNewAudioOrTimelineInfo();
                if (!ProjectPosterTask.isRunning()) {
                    AutomaticActivity.this.mEditor.updateProjectPoster();
                }
                AutomaticActivity.this.showShareCoachmark();
            }
        });
        this.timeline = this.timelineViewManager.getTimeline();
        this.timeline.setClipDeleteListener(this);
        this.floatingActionsMenu = (FloatingActionsMenu) findViewById(R.id.add_clip_btn);
        this.floatingActionsMenu.setOnFloatingActionsMenuUpdateListener(new h() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.2
            @Override // com.getbase.floatingactionbutton.h
            public void onMenuExpanded() {
                Metrics.sharedInstance().didTapMediaPickerForSequenceWithDuration(AutomaticActivity.this.currentProject.getSequence().getSequenceDurationInSeconds(), AutomaticActivity.this.currentProject.getSequence().numAudioClips(), AutomaticActivity.this.currentProject.getSequence().numVideoClips());
                AutomaticActivity.this.findViewById(R.id.background_for_fab).setVisibility(0);
                AutomaticActivity.this.bottomSheetView.openView();
            }

            @Override // com.getbase.floatingactionbutton.h
            public void onMenuCollapsed() {
                AutomaticActivity.this.findViewById(R.id.background_for_fab).setVisibility(8);
                if (AutomaticActivity.this.bottomSheetView.isOpen()) {
                    AutomaticActivity.this.bottomSheetView.closeView();
                }
            }
        });
        this.peakGenerator = new AudioPeakGenerator();
        this.snapToBeatController = new SnapToBeatController(this, this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack());
        this.mEditor = new AutomaticEditor(this, this.timeline, projectWithKey, this.snapToBeatController);
        this.mEditor.setListener(this);
        this.sharingOptions = new SharingOptions(this, projectWithKey);
        this.sharingOptions.setListener(this);
        this.exportMode = false;
        this.playerViewSet = false;
        this.convertDialogOpen = false;
        this.isComposingTimeline = false;
        Metrics.sharedInstance().didFinishProjectOpenForMyProject(projectWithKey.projectKey);
        this.snapToBeatController.setListener(new SnapToBeatController.SnapToBeatListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.3
            @Override // com.adobe.premiereclip.editor.SnapToBeatController.SnapToBeatListener
            public void onReady() {
            }
        });
        generateSyncPoints();
        this.coachMarks = new CoachMarks(this, true);
        setCoachmarkListener();
        this.mPreferences = ClipPreferences.getInstance(this);
        this.pausedState = false;
        findViewById(R.id.touch_guard).setOnTouchListener(new View.OnTouchListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.mediaCaptureOptionsView = new MediaCaptureOptionsView(this);
        this.bottomSheetView = new BottomSheetView(this);
        this.bottomSheetView.background.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AutomaticActivity.this.bottomSheetView.closeView();
                AutomaticActivity.this.findViewById(R.id.background_for_fab).setVisibility(8);
                AutomaticActivity.this.floatingActionsMenu.a();
            }
        });
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        setVolumeControlStream(3);
        if (this.mEditor.init()) {
            addPlayerView();
            if (this.exportMode) {
                this.sharingOptions.startSharing();
            } else {
                this.mEditor.initPlayback();
                if (this.currentProject.getSequence().getClips().size() > 0) {
                    handleNewAudioOrTimelineInfo();
                    this.mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_MIX, 0.0f);
                    this.mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_SNAP_TO_BEAT, 1.0f);
                    this.newProject = false;
                }
            }
        } else {
            disableShareAndConvertButtons();
        }
        ThumbnailHelper.resetAllKeys();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.pausedState = false;
        Config.collectLifecycleData(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.pausedState = true;
        Config.pauseCollectingLifecycleData();
        this.mEditor.pause();
        updatePlayerOverlaysAndButtons();
        this.timeline.onPause();
        super.onPause();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        setVolumeControlStream(Integer.MIN_VALUE);
        this.playerViewSet = false;
        this.exportMode = false;
        this.sharingOptions.stop();
        ((AudioClip) this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0)).clearListener();
        this.mEditor.release();
        super.onStop();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.timeline.onDestroy();
        this.coachMarks.getHandler().removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public final void onBackPressed() {
        if (this.sharingOptions.isOpen()) {
            closeSharingOptions(null);
            return;
        }
        if (this.mediaCaptureOptionsView.isOpen()) {
            this.mediaCaptureOptionsView.closeView();
            return;
        }
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
            this.floatingActionsMenu.a();
            return;
        }
        if (this.timelineViewManager.isOpen()) {
            this.timelineViewManager.closeTimeline();
            return;
        }
        if (this.convertDialogOpen) {
            this.mWM.removeView(this.convertDialog);
            this.convertDialogOpen = false;
            return;
        }
        pauseSequence(null);
        DCXWriter.commitToDCX();
        Metrics.sharedInstance().didTapHomeInProjectEditor();
        this.coachMarks.onBackPressed();
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && this.mPreferences.getPreference(ClipPreferences.AUTO_FIRST_TIME, true)) {
            this.coachMarks.showCoachMarkWithOk(new CoachMarks.CoachmarkParam(getString(R.string.coachmark_auto_firsttime_title), getString(R.string.coachmark_auto_firsttime_message), ClipPreferences.AUTO_FIRST_TIME, this.tabLayout, true, null, null, null, true));
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) throws Throwable {
        super.onActivityResult(i, i2, intent);
        ThumbnailHelper.cancelAllUnexecutedTasks();
        switch (i) {
            case BACKGROUND_AUDIO_REQUEST /* 1071 */:
                if (intent != null) {
                    boolean booleanExtra = intent.getBooleanExtra("track_selected", false);
                    String stringExtra = intent.getStringExtra("track_location");
                    TextView textView = (TextView) this.viewPagerAdapter.getRegisteredFragment(this.viewPager.getCurrentItem()).getView().findViewById(R.id.auto_currenttrack_name);
                    if (booleanExtra) {
                        Metrics.sharedInstance().didReplaceSoundtrackFromLocation(stringExtra);
                        textView.setText(((AudioClip) this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0)).songName);
                        handleNewAudioOrTimelineInfo();
                    } else {
                        textView.setText(getString(R.string.automatic_trackname));
                    }
                }
                break;
            case 9001:
                this.ccDownloadSession.startDownload(this.currentProject.projectKey, i, i2, intent, this);
                break;
            case AddMediaManager.DEVICE_MEDIA_REQUEST /* 10006 */:
                if (i2 == -1) {
                    Metrics.sharedInstance().didImportMyDeviceAssetInMediaPicker();
                    ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(GalleryActivity.INTENT_EXTRA_LIST);
                    ArrayList<MediaInfo> arrayList = new ArrayList<>();
                    for (String str : stringArrayListExtra) {
                        MediaInfo mediaInfo = new MediaInfo();
                        mediaInfo.setLocalPath(str);
                        mediaInfo.setAssetUrl(str);
                        mediaInfo.setAssetDate(DCXUtils.getFormattedDate(new Date(new File(str).lastModified())));
                        arrayList.add(mediaInfo);
                    }
                    if (stringArrayListExtra != null && stringArrayListExtra.size() > 0) {
                        addMedias(arrayList);
                        break;
                    }
                }
                break;
            case AddMediaManager.CAMERA_CAPTURE_REQUEST /* 10011 */:
                if (i2 == -1) {
                    ArrayList<MediaInfo> mediaInfoArrayListFromCameraIntentResult = Utilities.getMediaInfoArrayListFromCameraIntentResult(this, intent);
                    if (mediaInfoArrayListFromCameraIntentResult != null) {
                        addMedias(mediaInfoArrayListFromCameraIntentResult);
                    }
                    break;
                } else if (i2 == 0) {
                }
                break;
            case SharingOptions.CCV_PUBLISH /* 20001 */:
                if (i2 == -1 && intent != null && intent.getBooleanExtra("publish_video_ccv", false)) {
                    this.exportMode = true;
                    String stringExtra2 = intent.getStringExtra("title");
                    boolean booleanExtra2 = intent.getBooleanExtra("unlisted", false);
                    this.sharingOptions.getSharingManager().setMode(3);
                    this.sharingOptions.getSharingManager().setCCVPublishData(stringExtra2, booleanExtra2);
                    break;
                }
                break;
            case SharingOptions.YOUTUBE_SETTINGS /* 20002 */:
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
                    break;
                }
                break;
            case SharingOptions.TWITTER_SETTINGS /* 20003 */:
                if (i2 == -1 && intent != null && intent.getBooleanExtra("twitter_upload", false)) {
                    this.exportMode = true;
                    String stringExtra8 = intent.getStringExtra("tweet");
                    String stringExtra9 = intent.getStringExtra("token");
                    String stringExtra10 = intent.getStringExtra("secret");
                    this.sharingOptions.getSharingManager().setMode(4);
                    this.sharingOptions.getSharingManager().setTwitterData(this.currentProject.getProjectExportName(), stringExtra9, stringExtra10, stringExtra8);
                    break;
                }
                break;
        }
    }

    private void setTabLayout() {
        this.viewPager = (ViewPager) findViewById(R.id.auto_pager);
        this.viewPagerAdapter = new ViewPagerAdapter(getSupportFragmentManager());
        this.viewPager.setAdapter(this.viewPagerAdapter);
        this.mWM = (WindowManager) getSystemService("window");
        this.mParams.x = 0;
        this.mParams.y = 0;
        this.mParams.format = -3;
        this.mParams.gravity = 51;
        this.mParams.width = -1;
        this.mParams.height = -1;
        this.mParams.type = 2;
        this.mParams.flags = 136;
        this.tabLayout = (TabLayout) findViewById(R.id.autoOption_tabs);
        this.tabLayout.setTabsFromPagerAdapter(this.viewPagerAdapter);
        this.tabLayout.setTabGravity(0);
        Utilities.setTab(getLayoutInflater(), this.tabLayout.getTabAt(0), R.drawable.auto_soundtrack_p);
        Utilities.setTab(getLayoutInflater(), this.tabLayout.getTabAt(1), R.drawable.auto_pace_p);
        this.previousTab = 0;
        this.tabLayout.setOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.6
            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                switch (tab.getPosition()) {
                    case 0:
                        tab.setIcon(R.drawable.auto_soundtrack_p);
                        break;
                    case 1:
                        tab.setIcon(R.drawable.auto_pace_p);
                        Fragment registeredFragment = AutomaticActivity.this.viewPagerAdapter.getRegisteredFragment(1);
                        if (registeredFragment instanceof PaceSettings) {
                            ((PaceSettings) registeredFragment).setSequenceTime(Long.valueOf(AutomaticActivity.this.currentProject.getSequence().getSequenceDurationUs()));
                        }
                        break;
                }
                AutomaticActivity.this.viewPager.setCurrentItem(tab.getPosition());
                AutomaticActivity.this.previousTab = tab.getPosition();
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // android.support.design.widget.TabLayout.OnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
            }
        });
        this.viewPager.clearOnPageChangeListeners();
        this.viewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(this.tabLayout));
    }

    private void addOnClickListenerForSyncButton() {
        this.syncCloudButton.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AutomaticActivity.this.dcxSyncStatusButton.handleMediaSyncIndicatorButtonTapped();
            }
        });
    }

    private void getPlayerSize() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i = point.x;
        this.playerContainerPortraitSize = new int[]{i, (i * 9) / 16};
        int i2 = point.x;
        this.playerContainerLandscapeSize = new int[]{(i2 * 16) / 9, i2};
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
            case 9002:
                this.LRAssetCountMoreThanMax = mediaRequestResult.getExtras().getBoolean("AssetCountMoreThanMax");
                this.ccDownloadSession.startDownloadFromLRApp(this.currentProject.projectKey, mediaRequestType, -1, (ArrayList) mediaRequestResult.getSerializableExtra("AdobeAssetCollection"), this);
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
                } else {
                    return;
                }
                break;
            case AddMediaManager.CAMERA_CAPTURE_REQUEST /* 10011 */:
                Log.i("NewProject", "Camera asset");
                ArrayList<MediaInfo> mediaInfoArrayListFromCameraIntentResult = Utilities.getMediaInfoArrayListFromCameraIntentResult(this, mediaRequestResult);
                if (mediaInfoArrayListFromCameraIntentResult != null) {
                    this.currentProject.addAssetsAtIndex(MediaManager.getInstance().addAssets(mediaInfoArrayListFromCameraIntentResult), 0);
                } else {
                    return;
                }
                break;
        }
        setClipAudioProperty(this.currentProject.getSequence().getClips());
        NewProjectData.reset();
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
        boolean zAddMedias = addMedias(arrayList);
        if (this.LRAssetCountMoreThanMax) {
            new MessageDialog(this, getString(R.string.lr_max_asset_ecxeed_alert), getString(R.string.lr_max_asset_ecxeed_message), true).show();
        }
        if (zAddMedias) {
            if (!this.pausedState) {
                this.timeline.setClips(this.currentProject.getSequence().getClips(), this.mEditor.getCurrentClipIndex());
            }
            handleNewAudioOrTimelineInfo();
            if (this.newProject) {
                this.mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_MIX, 0.0f);
                this.mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_SNAP_TO_BEAT, 1.0f);
                this.newProject = false;
            }
        }
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

    private void closeAndDeleteProject() {
        ProjectManager.getInstance().deleteProjectWithKey(this.currentProject.projectKey);
        DCXModelController.getInstance().deleteProjectWithKey(this.currentProject.projectKey);
        this.coachMarks.onBackPressed();
        super.onBackPressed();
        overridePendingTransition(R.anim.push_right_in, R.anim.push_right_out);
    }

    private boolean addMedias(ArrayList<MediaInfo> arrayList) {
        ArrayList<ClipAsset> arrayListAddAssets = MediaManager.getInstance().addAssets(arrayList);
        if (arrayListAddAssets.size() <= 0) {
            return false;
        }
        this.mEditor.addAssets(arrayListAddAssets);
        this.timelineViewManager.onAssetsAdded(this.mEditor.getCurrentClipIndex() + 1);
        this.mEditor.saveCurrentClipIndex(this.mEditor.getCurrentClipIndex() + 1);
        setClipAudioProperty(this.currentProject.getSequence().getClips());
        return true;
    }

    private void setClipAudioProperty(ArrayList<Clip> arrayList) {
        for (Clip clip : arrayList) {
            clip.setVolume(0.25f);
            clip.setSmartVolumeApplied(true);
            clip.setAudioFadeInApplied(false);
            clip.setAudioFadeOutApplied(false);
        }
        DCXWriter.updateClips(arrayList);
    }

    class ViewPagerAdapter extends FragmentPagerAdapter {
        SparseArray<Fragment> registeredFragments;

        public ViewPagerAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            this.registeredFragments = new SparseArray<>();
        }

        @Override // android.support.v4.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            switch (i) {
            }
            return new SoundSetting();
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
            this.registeredFragments.put(i, fragment);
            return fragment;
        }

        @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            this.registeredFragments.remove(i);
            super.destroyItem(viewGroup, i, obj);
        }

        public Fragment getRegisteredFragment(int i) {
            return this.registeredFragments.get(i);
        }

        public int getInstantiatedFragmentCount() {
            return this.registeredFragments.size();
        }
    }

    @SuppressLint({"ValidFragment"})
    public class SoundSetting extends Fragment {
        private TextView songStart;
        private TextView songTitle;
        private SoundWaveView soundWaveView;
        private RelativeLayout waveContainer;
        private ImageView waveSpinner;

        @Override // android.support.v4.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate = layoutInflater.inflate(R.layout.fragment_automatic_soundtack, viewGroup, false);
            ((Button) viewInflate.findViewById(R.id.replace_track)).setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.SoundSetting.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((AutomaticActivity) SoundSetting.this.getActivity()).openSongCategories(view);
                }
            });
            this.songTitle = (TextView) viewInflate.findViewById(R.id.auto_currenttrack_name);
            this.songStart = (TextView) viewInflate.findViewById(R.id.auto_tracktime);
            this.waveContainer = (RelativeLayout) viewInflate.findViewById(R.id.wave_bar);
            this.waveSpinner = (ImageView) viewInflate.findViewById(R.id.wave_spinner);
            d.a(viewInflate);
            return viewInflate;
        }

        @Override // android.support.v4.app.Fragment
        public void onResume() {
            super.onResume();
            updateTrackName();
        }

        @Override // android.support.v4.app.Fragment
        public void onPause() {
            ((AutomaticActivity) getActivity()).peakGenerator.cancelOngoingTask();
            if (this.soundWaveView != null) {
                this.soundWaveView.resetView();
                this.soundWaveView.setVisibility(8);
            }
            this.waveContainer.removeAllViews();
            super.onPause();
        }

        private void initWaveForm() {
            WaveDisplayParam waveDisplayParam = new WaveDisplayParam(0.0f, 0.0f, 200.0f, getResources().getDimension(R.dimen.soundwave_height));
            WaveDisplayParam waveDisplayParam2 = new WaveDisplayParam(0.0f, 0.0f, WaveUtils.getTotalWaveFormLength(((AutomaticActivity) getActivity()).currentProject), getResources().getDimension(R.dimen.soundwave_height));
            if (((AutomaticActivity) getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
                ((AutomaticActivity) getActivity()).peakGenerator.initPeakGenerator(((AutomaticActivity) getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0), waveDisplayParam, waveDisplayParam2, new Handler(), getFullPeakListener(), false);
            }
        }

        private AudioPeakGenerator.Listener getFullPeakListener() {
            return new AudioPeakGenerator.Listener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.SoundSetting.2
                @Override // com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.Listener
                public void onWaveformDraw(ArrayList<Bitmap> arrayList, Clip clip) {
                    SoundSetting.this.waveSpinner.clearAnimation();
                    SoundSetting.this.waveSpinner.setVisibility(4);
                    SoundSetting.this.waveContainer.removeAllViews();
                    if (((AutomaticActivity) SoundSetting.this.getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
                        int waveFormLength = WaveUtils.getWaveFormLength(((AutomaticActivity) SoundSetting.this.getActivity()).currentProject, ((AutomaticActivity) SoundSetting.this.getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0).getStartTimeUs());
                        SoundSetting.this.soundWaveView = new SoundWaveView(SoundSetting.this.getActivity(), SoundSetting.this.getActivity(), SoundSetting.this.getWaveScrollListener(), WaveUtils.getTotalWaveFormLength(((AutomaticActivity) SoundSetting.this.getActivity()).currentProject), waveFormLength, WaveUtils.getWaveFormLength(((AutomaticActivity) SoundSetting.this.getActivity()).currentProject, WaveUtils.END_DURATION_BLOCKED));
                        SoundSetting.this.soundWaveView.addBitmaps(arrayList);
                        SoundSetting.this.waveContainer.addView(SoundSetting.this.soundWaveView);
                    }
                    SoundSetting.this.setMusicStartTimeText();
                }

                @Override // com.adobe.premiereclip.editor.waveform.AudioPeakGenerator.Listener
                public void onWaveformClear() {
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SoundWaveView.WaveScrollListener getWaveScrollListener() {
            return new SoundWaveView.WaveScrollListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.SoundSetting.3
                @Override // com.adobe.premiereclip.editor.waveform.SoundWaveView.WaveScrollListener
                public void onScrolled(float f2) {
                    if (((AutomaticActivity) SoundSetting.this.getActivity()).currentProject.getSequence().getClips().size() >= 1) {
                        int iRound = Math.round(f2);
                        Log.d("WaveScroll", "pixels scrolled : " + iRound);
                        long durationOfWave = WaveUtils.getDurationOfWave(((AutomaticActivity) SoundSetting.this.getActivity()).currentProject, iRound);
                        AudioTrack audioTrack = ((AutomaticActivity) SoundSetting.this.getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack();
                        if (audioTrack.getNumClips() > 0) {
                            Clip clipAtIndex = audioTrack.getClipAtIndex(0);
                            if (clipAtIndex.getStartTimeUs() != durationOfWave) {
                                clipAtIndex.setStartTimeUs(durationOfWave);
                                Metrics.sharedInstance().didChangeSoundtrackInPoint(durationOfWave / 1000000.0f);
                                ((AutomaticActivity) SoundSetting.this.getActivity()).mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_START_CHANGE, 1.0f);
                                SoundSetting.this.setMusicStartTimeText();
                                ((AutomaticActivity) SoundSetting.this.getActivity()).handleNewAudioOrTimelineInfo();
                            }
                        }
                    }
                }

                @Override // com.adobe.premiereclip.editor.waveform.SoundWaveView.WaveScrollListener
                public void onScrolling(float f2) {
                    int iRound = Math.round(f2);
                    Log.d("WaveScroll", "pixels scrolled : " + iRound);
                    SoundSetting.this.setMusicStartTimeText(WaveUtils.getDurationOfWave(((AutomaticActivity) SoundSetting.this.getActivity()).currentProject, iRound) / 1000);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMusicStartTimeText() {
            AudioTrack audioTrack = ((AutomaticActivity) getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack();
            if (audioTrack.getNumClips() > 0) {
                setMusicStartTimeText(audioTrack.getClipAtIndex(0).getStartTimeUs() / 1000);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMusicStartTimeText(long j) {
            this.songStart.setText(getResources().getString(R.string.song_start_text) + " " + String.format("%d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j)))));
        }

        private void updateTrackName() {
            if (((AutomaticActivity) getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getNumClips() > 0) {
                this.waveSpinner.setVisibility(0);
                this.waveSpinner.startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.rotate_indefinitely));
                this.songTitle.setText(((AudioClip) ((AutomaticActivity) getActivity()).currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0)).songName);
                setMusicStartTimeText();
                initWaveForm();
            }
        }
    }

    @SuppressLint({"ValidFragment"})
    public class PaceSettings extends Fragment {
        private TextView duration;
        private SeekBar paceBar;

        @Override // android.support.v4.app.Fragment
        public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View viewInflate = layoutInflater.inflate(R.layout.fragment_automatic_pace, viewGroup, false);
            this.paceBar = (SeekBar) viewInflate.findViewById(R.id.paceSeek);
            this.duration = (TextView) viewInflate.findViewById(R.id.sequence_time);
            Sequence sequence = ((AutomaticActivity) getActivity()).currentProject.getSequence();
            setSequenceTime(Long.valueOf(sequence.getSequenceDurationUs()));
            Utilities.setSeekBarTheme(PremiereClipApplication.getContext(), this.paceBar);
            this.paceBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.PaceSettings.1
                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStartTrackingTouch(SeekBar seekBar) {
                }

                @Override // android.widget.SeekBar.OnSeekBarChangeListener
                public void onStopTrackingTouch(SeekBar seekBar) {
                    float progress = seekBar.getProgress() / 5.0f;
                    Metrics.sharedInstance().didChangeAutoPaceSlider(progress);
                    ((AutomaticActivity) PaceSettings.this.getActivity()).mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_SYNC_PACE, progress);
                    Log.d(AutomaticActivity.TAG, "paceBar.onStopTrackingTouch pace = " + progress);
                    ((AutomaticActivity) PaceSettings.this.getActivity()).handleNewAudioOrTimelineInfo();
                    PaceSettings.this.setSequenceTime(Long.valueOf(((AutomaticActivity) PaceSettings.this.getActivity()).currentProject.getSequence().getSequenceDurationUs()));
                }
            });
            this.paceBar.setProgress((int) (sequence.getAudioSyncPace() * 5.0f));
            if (((AutomaticActivity) getActivity()).isComposingTimeline) {
                disablePacebar();
            }
            d.a(viewInflate);
            return viewInflate;
        }

        public void setSequenceTime(Long l) {
            this.duration.setText("( " + Utilities.getTimeString(l.longValue(), false) + " )");
        }

        public void disablePacebar() {
            if (this.paceBar != null) {
                this.paceBar.setEnabled(false);
            }
        }

        public void enablePacebar() {
            if (this.paceBar != null) {
                this.paceBar.setEnabled(true);
            }
        }
    }

    public void openSequenceView(View view) {
        findViewById(R.id.touch_guard).setVisibility(0);
        this.mEditor.pause();
        updatePlayerOverlaysAndButtons();
        disableShareAndConvertButtons();
        this.timelineViewManager.openTimeline();
        if (this.currentProject.getSequence().getClips().size() > 0) {
            this.coachMarks.showCoachMarkWithOk(new CoachMarks.CoachmarkParam(getString(R.string.coachmark_auto_sequence_title), getString(R.string.coachmark_auto_sequence_message), ClipPreferences.AUTO_SEQUENCE, this.timeline.getRecyclerView().getChildAt(0), true, null, null, null, true));
        }
    }

    public void convertToFreeForm(View view) {
        pauseSequence(null);
        d.a(this.convertDialog);
        TextView textView = (TextView) this.convertDialog.findViewById(R.id.convert_cancel);
        d.a(textView, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
        TextView textView2 = (TextView) this.convertDialog.findViewById(R.id.convert_confirm);
        d.a(textView2, FontUtils.getInstance().getAdobeCleanRegularTypefaceCollection());
        this.convertDialogOpen = true;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AutomaticActivity.this.mWM.removeView(AutomaticActivity.this.convertDialog);
                AutomaticActivity.this.convertDialogOpen = false;
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AutomaticActivity.this.mWM.removeView(AutomaticActivity.this.convertDialog);
                AutomaticActivity.this.mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_MIX, 0.0f);
                AutomaticActivity.this.mEditor.setSequenceAudioOptions(Editor.SequenceAudioOptions.AUDIO_SNAP_TO_BEAT, 1.0f);
                AutomaticActivity.this.mEditor.release();
                DCXModelController.getInstance().updateProjectEditMode(AutomaticActivity.this.projectKey, DCXProjectKeys.kDCXKey_Project_projectModeFreeform);
                DCXWriter.addTransitionTimesForSyncPoints(AutomaticActivity.this.currentProject.getSequence());
                AutomaticActivity.this.currentProject.setEditMode(2);
                ProjectManager.getInstance().updateProject(AutomaticActivity.this.currentProject);
                Intent intent = new Intent(AutomaticActivity.this, (Class<?>) EditorActivity.class);
                intent.putExtra("project_key", AutomaticActivity.this.projectKey);
                intent.putExtra("newProject", false);
                intent.putExtra("converted", true);
                Metrics.sharedInstance().setCurrentProjectType(0);
                Metrics.sharedInstance().didConvertProjectToFreeform();
                AutomaticActivity.this.startActivity(intent);
                AutomaticActivity.this.finish();
                AutomaticActivity.this.overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            }
        });
        this.mWM.addView(this.convertDialog, this.mParams);
    }

    public void closeAutomode(View view) {
        onBackPressed();
    }

    public void touchPlayer(View view) {
        if (this.playerViewSet && !this.isComposingTimeline && this.isPlayerReady) {
            playPauseSequence(null);
        }
    }

    public void playPauseSequence(View view) {
        SequencePlayer.PLAYER_STATE playerState = this.mEditor.getPlayerState();
        Log.e(TAG, playerState.toString());
        if (playerState == SequencePlayer.PLAYER_STATE.PAUSED) {
            if (this.currentProject.getSequence().getClips().size() > 0) {
                this.mEditor.playSequence();
            }
            this.playPauseBtn.setVisibility(4);
            getWindow().addFlags(128);
            return;
        }
        if (playerState == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE) {
            if (this.currentProject.getSequence().getClips().size() > 0) {
                this.mEditor.pause();
            }
            this.playPauseBtn.setVisibility(0);
            getWindow().clearFlags(128);
            return;
        }
        if (playerState == SequencePlayer.PLAYER_STATE.LOADING) {
            Log.d(TAG, "Loading");
        } else {
            Log.e(TAG, "Unexpected value of player state");
        }
    }

    public void pauseSequence(View view) {
        if (this.currentProject.getSequence().getClips().size() > 0) {
            this.mEditor.pause();
        }
        updatePlayerOverlaysAndButtons();
        getWindow().clearFlags(128);
    }

    public void closeAndGoBack(View view) {
    }

    public void openSongCategories(View view) {
        if (MarshmallowUtils.getPermission(42, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            openSongCategoriesView();
        }
    }

    public void openSongCategoriesView() {
        Intent intent = new Intent(this, (Class<?>) TrackCategoryActivity.class);
        intent.putExtra("project_key", this.currentProject.projectKey);
        startActivityForResult(intent, BACKGROUND_AUDIO_REQUEST);
        overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
    }

    public void shareProject(View view) {
        Metrics.sharedInstance().setCurrentProjectSignatureWithVideoClips(this.currentProject.getSequence().numVideoClips(), this.currentProject.getSequence().numStillImageClips(), this.currentProject.getSequence().numTitleClips(), this.currentProject.getSequence().numStorycardClips(), this.currentProject.getSequence().numAudioClips(), this.currentProject.getSequence().getLook().getLookName());
        Metrics.sharedInstance().didTapExport();
        sharingOptionsOpened();
    }

    private void sharingOptionsOpened() {
        this.mEditor.pause();
        updatePlayerOverlaysAndButtons();
        this.sharingOptions.openView();
    }

    public void sharingOptionClicked(View view) {
        this.sharingOptions.onOptionSelected(view);
    }

    private void sharingOptionsClosed() {
        this.mEditor.pause();
        updatePlayerOverlaysAndButtons();
        this.sharingOptions.closeView();
    }

    public void closeSharingOptions(View view) {
        sharingOptionsClosed();
    }

    @Override // com.adobe.premiereclip.editor.Timeline.ClipDeleteListener
    public void onClipDelete(int i) {
        this.timelineViewManager.onClickDelete(this);
    }

    public void closeFAB(View view) {
        this.floatingActionsMenu.a();
        if (this.bottomSheetView.isOpen()) {
            this.bottomSheetView.closeView();
        }
    }

    public void addMediaFromDevice(View view) {
        Metrics.sharedInstance().didTapMediaPickerOnMyDevice();
        if (MarshmallowUtils.getPermission(14, "android.permission.READ_EXTERNAL_STORAGE", this)) {
            Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
            intent.putExtra("type", GalleryActivity.SOURCE_MOMENTS);
            startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
            overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
            this.floatingActionsMenu.a();
            if (this.bottomSheetView.isOpen()) {
                this.bottomSheetView.closeView();
            }
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

    public void addMediaFromCC(View view) {
        Metrics.sharedInstance().didAttemptImportOfCreativeCloudFileAssetInMediaPicker();
        CreativeCloudSource.getInstance().openCreativeCloudImagePicker(this, EnumSet.of(AdobeAssetDataSourceType.AdobeAssetDataSourceFiles));
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

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 11:
                if (iArr.length > 0 && iArr[0] == 0) {
                    CameraCaptureManager.getInstance().showMediaCaptureOptions(this, this.mediaCaptureOptionsView, AddMediaManager.CAMERA_CAPTURE_REQUEST);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.CAMERA")) {
                    new MessageDialog(this, getString(R.string.camera_access_alert), getString(R.string.camera_access_settings_path), true).show();
                }
                break;
            case 14:
                if (iArr.length > 0 && iArr[0] == 0) {
                    Intent intent = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent.putExtra("type", GalleryActivity.SOURCE_MOMENTS);
                    startActivityForResult(intent, AddMediaManager.DEVICE_MEDIA_REQUEST);
                    overridePendingTransition(R.anim.push_left_in, R.anim.push_left_out);
                    this.floatingActionsMenu.a();
                    if (this.bottomSheetView.isOpen()) {
                        this.bottomSheetView.closeView();
                    }
                } else {
                    getReadExternalStorageDialog();
                }
                break;
            case 42:
                if (iArr.length > 0 && iArr[0] == 0) {
                    openSongCategoriesView();
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
            case 71:
                int length = iArr.length;
                if ((length == 1 && iArr[0] == 0) || (length == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent2 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent2.putExtra("type", GalleryActivity.SOURCE_GOOGLE_PHOTOS);
                    startActivityForResult(intent2, AddMediaManager.DEVICE_MEDIA_REQUEST);
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
                    Intent intent3 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent3.putExtra("type", GalleryActivity.SOURCE_GOOGLE_DRIVE);
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
            case 73:
                int length3 = iArr.length;
                if ((length3 == 1 && iArr[0] == 0) || (length3 == 2 && iArr[0] == 0 && iArr[1] == 0)) {
                    Intent intent4 = new Intent(this, (Class<?>) GalleryActivity.class);
                    intent4.putExtra("type", GalleryActivity.SOURCE_DROPBOX);
                    startActivityForResult(intent4, AddMediaManager.DEVICE_MEDIA_REQUEST);
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

    private void getReadExternalStorageDialog() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.READ_EXTERNAL_STORAGE")) {
            new MessageDialog(this, getString(R.string.external_storage_access_alert), getString(R.string.external_storage_access_settings_path), true).show();
        }
    }

    private void getWriteExternalStorageDialog() {
        if (!ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            new MessageDialog(this, getString(R.string.external_storage_access_alert), getString(R.string.external_storage_access_settings_path), true).show();
        }
    }

    private void addPlayerView() {
        if (!this.playerViewSet) {
            this.playerLayout.removeAllViews();
            this.playerLayout.addView(this.mEditor.getView());
            this.playerViewSet = true;
        }
        findViewById(R.id.player_edit_mode).setVisibility(0);
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void triggerRemovePlayerView() {
        if (this.playerViewSet) {
            this.playerLayout.removeAllViews();
            this.playerViewSet = false;
            updatePlayerOverlaysAndButtons();
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void triggerAddPlayerView() {
        addPlayerView();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onPlayerPaused() {
        updatePlayerOverlaysAndButtons();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onPlayerTimeUpdate(long j) {
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
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onLoadingStarted() {
        this.isPlayerReady = false;
        updatePlayerOverlaysAndButtons();
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onLoadingCompleted(boolean z) {
        if (!this.isPlayerReady) {
            this.isPlayerReady = true;
            updatePlayerOverlaysAndButtons();
        }
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onRangeSeekbarThumbMoveStarted() {
    }

    @Override // com.adobe.premiereclip.editor.Editor.Listener
    public void onRangeSeekbarThumbMoveEnded() {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void composeTimelineFromImpactData(float[] fArr) {
        Log.e("Impact data", fArr.length + "");
        Sequence sequence = this.currentProject.getSequence();
        AudioClip audioClip = (AudioClip) this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0);
        float audioSyncPace = sequence.getAudioSyncPace();
        float startTimeUs = audioClip.getStartTimeUs() / 1000000.0f;
        if (this.mSyncData == null) {
            this.mSyncData = new SyncData(fArr, audioSyncPace, startTimeUs);
        } else {
            this.mSyncData.reset(fArr, audioSyncPace, startTimeUs);
        }
        this.currentProject.composeAutomaticTimeline(audioSyncPace, this.mSyncData, this.mUIHandler);
        Fragment registeredFragment = this.viewPagerAdapter.getRegisteredFragment(1);
        if (registeredFragment instanceof PaceSettings) {
            ((PaceSettings) registeredFragment).setSequenceTime(Long.valueOf(this.currentProject.getSequence().getSequenceDurationUs()));
        }
        this.isComposingTimeline = false;
        this.mEditor.resetGroups();
        this.mEditor.playerReInit(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleNewAudioOrTimelineInfo() {
        AudioClip audioClip = (AudioClip) this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0);
        if (this.mImpactDataHandler == null) {
            this.mImpactDataHandler = new ImpactDataHandler();
        }
        if (audioClip.isImpactDataSet()) {
            this.isPlayerReady = false;
            updatePlayerOverlaysAndButtons();
            float[] impactData = audioClip.getImpactData(this, this.mImpactDataHandler);
            if (impactData != null) {
                composeTimelineFromImpactData(impactData);
                return;
            }
            return;
        }
        this.isComposingTimeline = true;
        updatePlayerOverlaysAndButtons();
        audioClip.getImpactData(this, this.mImpactDataHandler);
    }

    class ImpactDataHandler implements AudioClip.ImpactDataListener, Runnable {
        private ImpactDataHandler() {
        }

        @Override // com.adobe.premiereclip.project.sequence.AudioClip.ImpactDataListener
        public void onImpactDataAvailable(AudioClip audioClip, float[] fArr) {
            AutomaticActivity.this.runOnUiThread(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            AudioClip audioClip = (AudioClip) AutomaticActivity.this.currentProject.getSequence().getAudioTrackGroup().getAudioTrack().getClipAtIndex(0);
            if (audioClip.isImpactDataSet()) {
                float[] impactData = audioClip.getImpactData(AutomaticActivity.this, AutomaticActivity.this.mImpactDataHandler);
                if (impactData != null) {
                    AutomaticActivity.this.composeTimelineFromImpactData(impactData);
                    return;
                }
                return;
            }
            audioClip.getImpactData(AutomaticActivity.this, AutomaticActivity.this.mImpactDataHandler);
            AutomaticActivity.this.isComposingTimeline = false;
            AutomaticActivity.this.updatePlayerOverlaysAndButtons();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayerOverlaysAndButtons() {
        if (this.currentProject.getSequence().getClips().size() == 0 || this.timelineViewManager.isOpen()) {
            disableShareAndConvertButtons();
        } else if (this.isComposingTimeline || !this.isPlayerReady) {
            this.loadingLayout.setVisibility(0);
            this.playPauseBtn.setVisibility(8);
            this.loadingSpinner.startAnimation(AnimationUtils.loadAnimation(this, R.anim.rotate_indefinitely));
            disableShareAndConvertButtons();
            if (this.isComposingTimeline) {
                this.loadingMessage.setVisibility(0);
            } else {
                this.loadingMessage.setVisibility(8);
            }
        } else {
            this.loadingLayout.setVisibility(8);
            this.loadingSpinner.clearAnimation();
            enableShareAndConvertButtons();
            if (this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PAUSED) {
                this.playPauseBtn.setVisibility(0);
            } else {
                this.playPauseBtn.setVisibility(8);
            }
        }
        if (this.viewPagerAdapter.getInstantiatedFragmentCount() > 0) {
            if (this.isComposingTimeline) {
                ((PaceSettings) this.viewPagerAdapter.getRegisteredFragment(1)).disablePacebar();
            } else {
                ((PaceSettings) this.viewPagerAdapter.getRegisteredFragment(1)).enablePacebar();
            }
        }
    }

    private void generateSyncPoints() {
        this.snapToBeatController.enable();
    }

    private void enableShareAndConvertButtons() {
        this.shareButton.setEnabled(true);
        this.shareButton.setImageResource(R.drawable.proj_share_white);
        this.convertToFreeformButton.setEnabled(true);
        this.convertToFreeformButton.setImageResource(R.drawable.freeform_lg_white);
        enableSequenceButton();
    }

    private void disableShareAndConvertButtons() {
        this.shareButton.setEnabled(false);
        this.shareButton.setImageResource(R.drawable.proj_share_grey);
        this.convertToFreeformButton.setEnabled(false);
        this.convertToFreeformButton.setImageResource(R.drawable.freeform_lg_disabled);
        if (this.currentProject.getSequence().getClips().isEmpty()) {
            enableSequenceButton();
        } else {
            disableSequenceButton();
        }
    }

    private void enableSequenceButton() {
        this.sequenceButton.setEnabled(true);
        this.sequenceButton.setImageResource(R.drawable.auto_sequence_b);
    }

    private void disableSequenceButton() {
        this.sequenceButton.setEnabled(false);
        this.sequenceButton.setImageResource(R.drawable.auto_sequence_disabled);
    }

    private void setCoachmarkListener() {
        this.coachMarks.setListener(new CoachMarks.Listener() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.10
            @Override // com.adobe.premiereclip.coachmarks.CoachMarks.Listener
            public boolean isViewAvailable() {
                return (AutomaticActivity.this.mEditor.getPlayerState() == SequencePlayer.PLAYER_STATE.PLAYING_SEQUENCE || AutomaticActivity.this.convertDialogOpen || AutomaticActivity.this.exportMode || PrepareVideoDialog.isOpen() || AutomaticActivity.this.sharingOptions.isOpen() || AutomaticActivity.this.floatingActionsMenu.d() || AutomaticActivity.this.mediaCaptureOptionsView.isOpen()) ? false : true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showShareCoachmark() {
        this.coachMarks.showCoachMarkWithOk(new CoachMarks.CoachmarkParam(getString(R.string.coachmark_auto_share_title), getString(R.string.coachmark_auto_share_message), ClipPreferences.AUTO_SHARE, this.shareButton, true, null, null, null, true));
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void showConnectionFailureIcon() {
        if (this != null) {
            runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.11
                @Override // java.lang.Runnable
                public void run() {
                    AutomaticActivity.this.syncCloudButton.setVisibility(0);
                    AutomaticActivity.this.syncCloudButton.clearAnimation();
                    AutomaticActivity.this.syncCloudButton.setImageResource(R.drawable.gra_errorsign_2x);
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void startAnimation() {
        if (this != null) {
            runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.12
                @Override // java.lang.Runnable
                public void run() {
                    AutomaticActivity.this.syncCloudButton.setVisibility(0);
                    AutomaticActivity.this.syncCloudButton.setImageResource(R.drawable.btn_sync_white);
                    AutomaticActivity.this.syncCloudButton.startAnimation(AnimationUtils.loadAnimation(AutomaticActivity.this, R.anim.rotate_indefinitely));
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void stopAnimation() {
        if (this != null) {
            runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.13
                @Override // java.lang.Runnable
                public void run() {
                    AutomaticActivity.this.syncCloudButton.clearAnimation();
                    AutomaticActivity.this.syncCloudButton.setVisibility(8);
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
        runOnUiThread(new Runnable() { // from class: com.adobe.premiereclip.editor.automatic.AutomaticActivity.14
            @Override // java.lang.Runnable
            public void run() {
                AutomaticActivity.this.sharingOptions.mayBeExportPPro();
            }
        });
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void showProjectSyncingText() {
    }

    @Override // com.adobe.premiereclip.dcx.DCXSyncStatusButton.Listener
    public void removeProjectSyncingText() {
    }
}
