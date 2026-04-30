.class public Lcom/adobe/premiereclip/editor/EditorActivity;
.super Landroid/app/Activity;
.source "EditorActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;
.implements Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;
.implements Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;
.implements Lcom/adobe/premiereclip/editor/Editor$Listener;
.implements Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;
.implements Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;


# static fields
.field private static final BACKGROUND_AUDIO_REQUEST:I = 0x186e7

.field private static final BACKGROUND_COLOR_PICKER_REQUEST:I = 0x271a

.field private static final NONE:I = 0x0

.field private static final ONE:I = 0x1

.field private static final SWIPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EditorActivity"

.field private static final TEXT_COLOR_PICKER_REQUEST:I = 0x2719

.field private static final THRESHOLD:I = 0xa

.field private static final VIDEO_SETTING_REQUEST:I = 0x2717

.field private static final previewSeekBarMax:I = 0xf4240


# instance fields
.field private final MIN_CLIP_DURATION_US:D

.field private final MY_PERMISSIONS_REQUEST_CAMERA:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS:I

.field private final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_AUDIO:I

.field private final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_GALLERY:I

.field private final MY_PERMISSIONS_REQUEST_STORYCARD_CAMERA:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_TWITTER:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE:I

.field audioOptionsView:Landroid/view/View;

.field private audioPeakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

.field private backgroundColorView:Landroid/view/View;

.field private bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

.field private ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

.field private clipIndexToBeDeleted:I

.field private clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

.field private coachmarkHandler:Landroid/os/Handler;

.field private coachmarkRunnable:Ljava/lang/Runnable;

.field private countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

.field private currentProject:Lcom/adobe/premiereclip/project/Project;

.field private currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

.field private dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

.field private exportMode:Z

.field exposureOptionsView:Landroid/view/View;

.field private exposureSeekBar:Landroid/widget/SeekBar;

.field private floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private fullScreenMode:Z

.field private highlightsSeekBar:Landroid/widget/SeekBar;

.field private initialLookId:Ljava/lang/String;

.field private isConvertedFromAutomatic:Z

.field private loadingBeats:Z

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private loadingPlayer:Z

.field private mEditor:Lcom/adobe/premiereclip/editor/Editor;

.field private mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

.field private mTrimmingInProgress:Z

.field private mTwoFingerInProgress:Z

.field private mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field private mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

.field private mode:I

.field moreOptionsView:Landroid/view/View;

.field private musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

.field private network_reachability_observer:Ljava/util/Observer;

.field private newProject:Z

.field private pausedState:Z

.field private playPauseBtn:Landroid/widget/ImageView;

.field private playerBar:Landroid/widget/FrameLayout;

.field private playerContainerLandscapeSize:[I

.field private playerContainerPortraitSize:[I

.field private playerLayout:Landroid/widget/RelativeLayout;

.field private playerViewSet:Z

.field private prevSeekOffset:J

.field private previewDurationTextView:Landroid/widget/TextView;

.field private previewFullScreenButton:Landroid/widget/ImageView;

.field private previewPlayPauseBtn:Landroid/widget/ImageView;

.field private previewSeekBar:Landroid/widget/SeekBar;

.field private previewSeekBarTouched:Z

.field private previewShareButton:Landroid/widget/ImageView;

.field private previewTimeTextView:Landroid/widget/TextView;

.field private scrubTimeMs:J

.field private shadowsSeekBar:Landroid/widget/SeekBar;

.field private shareButton:Landroid/widget/ImageView;

.field private sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

.field private snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

.field private speedSeekBar:Landroid/widget/SeekBar;

.field private speedTextView:Landroid/widget/TextView;

.field private startX:F

.field private stopX:F

.field private storyCardMode:Z

.field private storyCardReplaced:Z

.field private storyCardText:Landroid/widget/TextView;

.field private syncCloudButton:Landroid/widget/ImageView;

.field private textColorView:Landroid/view/View;

.field textOptionsView:Landroid/view/View;

.field private timeline:Lcom/adobe/premiereclip/editor/Timeline;

.field private timelineView:Landroid/widget/RelativeLayout;

.field private titleTextView:Landroid/widget/TextView;

.field private trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

.field private trimBarBackgroundBitmap:Landroid/graphics/Bitmap;

.field private twoFingerSwipeScale:F

.field private volumeSeekBar:Landroid/widget/SeekBar;

.field private volumeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkHandler:Landroid/os/Handler;

    .line 191
    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkRunnable:Ljava/lang/Runnable;

    .line 202
    iput v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    .line 212
    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_CAMERA:I

    .line 213
    const/16 v0, 0xc

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_STORYCARD_CAMERA:I

    .line 214
    const/16 v0, 0x29

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_GALLERY:I

    .line 215
    const/16 v0, 0x2a

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_AUDIO:I

    .line 216
    const/16 v0, 0x33

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH:I

    .line 217
    const/16 v0, 0x34

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY:I

    .line 218
    const/16 v0, 0x35

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC:I

    .line 219
    const/16 v0, 0x36

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE:I

    .line 221
    const/16 v0, 0x37

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_TWITTER:I

    .line 222
    const/16 v0, 0x47

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS:I

    .line 223
    const/16 v0, 0x48

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE:I

    .line 224
    const/16 v0, 0x49

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX:I

    .line 226
    const-wide v0, 0x4104585555555470L    # 166666.66666666

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->MIN_CLIP_DURATION_US:D

    .line 1121
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTrimmingInProgress:Z

    .line 1122
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTwoFingerInProgress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/Project;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/BottomSheetView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/coachmarks/CoachMarks;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeMusicView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/premiereclip/editor/EditorActivity;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBarTouched:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/adobe/premiereclip/editor/EditorActivity;Z)Z
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBarTouched:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/editor/EditorActivity;)J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->scrubTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/adobe/premiereclip/editor/EditorActivity;J)J
    .locals 1

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->scrubTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/editor/EditorActivity;)J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->prevSeekOffset:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/adobe/premiereclip/editor/EditorActivity;J)J
    .locals 1

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->prevSeekOffset:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/RangeSeekBar;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBarBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeFullScreen()V

    return-void
.end method

.method static synthetic access$1900(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptionsOpened()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/ClipOptionsView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openFullScreen()V

    return-void
.end method

.method static synthetic access$2100(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->enableAudioControls()V

    return-void
.end method

.method static synthetic access$2400(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->disableAudioControls()V

    return-void
.end method

.method static synthetic access$2500(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeClipOptions()V

    return-void
.end method

.method static synthetic access$2600(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/EditorActivity;->showStoryCardView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Timeline;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/project/sequence/ImageClip;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateTitleImage()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/adobe/premiereclip/editor/EditorActivity;Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/adobe/premiereclip/editor/EditorActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->syncCloudButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/sharing/SharingOptions;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/adobe/premiereclip/editor/EditorActivity;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/adobe/premiereclip/editor/EditorActivity;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addOnClickListenerForSyncButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/SnapToBeatController;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/editor/Editor;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/editor/EditorActivity;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/EditorActivity;->showSyncPointsForClip(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/editor/EditorActivity;Z)Z
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/editor/EditorActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateLoadingSpinner()V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/editor/EditorActivity;)Lcom/adobe/premiereclip/ClipPreferences;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    return-object v0
.end method

.method private addMedias(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/MediaInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1427
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/Editor;->addAssets(Ljava/util/ArrayList;)V

    .line 1430
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/Editor;->saveCurrentClipIndex(I)V

    .line 1431
    const/4 v0, 0x1

    .line 1433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addOnClickListenerForSyncButton()V
    .locals 2

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->syncCloudButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$34;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$34;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2717
    return-void
.end method

.method private addPlayerView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1188
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    if-nez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1190
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1191
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    .line 1194
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->enableShareAndPreviewButtons()V

    .line 1195
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->setTrimBar(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V

    .line 1196
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPreviewSeekBar(Landroid/widget/SeekBar;)V

    .line 1198
    :cond_0
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    return-void
.end method

.method private closeAndDeleteProject()V
    .locals 2

    .prologue
    .line 948
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->deleteProjectWithKey(Ljava/lang/String;)V

    .line 949
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->deleteProjectWithKey(Ljava/lang/String;)V

    .line 950
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 951
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 952
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 953
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline;->getCoachmarkObject()Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 954
    return-void
.end method

.method private closeClipOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2025
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timelineView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2028
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 2029
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->maybeUpdatePoster()V

    .line 2030
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 2032
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->closeClipOption()V

    .line 2033
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 2035
    return-void
.end method

.method private closeFullScreen()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1523
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v0, :cond_0

    .line 1555
    :goto_0
    return-void

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1530
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/editor/EditorActivity;->setRequestedOrientation(I)V

    .line 1531
    const v0, 0x7f120106

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 1534
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1535
    const v0, 0x7f120124

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    const v0, 0x7f120110

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    const v0, 0x7f120112

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1539
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    aget v2, v2, v4

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1540
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1542
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1543
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1545
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPlayerControlsEditMode()V

    .line 1547
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1548
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1549
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1551
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1552
    iput-boolean v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    .line 1553
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1554
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    goto/16 :goto_0
.end method

.method private closeMusicView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 966
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->hideView()V

    .line 967
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 969
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->seekToClipSaveState()V

    .line 970
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 971
    const v0, 0x7f12011e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 972
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->initSnapToBeatUI()V

    .line 973
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setWaveformAndBeats()V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createTrimBarBackgroundBitmap()V
    .locals 6

    .prologue
    const/16 v4, 0xb4

    const/16 v3, 0xff

    .line 1303
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1304
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getBarWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getBarHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBarBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 1305
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBarBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1306
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1308
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1309
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1310
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getStartX()F

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getStartY()F

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getEndX()F

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getEndY()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1311
    return-void
.end method

.method private disableAudioControls()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2119
    const v0, 0x7f12058c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2120
    const v1, 0x7f120590

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    .line 2121
    const v2, 0x7f120593

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    .line 2122
    const v3, 0x7f120588

    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 2124
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 2125
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 2126
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 2127
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2128
    return-void
.end method

.method private disableShareAndPreviewButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewFullScreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1116
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewFullScreenButton:Landroid/widget/ImageView;

    const v1, 0x7f0202c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1117
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1118
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1119
    return-void
.end method

.method private editNewProject()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 900
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "Editing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/NewProjectData;->getMediaRequestType()I

    move-result v2

    .line 902
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/NewProjectData;->getMediaRequestResult()Landroid/content/Intent;

    move-result-object v4

    .line 905
    sparse-switch v2, :sswitch_data_0

    .line 944
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->reset()V

    .line 945
    :cond_0
    return-void

    .line 907
    :sswitch_0
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "Device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string/jumbo v0, "Gallery_selected_paths"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_2

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 912
    new-instance v3, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v3}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 913
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 915
    new-instance v4, Ljava/util/Date;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 919
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v0, v8}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    .line 922
    :cond_2
    iput-boolean v8, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->newProject:Z

    goto :goto_0

    .line 925
    :sswitch_1
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "CC_ASSET"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    const/4 v3, -0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->startDownload(Ljava/lang/String;IILandroid/content/Intent;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V

    goto :goto_0

    .line 930
    :sswitch_2
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "Camera asset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {p0, v4}, Lcom/adobe/premiereclip/util/Utilities;->getMediaInfoArrayListFromCameraIntentResult(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_0

    .line 935
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v0, v8}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    .line 937
    iput-boolean v8, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->newProject:Z

    goto/16 :goto_0

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0x2329 -> :sswitch_1
        0x2716 -> :sswitch_0
        0x271b -> :sswitch_2
    .end sparse-switch
.end method

.method private enableAudioControls()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2131
    const v0, 0x7f12058c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2132
    const v1, 0x7f120590

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    .line 2133
    const v2, 0x7f120593

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    .line 2134
    const v3, 0x7f120588

    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 2136
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 2137
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 2138
    invoke-virtual {v2, v4}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 2139
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2140
    return-void
.end method

.method private enableShareAndPreviewButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1108
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewFullScreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1109
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewFullScreenButton:Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1111
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f0202cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1112
    return-void
.end method

.method private finishTwoFingerSwipe(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTwoFingerInProgress:Z

    .line 1683
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1684
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->enableInAndOutTrimHandle()V

    .line 1685
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->stopX:F

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    .line 1686
    if-eqz p1, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->finishTwoFingerSwipe()V

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showSyncPointsForClip(I)V

    .line 1692
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    .line 1693
    const v0, 0x7f120115

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    const v0, 0x7f120125

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    return-void
.end method

.method private getBackgroundMusicListener()Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;
    .locals 1

    .prologue
    .line 1025
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$12;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$12;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    return-object v0
.end method

.method private getCameraAccessDialog()V
    .locals 4

    .prologue
    .line 2638
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2639
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a038f

    .line 2640
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0390

    .line 2641
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2643
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2645
    :cond_0
    return-void
.end method

.method private getMinNormalizedTrimHandleDistanceForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)D
    .locals 4

    .prologue
    .line 3018
    if-eqz p1, :cond_0

    .line 3019
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    .line 3020
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v0, v0

    div-double v0, v2, v0

    const-wide v2, 0x4104585555555470L    # 166666.66666666

    mul-double/2addr v0, v2

    .line 3023
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x3f589374bc6a7efaL    # 0.0015

    goto :goto_0
.end method

.method private getReadExternalStorageDialog()V
    .locals 4

    .prologue
    .line 2658
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2659
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0408

    .line 2660
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0409

    .line 2661
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2663
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2665
    :cond_0
    return-void
.end method

.method private getSharingListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1442
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$15;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$15;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    return-object v0
.end method

.method private getStatusBarHeight()I
    .locals 5

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1053
    if-lez v1, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1056
    :cond_0
    return v0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1404
    long-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v2, v1, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1406
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    :cond_0
    div-int/lit8 v1, v1, 0x3c

    .line 1411
    div-int/lit8 v2, v1, 0x3c

    .line 1413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v1, :cond_3

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1414
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1418
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1413
    :cond_3
    const-string/jumbo v1, "00"

    goto/16 :goto_0

    .line 1418
    :cond_4
    const-string/jumbo v2, ""

    goto :goto_1

    .line 1423
    :cond_5
    const-string/jumbo v2, ""

    goto :goto_2
.end method

.method private getWaveformDrawListener()Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;
    .locals 1

    .prologue
    .line 1314
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$14;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$14;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    return-object v0
.end method

.method private getWriteExternalStorageDialog()V
    .locals 4

    .prologue
    .line 2648
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2649
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0408

    .line 2650
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0409

    .line 2651
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2653
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2655
    :cond_0
    return-void
.end method

.method private initCurrentTitleImage(Lcom/adobe/premiereclip/project/sequence/ImageClip;)V
    .locals 2

    .prologue
    .line 2302
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    .line 2303
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2304
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textColorView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2305
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->backgroundColorView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2307
    return-void
.end method

.method private initSnapToBeatUI()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 1269
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSnapToBeatApplied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enable()V

    .line 1271
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSyncPoints(Ljava/util/ArrayList;JJ)V

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isFetchingData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    .line 1275
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateLoadingSpinner()V

    .line 1282
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->disable()V

    .line 1278
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSyncPoints(Ljava/util/ArrayList;JJ)V

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    .line 1280
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateLoadingSpinner()V

    goto :goto_0
.end method

.method private openAudioSettingsView()V
    .locals 3

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2249
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2250
    const v1, 0x186e7

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2251
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2259
    :goto_0
    return-void

    .line 2257
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openMusicView()V

    goto :goto_0
.end method

.method private openFullScreen()V
    .locals 2

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseSequence(Landroid/view/View;)V

    .line 1515
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setFullScreenUI()V

    .line 1516
    const v0, 0x7f120116

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1517
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    .line 1520
    :cond_0
    return-void
.end method

.method private openGalleryPickerActivity()V
    .locals 3

    .prologue
    .line 2420
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2421
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "moments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2422
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2423
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2424
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2425
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2427
    :cond_0
    return-void
.end method

.method private openMusicView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 981
    const v0, 0x7f1200eb

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->storeClipSaveState()V

    .line 984
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/editor/Editor;->selectClip(IZ)V

    .line 985
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipPlayback()V

    .line 986
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/editor/Editor;->seekToSequenceTime(J)V

    .line 993
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->showView()V

    .line 994
    return-void

    .line 991
    :cond_0
    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private registerNetworkChangeNotification()V
    .locals 3

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->network_reachability_observer:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 2994
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$40;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$40;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->network_reachability_observer:Ljava/util/Observer;

    .line 3006
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 3009
    return-void
.end method

.method private removeStoryCardView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1361
    const v0, 0x7f120120

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1362
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    .line 1365
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1367
    return-void
.end method

.method private setAudioOptions()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 1011
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getVolume()F

    move-result v0

    .line 1014
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeSeekBar:Landroid/widget/SeekBar;

    mul-float v2, v0, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1015
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setAudioFadeOutSwitch()V

    .line 1018
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setAudioFadeInSwitch()V

    .line 1019
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setSmartVolumeSwitch()V

    .line 1020
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setMuteSwitch()V

    .line 1022
    :cond_0
    return-void
.end method

.method private setClipOptionsSeekBarListeners()V
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 1745
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->highlightsSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 1746
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shadowsSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 1747
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 1748
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedSeekBar:Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->setSeekBarTheme(Landroid/content/Context;Landroid/widget/SeekBar;)V

    .line 1749
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$18;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$18;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1768
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->highlightsSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$19;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$19;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1787
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shadowsSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$20;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$20;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1806
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$21;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$21;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1828
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$22;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$22;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1849
    return-void
.end method

.method private setCloseMusicViewButton()V
    .locals 2

    .prologue
    .line 957
    const v0, 0x7f120111

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$10;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$10;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 963
    return-void
.end method

.method private setCoachmarkListener()V
    .locals 2

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$39;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$39;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->setListener(Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;)V

    .line 2990
    return-void
.end method

.method private setFullScreenUI()V
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x8

    .line 1467
    invoke-static {p0}, Lcom/adobe/premiereclip/util/ScreenUtils;->fullscreen(Landroid/app/Activity;)V

    .line 1469
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPlayerControlsAndClipOptionsView(Z)V

    .line 1470
    const v0, 0x7f120106

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1472
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 1473
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1474
    const v0, 0x7f120124

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    const v0, 0x7f120110

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    const v0, 0x7f120112

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v2, v3

    .line 1479
    :goto_0
    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1480
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1481
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1483
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1484
    if-nez v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    aget v2, v2, v4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1486
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    aget v2, v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v1, v2, :cond_1

    .line 1490
    const v1, 0x7f120116

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1491
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1494
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewDurationTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPlayerControlsPreviewMode()V

    .line 1497
    invoke-virtual {p0, v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->setRequestedOrientation(I)V

    .line 1498
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1499
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1500
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1501
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1502
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1503
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStillImageClips()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1504
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numTitleClips()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1505
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStorycardClips()I

    move-result v4

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1506
    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v5

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1507
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v6

    .line 1501
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureWithVideoClips(IIIIILjava/lang/String;)V

    .line 1508
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowPresentationView()V

    .line 1509
    return-void

    :cond_2
    move v2, v4

    .line 1477
    goto/16 :goto_0
.end method

.method private setMusicReplaceButton()V
    .locals 2

    .prologue
    .line 997
    const v0, 0x7f12052c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 998
    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$11;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$11;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    return-void
.end method

.method private setPauseUX()V
    .locals 3

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1211
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1212
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-eqz v0, :cond_1

    .line 1213
    const v0, 0x7f120116

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    .line 1218
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateSplitView()V

    .line 1219
    return-void
.end method

.method private setPlayUX()V
    .locals 3

    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1223
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1224
    return-void
.end method

.method private setPlayerControlsAndClipOptionsView(Z)V
    .locals 3

    .prologue
    .line 1390
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1391
    const v1, 0x7f1200e4

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1392
    if-eqz p1, :cond_0

    .line 1401
    :goto_0
    return-void

    .line 1396
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1397
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1399
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method private setPlayerControlsEditMode()V
    .locals 3

    .prologue
    .line 1037
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1039
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1041
    const v0, 0x7f120116

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1042
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1043
    return-void
.end method

.method private setPlayerControlsPreviewMode()V
    .locals 2

    .prologue
    .line 1046
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1047
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1048
    return-void
.end method

.method private setPreviewSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBarTouched:Z

    .line 1062
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$13;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$13;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1105
    return-void
.end method

.method private setWaveformAndBeats()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1285
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBarBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1288
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 1289
    :goto_0
    if-eqz v6, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showSyncPointsForClip(I)V

    .line 1292
    :cond_0
    new-instance v2, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getStartX()F

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getStartY()F

    move-result v1

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    .line 1293
    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getEndX()F

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getEndY()F

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;-><init>(FFFF)V

    .line 1294
    new-instance v3, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getBarWidth()F

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getBarHeight()F

    move-result v1

    invoke-direct {v3, v5, v5, v0, v1}, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;-><init>(FFFF)V

    .line 1295
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioPeakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1296
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1297
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWaveformDrawListener()Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;

    move-result-object v5

    .line 1295
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->initPeakGenerator(Lcom/adobe/premiereclip/project/sequence/Clip;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;Landroid/os/Handler;Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator$Listener;Z)V

    .line 1300
    :cond_1
    return-void

    .line 1288
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private sharingOptionsClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1876
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1877
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 1879
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeView()V

    .line 1881
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 1882
    const v0, 0x7f120124

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    return-void
.end method

.method private sharingOptionsOpened()V
    .locals 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1864
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 1867
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->openView()V

    .line 1868
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 1869
    return-void
.end method

.method private shootFromStoryCard()V
    .locals 5

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1371
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipPlayback()V

    .line 1372
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 1373
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipIndexToBeDeleted:I

    .line 1374
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1375
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1376
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1377
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStorycardClips()I

    move-result v4

    .line 1374
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapShootForStorycardInSequenceWithDuration(DII)V

    .line 1379
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271c

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 1381
    return-void
.end method

.method private showEmptyTimelineCoachmark()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 2679
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_EMPTY"

    invoke-virtual {v0, v1, v9}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2680
    const v0, 0x7f1202d0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2681
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03c3

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03c2

    .line 2682
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FREEFORM_EMPTY"

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2685
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 2688
    :cond_0
    return-void
.end method

.method private showShareCoachmark()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2668
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_SHARE"

    invoke-virtual {v0, v1, v5}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2669
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03c7

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03c6

    .line 2670
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FREEFORM_SHARE"

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2673
    const-wide/16 v2, 0x2ee

    iput-wide v2, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    .line 2674
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 2676
    :cond_0
    return-void
.end method

.method private showStoryCardView(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1348
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    const-string/jumbo p1, "\n\n\n"

    .line 1351
    :cond_0
    const v0, 0x7f120120

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1352
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    .line 1355
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->NONE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setClip(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Z)V

    .line 1358
    return-void
.end method

.method private showSyncPointsForClip(I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1336
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1337
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->getSyncPointsForClip(ILcom/adobe/premiereclip/project/sequence/Sequence;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 1339
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1341
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    long-to-float v0, v2

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-long v2, v0

    .line 1343
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSyncPoints(Ljava/util/ArrayList;JJ)V

    .line 1344
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 1345
    return-void
.end method

.method private showTwoFingerCoachmark()V
    .locals 4

    .prologue
    .line 2691
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$33;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$33;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    .line 2706
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2707
    return-void
.end method

.method private startTwoFingerSwipe()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1649
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->disableInAndOutTrimHandle()V

    .line 1650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTwoFingerInProgress:Z

    .line 1651
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1652
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    .line 1653
    const v0, 0x7f120115

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    const v0, 0x7f120125

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1655
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->onScrubbingStarted()V

    .line 1656
    return-void
.end method

.method private unRegisterNetworkChangeNotification()V
    .locals 3

    .prologue
    .line 3012
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 3014
    return-void
.end method

.method private updateLoadingSpinner()V
    .locals 5

    .prologue
    const v4, 0x7f1205dd

    const v3, 0x7f1204c1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1227
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1230
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    if-eqz v0, :cond_5

    .line 1231
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBarTouched:Z

    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f05002f

    .line 1237
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1236
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1239
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1240
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1252
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isDetectingData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1253
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a03f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1242
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1244
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_4

    .line 1247
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    goto :goto_1

    .line 1255
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updatePlayPauseButton()V
    .locals 2

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTwoFingerInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTrimmingInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    .line 1125
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBarTouched:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    if-eqz v0, :cond_1

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1132
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSplitView()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->enableClipMoreOptions(Z)V

    .line 1261
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->isSplitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->enableSplitView()V

    .line 1266
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->disableSplitView()V

    goto :goto_0
.end method

.method private updateTitleImage()V
    .locals 3

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2312
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textColorView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2313
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->backgroundColorView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2314
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->updateTitleImage()V

    .line 2315
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Timeline;->resetClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 2317
    :cond_0
    return-void
.end method


# virtual methods
.method public addCollapseFullScreenListener()V
    .locals 2

    .prologue
    .line 1558
    const v0, 0x7f120118

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1559
    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$16;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$16;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    return-void
.end method

.method public addFullScreenViewListener()V
    .locals 2

    .prologue
    .line 1568
    const v0, 0x7f12010f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewFullScreenButton:Landroid/widget/ImageView;

    .line 1569
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewFullScreenButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$17;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$17;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1576
    return-void
.end method

.method public addMediaFromCC(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2389
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudFileAssetInMediaPicker()V

    .line 2390
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 2391
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2390
    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V

    .line 2392
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2393
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2395
    :cond_0
    return-void
.end method

.method public addMediaFromCamera(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2378
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerUseCamera()V

    .line 2379
    const/16 v0, 0xb

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2380
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271b

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 2382
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2383
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2386
    :cond_0
    return-void
.end method

.method public addMediaFromDevice(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2320
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerOnMyDevice()V

    .line 2321
    const/16 v0, 0x29

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openGalleryPickerActivity()V

    .line 2324
    :cond_0
    return-void
.end method

.method public addMediaFromDropbox(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2355
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Dropbox"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 2356
    const/16 v0, 0x49

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2359
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2360
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2361
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2362
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2363
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2364
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2366
    :cond_0
    return-void
.end method

.method public addMediaFromGoogleDrive(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2341
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GoogleDrive"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 2342
    const/16 v0, 0x48

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2344
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2345
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2346
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2347
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2348
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2349
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2352
    :cond_0
    return-void
.end method

.method public addMediaFromGooglePhotos(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2327
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 2328
    const/16 v0, 0x47

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getMultiplePermission(I[Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2331
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2333
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2334
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2335
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2338
    :cond_0
    return-void
.end method

.method public addMediaFromLightRoom(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2369
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker()V

    .line 2370
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 2371
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2370
    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V

    .line 2372
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2373
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2375
    :cond_0
    return-void
.end method

.method public addSharingPickerListener()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getSharingListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1438
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewShareButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getSharingListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    return-void
.end method

.method public addTitleImage(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 2398
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerTitle()V

    .line 2399
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->createTitleImage()V

    .line 2400
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2401
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 2408
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2409
    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$32;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$32;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2415
    return-void
.end method

.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->onBackPressed()V

    .line 1185
    return-void
.end method

.method public closeFAB(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1966
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1968
    :cond_0
    return-void
.end method

.method public closeSharingOptions(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1886
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptionsClosed()V

    .line 1887
    return-void
.end method

.method public duplicateClip(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->duplicateClip()V

    .line 2146
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeClipOptions()V

    .line 2148
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2150
    :cond_0
    return-void
.end method

.method public moveTwoFingerSwipe()V
    .locals 6

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v1, :cond_0

    .line 1660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->onClickPlayer(Landroid/view/View;)V

    .line 1661
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMinValue()F

    move-result v0

    .line 1664
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMaxValue()F

    move-result v1

    .line 1665
    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->stopX:F

    iget v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->twoFingerSwipeScale:F

    div-float/2addr v2, v3

    .line 1666
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    .line 1668
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    add-float/2addr v2, v1

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 1669
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMaxValue()F

    move-result v2

    sub-float v1, v2, v1

    .line 1670
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 1677
    :goto_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->stopX:F

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    .line 1678
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMinValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->onScrubberMoved(F)V

    .line 1679
    return-void

    .line 1673
    :cond_1
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    add-float/2addr v2, v0

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 1674
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getSelectedMinValue()F

    move-result v2

    sub-float v0, v2, v0

    .line 1675
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 718
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 720
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 721
    const/16 v0, 0x2717

    if-ne p1, v0, :cond_2

    .line 722
    if-ne p2, v1, :cond_0

    .line 723
    const-string/jumbo v0, "cross_fade"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 724
    const-string/jumbo v1, "fade_in"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 725
    const-string/jumbo v2, "fade_out"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 726
    const-string/jumbo v3, "photo_motion"

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 728
    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/editor/Editor;->setTransition(Z)V

    .line 729
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Editor;->setFadeIn(Z)V

    .line 730
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/Editor;->setFadeOut(Z)V

    .line 731
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/editor/Editor;->setPhotoMotion(Z)V

    .line 733
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->initialLookId:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 734
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/editor/Timeline;->resetClipThumb(I)V

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showShareCoachmark()V

    .line 854
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    const v0, 0x186e7

    if-ne p1, v0, :cond_5

    .line 740
    if-eqz p3, :cond_3

    .line 741
    const-string/jumbo v0, "track_selected"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 742
    const-string/jumbo v1, "track_location"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 743
    const-string/jumbo v2, "track_replace"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 745
    if-eqz v0, :cond_3

    .line 746
    if-eqz v2, :cond_4

    .line 747
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didReplaceSoundtrackFromLocation(Ljava/lang/String;)V

    .line 751
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->setToBeOpened()V

    .line 754
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showShareCoachmark()V

    goto :goto_0

    .line 749
    :cond_4
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didAddSoundtrackFromLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 755
    :cond_5
    const/16 v0, 0x2719

    if-ne p1, v0, :cond_6

    .line 756
    if-ne p2, v1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    const-string/jumbo v1, "color"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setTextColor(Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateTitleImage()V

    goto :goto_0

    .line 760
    :cond_6
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_7

    .line 761
    if-ne p2, v1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    const-string/jumbo v1, "color"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setBackgroundColor(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateTitleImage()V

    goto :goto_0

    .line 765
    :cond_7
    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_8

    .line 766
    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 767
    const-string/jumbo v0, "publish_video_ccv"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 768
    if-eqz v0, :cond_1

    .line 769
    iput-boolean v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 770
    const-string/jumbo v0, "title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 771
    const-string/jumbo v1, "unlisted"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 772
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 773
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setCCVPublishData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 776
    :cond_8
    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_9

    .line 777
    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 778
    const-string/jumbo v0, "youtube_upload"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 779
    if-eqz v0, :cond_1

    .line 780
    iput-boolean v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 781
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "Back To Editor Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string/jumbo v0, "account_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    const-string/jumbo v0, "video_access"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 785
    const-string/jumbo v0, "title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 786
    const-string/jumbo v0, "description"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 787
    const-string/jumbo v0, "tag"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 789
    const-string/jumbo v0, "EditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "account name = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "and video access = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "setting YouTubeCredentials"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 793
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/sharing/SharingManager;->setYouTubeCredential(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 796
    :cond_9
    const/16 v0, 0x4e23

    if-ne p1, v0, :cond_a

    .line 797
    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 798
    const-string/jumbo v0, "twitter_upload"

    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 799
    if-eqz v0, :cond_1

    .line 800
    iput-boolean v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 801
    const-string/jumbo v0, "tweet"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    const-string/jumbo v1, "token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    const-string/jumbo v2, "secret"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 805
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 806
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->setTwitterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :cond_a
    const/16 v0, 0x271b

    if-ne p1, v0, :cond_c

    .line 810
    if-ne p2, v1, :cond_b

    .line 811
    invoke-static {p0, p3}, Lcom/adobe/premiereclip/util/Utilities;->getMediaInfoArrayListFromCameraIntentResult(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_1

    .line 815
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addMedias(Ljava/util/ArrayList;)Z

    goto/16 :goto_0

    .line 817
    :cond_b
    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 820
    :cond_c
    const/16 v0, 0x271c

    if-ne p1, v0, :cond_e

    .line 821
    if-ne p2, v1, :cond_d

    .line 822
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 823
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 824
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 825
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStorycardClips()I

    move-result v4

    .line 822
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didShootIntoStorycardInSequenceWithDuration(DII)V

    .line 827
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    iget v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipIndexToBeDeleted:I

    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->getCaptureFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Editor;->replaceClipAtIndex(ILjava/lang/String;)V

    .line 828
    iput-boolean v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardReplaced:Z

    .line 830
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/CameraCaptureManager;->getCaptureFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/Utilities;->runMediaScanner(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 831
    :cond_d
    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 834
    :cond_e
    const/16 v0, 0x2716

    if-ne p1, v0, :cond_10

    .line 835
    if-ne p2, v1, :cond_1

    .line 836
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didImportMyDeviceAssetInMediaPicker()V

    .line 837
    const-string/jumbo v0, "Gallery_selected_paths"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 839
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 840
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 841
    new-instance v3, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v3}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 842
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 844
    new-instance v4, Ljava/util/Date;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 848
    :cond_f
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->addMedias(Ljava/util/ArrayList;)Z

    goto/16 :goto_0

    .line 851
    :cond_10
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->startDownload(Ljava/lang/String;IILandroid/content/Intent;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V

    goto/16 :goto_0
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeSharingOptions(Landroid/view/View;)V

    .line 633
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 634
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline;->getCoachmarkObject()Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 635
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeView()V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 613
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    goto :goto_0

    .line 615
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeClipOptions()V

    goto :goto_0

    .line 618
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeMusicView()V

    goto :goto_0

    .line 621
    :cond_4
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 622
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapHomeInProjectEditor()V

    .line 623
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->clearCurrentProjectInfo()V

    .line 624
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->clearCurrentProjectSignature()V

    .line 626
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 627
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 630
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeFullScreen()V

    goto :goto_0
.end method

.method public onClickAudioOption(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectDummyOption(I)V

    .line 1895
    return-void
.end method

.method public onClickExposureOption(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectDummyOption(I)V

    .line 1891
    return-void
.end method

.method public onClickMoreOption(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    .line 1903
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectDummyOption(I)V

    .line 1904
    return-void

    .line 1903
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClickPlayer(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x4

    .line 1701
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v0, :cond_5

    .line 1703
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    if-eqz v0, :cond_4

    .line 1708
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1709
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseClip()V

    goto :goto_0

    .line 1711
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_3

    .line 1712
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseSequence(Landroid/view/View;)V

    .line 1713
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipPlayback()V

    .line 1714
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/editor/Editor;->seekToSequenceTime(J)V

    goto :goto_0

    .line 1717
    :cond_3
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseSequence(Landroid/view/View;)V

    goto :goto_0

    .line 1721
    :cond_4
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1723
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1726
    :cond_5
    const v0, 0x7f120116

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1727
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->isInFadeOutTime()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1728
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1730
    :cond_7
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v1, v2, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1732
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0
.end method

.method public onClickTextOption(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->selectDummyOption(I)V

    .line 1899
    return-void
.end method

.method public onClipDelete(I)V
    .locals 4

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1976
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 1994
    new-instance v0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    const v1, 0x7f0a03eb

    .line 1995
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03ea

    .line 1996
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1998
    const v1, 0x7f0a03ee

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$23;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$23;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 2005
    const v1, 0x7f0a03ed

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 2006
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 2007
    return-void
.end method

.method public onClipOptionsOpened()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1853
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1854
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipPlayback()V

    .line 1855
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 1858
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 1859
    const v0, 0x7f120124

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    return-void
.end method

.method public onClipSelected(Z)V
    .locals 4

    .prologue
    .line 2902
    const/4 v0, 0x0

    .line 2903
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2904
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 2906
    :cond_0
    if-eqz v0, :cond_2

    .line 2907
    if-eqz p1, :cond_1

    .line 2908
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->NONE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setClip(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Z)V

    .line 2909
    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getStoryCardText()Ljava/lang/String;

    move-result-object v0

    .line 2910
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showStoryCardView(Ljava/lang/String;)V

    .line 2926
    :goto_0
    return-void

    .line 2913
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    .line 2914
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setClip(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Z)V

    .line 2919
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getMinNormalizedTrimHandleDistanceForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)D

    move-result-wide v0

    .line 2920
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setMinNormalizedTrimHandleDistance(D)V

    .line 2922
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setWaveformAndBeats()V

    .line 2925
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->removeStoryCardView()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 587
    const-string/jumbo v0, "On Config Change"

    const-string/jumbo v1, "here"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 592
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 593
    const-string/jumbo v1, "On Config Change"

    const-string/jumbo v2, "LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerLandscapeSize:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 595
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerLandscapeSize:[I

    aget v1, v1, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 602
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0

    .line 598
    :cond_1
    const-string/jumbo v1, "On Config Change"

    const-string/jumbo v2, "PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    aget v1, v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 600
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    aget v1, v1, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1
.end method

.method public onConfirmDelete(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline;->removeClip(I)V

    .line 2011
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeClipOptions()V

    .line 2015
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showEmptyTimelineCoachmark()V

    .line 2016
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v5, -0x2

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 237
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 238
    const-string/jumbo v0, "project_key"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 239
    const-string/jumbo v0, "newProject"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->isRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->newProject:Z

    .line 240
    const-string/jumbo v0, "converted"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->isConvertedFromAutomatic:Z

    .line 242
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v9

    .line 243
    iput-object v9, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 245
    if-eqz v9, :cond_2

    .line 246
    invoke-static {v8}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setCurrentComposite(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/adobe/premiereclip/project/ProjectManager;->loadSequence(Lcom/adobe/premiereclip/project/Project;)V

    .line 253
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    .line 255
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowProjectEditorView()V

    .line 256
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->newProject:Z

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->editNewProject()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->initialLookId:Ljava/lang/String;

    .line 261
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->pausedState:Z

    .line 262
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardReplaced:Z

    .line 264
    invoke-virtual {p0, v6}, Lcom/adobe/premiereclip/editor/EditorActivity;->requestWindowFeature(I)Z

    .line 266
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setContentView(I)V

    .line 267
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 269
    const v0, 0x7f120127

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$1;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/h;)V

    .line 289
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addFullScreenViewListener()V

    .line 290
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addCollapseFullScreenListener()V

    .line 293
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 296
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 297
    mul-int/lit8 v2, v0, 0x9

    div-int/lit8 v2, v2, 0x10

    .line 298
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v7

    aput v2, v3, v6

    iput-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerPortraitSize:[I

    .line 300
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 301
    mul-int/lit8 v3, v0, 0x10

    div-int/lit8 v3, v3, 0x9

    .line 303
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v3, v4, v7

    aput v0, v4, v6

    iput-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerContainerLandscapeSize:[I

    .line 305
    const v0, 0x3f59999a    # 0.85f

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->twoFingerSwipeScale:F

    .line 307
    const v0, 0x7f1200e5

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    .line 308
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040178

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 314
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 315
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 317
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    .line 318
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    .line 320
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPlayerControlsEditMode()V

    .line 323
    const v0, 0x7f120124

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timelineView:Landroid/widget/RelativeLayout;

    .line 324
    new-instance v0, Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timelineView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/premiereclip/editor/Timeline;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/Timeline;->setClipDeleteListener(Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;)V

    .line 327
    new-instance v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 328
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioTrack;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getTransitionTimes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->setTransitionTimes(Ljava/util/ArrayList;)V

    .line 335
    new-instance v0, Lcom/adobe/premiereclip/editor/Editor;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-direct {v0, p0, v1, v9, v2}, Lcom/adobe/premiereclip/editor/Editor;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/editor/SnapToBeatController;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    .line 336
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/Editor;->setListener(Lcom/adobe/premiereclip/editor/Editor$Listener;)V

    .line 338
    const v0, 0x7f120117

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    .line 341
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerBar:Landroid/widget/FrameLayout;

    .line 343
    new-instance v0, Lcom/adobe/premiereclip/editor/RangeSeekBar;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;-><init>(FFLandroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    .line 344
    const v0, 0x7f12011a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    .line 345
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 346
    const v0, 0x7f12011b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewTimeTextView:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f12011c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewDurationTextView:Landroid/widget/TextView;

    .line 348
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;JJ)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerBar:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 351
    const v0, 0x7f1200e7

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playPauseBtn:Landroid/widget/ImageView;

    .line 354
    new-instance v0, Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    .line 355
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->setClipOptionListener(Lcom/adobe/premiereclip/editor/ClipOptionsView$ClipOptionListener;)V

    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->getExposureOptionsView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureOptionsView:Landroid/view/View;

    .line 358
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->getAudioOptionsView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioOptionsView:Landroid/view/View;

    .line 359
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->getTextOptionsView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textOptionsView:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->getMoreOptionsView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->moreOptionsView:Landroid/view/View;

    .line 362
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureOptionsView:Landroid/view/View;

    const v1, 0x7f120596

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureSeekBar:Landroid/widget/SeekBar;

    .line 363
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureOptionsView:Landroid/view/View;

    const v1, 0x7f120599

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->highlightsSeekBar:Landroid/widget/SeekBar;

    .line 364
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureOptionsView:Landroid/view/View;

    const v1, 0x7f12059c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shadowsSeekBar:Landroid/widget/SeekBar;

    .line 366
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedSeekBar:Landroid/widget/SeekBar;

    .line 367
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->moreOptionsView:Landroid/view/View;

    const v1, 0x7f1205a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedTextView:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioOptionsView:Landroid/view/View;

    const v1, 0x7f120588

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeSeekBar:Landroid/widget/SeekBar;

    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioOptionsView:Landroid/view/View;

    const v1, 0x7f120587

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->volumeText:Landroid/widget/TextView;

    .line 373
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 374
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    .line 376
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$2;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSplitListener(Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;)V

    .line 388
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->createTrimBarBackgroundBitmap()V

    .line 390
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textOptionsView:Landroid/view/View;

    const v1, 0x7f1205ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->titleTextView:Landroid/widget/TextView;

    .line 391
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textOptionsView:Landroid/view/View;

    const v1, 0x7f1205b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textColorView:Landroid/view/View;

    .line 392
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->textOptionsView:Landroid/view/View;

    const v1, 0x7f1205b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->backgroundColorView:Landroid/view/View;

    .line 394
    const v0, 0x7f12010a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->syncCloudButton:Landroid/widget/ImageView;

    .line 396
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    invoke-direct {v0, p0, v8}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    .line 397
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addOnClickListenerForSyncButton()V

    .line 399
    const v0, 0x7f12010e

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shareButton:Landroid/widget/ImageView;

    .line 400
    const v0, 0x7f120122

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardText:Landroid/widget/TextView;

    .line 401
    const v0, 0x7f120119

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewShareButton:Landroid/widget/ImageView;

    .line 402
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {v0, p0, v9}, Lcom/adobe/premiereclip/sharing/SharingOptions;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    .line 403
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->setListener(Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;)V

    .line 404
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addSharingPickerListener()V

    .line 405
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, v9, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didFinishProjectOpenForMyProject(Ljava/lang/String;)V

    .line 407
    iput v11, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipIndexToBeDeleted:I

    .line 409
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setClipOptionsSeekBarListeners()V

    .line 410
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    .line 411
    iput-boolean v7, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    .line 413
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setCloseMusicViewButton()V

    .line 414
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setMusicReplaceButton()V

    .line 416
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioPeakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    .line 417
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioPeakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getBackgroundMusicListener()Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    .line 419
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const v0, 0x7f12011f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 423
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-direct {v0, p0, v6}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    .line 424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkHandler:Landroid/os/Handler;

    .line 425
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setCoachmarkListener()V

    .line 426
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    .line 428
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioPeakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    .line 430
    const v0, 0x7f1200e4

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 431
    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$3;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 438
    const v0, 0x7f120115

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$4;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    const v0, 0x7f120125

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$5;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 450
    const v0, 0x7f1200eb

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$6;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    new-instance v0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    .line 458
    new-instance v0, Lcom/adobe/premiereclip/BottomSheetView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/BottomSheetView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    .line 460
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    iget-object v0, v0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$7;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    :goto_1
    return-void

    :cond_1
    move v0, v7

    .line 239
    goto/16 :goto_0

    .line 249
    :cond_2
    const-string/jumbo v0, "Editor"

    const-string/jumbo v1, "Could not set current project"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline;->onDestroy()V

    .line 576
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBarBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 582
    return-void
.end method

.method public onDownloadCancel(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2753
    if-ne p1, v1, :cond_0

    .line 2754
    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2756
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->newProject:Z

    if-eqz v0, :cond_1

    .line 2757
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeAndDeleteProject()V

    .line 2759
    :cond_1
    return-void
.end method

.method public onDownloadComplete(Ljava/util/ArrayList;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/MediaInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2732
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2733
    if-lez p3, :cond_0

    .line 2734
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0398

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2736
    :cond_0
    sub-int v1, p2, p3

    sub-int/2addr v1, v0

    .line 2737
    if-lez v1, :cond_1

    .line 2738
    new-instance v2, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    .line 2739
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a039b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 2740
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v6}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2741
    invoke-virtual {v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2743
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/EditorActivity;->addMedias(Ljava/util/ArrayList;)Z

    move-result v0

    .line 2744
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->pausedState:Z

    if-nez v0, :cond_2

    .line 2745
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/Timeline;->setClips(Ljava/util/ArrayList;I)V

    .line 2746
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/editor/Editor;->playerReInit(I)V

    .line 2748
    :cond_2
    iput-boolean v6, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->newProject:Z

    .line 2749
    return-void
.end method

.method public onDownloadProgress(D)V
    .locals 0

    .prologue
    .line 2728
    return-void
.end method

.method public onDownloadStart()V
    .locals 0

    .prologue
    .line 2723
    return-void
.end method

.method public onExportEnded(Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 2892
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/SharingManager;->onExportEnded(Ljava/io/File;Z)V

    .line 2894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 2895
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->initPlayback()Z

    .line 2897
    :cond_0
    return-void
.end method

.method public onExportProgress(D)V
    .locals 1

    .prologue
    .line 2885
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    if-eqz v0, :cond_0

    .line 2886
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/SharingManager;->setExportProgress(D)V

    .line 2888
    :cond_0
    return-void
.end method

.method public onLoadingCompleted(Z)V
    .locals 1

    .prologue
    .line 2936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    .line 2937
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateLoadingSpinner()V

    .line 2938
    if-nez p1, :cond_0

    .line 2939
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPlayUX()V

    .line 2941
    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 1

    .prologue
    .line 2930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    .line 2931
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateLoadingSpinner()V

    .line 2932
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->pausedState:Z

    .line 549
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 550
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 551
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline;->onPause()V

    .line 552
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 553
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->audioPeakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;->cancelOngoingTask()V

    .line 554
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 556
    return-void
.end method

.method public onPlayerPaused()V
    .locals 0

    .prologue
    .line 2868
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 2869
    return-void
.end method

.method public onPlayerTimeUpdate(J)V
    .locals 5

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBarTouched:Z

    if-nez v0, :cond_0

    .line 2874
    const v0, 0x49742400    # 1000000.0f

    long-to-float v1, p1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2875
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 2876
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2878
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2879
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewTimeTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2881
    :cond_1
    return-void
.end method

.method public onRangeSeekbarThumbMoveEnded()V
    .locals 1

    .prologue
    .line 2951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTrimmingInProgress:Z

    .line 2952
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 2953
    return-void
.end method

.method public onRangeSeekbarThumbMoveStarted()V
    .locals 1

    .prologue
    .line 2945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTrimmingInProgress:Z

    .line 2946
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 2947
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const v6, 0x7f05002b

    const/16 v5, 0x2716

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2432
    sparse-switch p1, :sswitch_data_0

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2435
    :sswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 2436
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271b

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 2438
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2439
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto :goto_0

    .line 2446
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getCameraAccessDialog()V

    goto :goto_0

    .line 2454
    :sswitch_1
    array-length v0, p3

    if-lez v0, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 2455
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openGalleryPickerActivity()V

    goto :goto_0

    .line 2460
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getReadExternalStorageDialog()V

    goto :goto_0

    .line 2467
    :sswitch_2
    array-length v0, p3

    if-lez v0, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 2468
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openAudioSettingsView()V

    goto :goto_0

    .line 2471
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getReadExternalStorageDialog()V

    goto :goto_0

    .line 2478
    :sswitch_3
    array-length v0, p3

    if-lez v0, :cond_4

    aget v0, p3, v2

    if-nez v0, :cond_4

    .line 2479
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharePublish()V

    goto :goto_0

    .line 2482
    :cond_4
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWriteExternalStorageDialog()V

    goto :goto_0

    .line 2489
    :sswitch_4
    array-length v0, p3

    if-lez v0, :cond_5

    aget v0, p3, v2

    if-nez v0, :cond_5

    .line 2490
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareSaveGallery()V

    goto :goto_0

    .line 2493
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWriteExternalStorageDialog()V

    goto :goto_0

    .line 2500
    :sswitch_5
    array-length v0, p3

    if-lez v0, :cond_6

    aget v0, p3, v2

    if-nez v0, :cond_6

    .line 2501
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareSaveCC()V

    goto :goto_0

    .line 2504
    :cond_6
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWriteExternalStorageDialog()V

    goto :goto_0

    .line 2511
    :sswitch_6
    array-length v0, p3

    if-lez v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 2512
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareYoutube()V

    goto/16 :goto_0

    .line 2515
    :cond_7
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWriteExternalStorageDialog()V

    goto/16 :goto_0

    .line 2522
    :sswitch_7
    array-length v0, p3

    if-lez v0, :cond_8

    aget v0, p3, v2

    if-nez v0, :cond_8

    .line 2523
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareTwitter()V

    goto/16 :goto_0

    .line 2526
    :cond_8
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWriteExternalStorageDialog()V

    goto/16 :goto_0

    .line 2533
    :sswitch_8
    array-length v0, p3

    if-lez v0, :cond_9

    aget v0, p3, v2

    if-nez v0, :cond_9

    .line 2534
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->shootFromStoryCard()V

    goto/16 :goto_0

    .line 2537
    :cond_9
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getCameraAccessDialog()V

    goto/16 :goto_0

    .line 2544
    :sswitch_9
    array-length v0, p3

    .line 2545
    if-ne v0, v3, :cond_a

    aget v1, p3, v2

    if-eqz v1, :cond_b

    :cond_a
    if-ne v0, v4, :cond_c

    aget v0, p3, v2

    if-nez v0, :cond_c

    aget v0, p3, v3

    if-nez v0, :cond_c

    .line 2549
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2550
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2551
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2552
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2553
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2554
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 2558
    :cond_c
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 2559
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2560
    :cond_d
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0438

    .line 2561
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03fe

    .line 2562
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2564
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 2574
    :sswitch_a
    array-length v0, p3

    .line 2575
    if-ne v0, v3, :cond_e

    aget v1, p3, v2

    if-eqz v1, :cond_f

    :cond_e
    if-ne v0, v4, :cond_10

    aget v0, p3, v2

    if-nez v0, :cond_10

    aget v0, p3, v3

    if-nez v0, :cond_10

    .line 2579
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2580
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2581
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2582
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2583
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2584
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 2588
    :cond_10
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 2589
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2590
    :cond_11
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const-string/jumbo v1, "Need Access"

    const-string/jumbo v2, "Please enable Storage and Contacts access in Settings->Apps->Adobe Clip->Permissions"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2594
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 2604
    :sswitch_b
    array-length v0, p3

    .line 2605
    if-ne v0, v3, :cond_12

    aget v1, p3, v2

    if-eqz v1, :cond_13

    :cond_12
    if-ne v0, v4, :cond_14

    aget v0, p3, v2

    if-nez v0, :cond_14

    aget v0, p3, v3

    if-nez v0, :cond_14

    .line 2609
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2610
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2611
    invoke-virtual {p0, v0, v5}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2612
    const v0, 0x7f05002c

    invoke-virtual {p0, v6, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2613
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 2614
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 2618
    :cond_14
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 2619
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2620
    :cond_15
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const-string/jumbo v1, "Need Access"

    const-string/jumbo v2, "Please enable Storage and Contacts access in Settings->Apps->Adobe Clip->Permissions"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2624
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 2432
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_8
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x47 -> :sswitch_9
        0x48 -> :sswitch_a
        0x49 -> :sswitch_b
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->pausedState:Z

    .line 543
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 544
    return-void
.end method

.method public onSelectAudioOption()V
    .locals 4

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1923
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    .line 1924
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapClipAudioMenuForClipType(Ljava/lang/String;)V

    .line 1925
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1929
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setAudioOptions()V

    goto :goto_0
.end method

.method public onSelectExposureOption()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 1908
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1909
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    .line 1910
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapClipBrightnessMenuForClipType(Ljava/lang/String;)V

    .line 1911
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exposureSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getSeekExposure()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1916
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->highlightsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1917
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->shadowsSeekBar:Landroid/widget/SeekBar;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v0

    sub-float v0, v2, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onSelectMoreOption()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 1946
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1947
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    .line 1952
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapClipMoreMenuForClipType(Ljava/lang/String;)V

    .line 1954
    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v1, v2, :cond_2

    .line 1955
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v1

    mul-float/2addr v1, v4

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    const v2, 0x42055555

    sub-float/2addr v1, v2

    .line 1956
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedSeekBar:Landroid/widget/SeekBar;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1957
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1958
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->speedTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1961
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateSplitView()V

    goto :goto_0
.end method

.method public onSelectTextOption()V
    .locals 4

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 1935
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    .line 1936
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapClipTextMenuForClipType(Ljava/lang/String;)V

    .line 1937
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardMode:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return-void

    .line 1941
    :cond_1
    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->initCurrentTitleImage(Lcom/adobe/premiereclip/project/sequence/ImageClip;)V

    goto :goto_0
.end method

.method public onSharingEnded()V
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->endExport()V

    .line 2966
    return-void
.end method

.method public onSharingOptionsClosed()V
    .locals 0

    .prologue
    .line 2970
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptionsClosed()V

    .line 2971
    return-void
.end method

.method public onSharingStarted(Z)V
    .locals 1

    .prologue
    .line 2959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 2960
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/Editor;->startExport(Z)V

    .line 2961
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 473
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 474
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setVolumeControlStream(I)V

    .line 475
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 476
    :goto_0
    if-eqz v0, :cond_0

    .line 477
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->hideView()V

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->init()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    if-eqz v1, :cond_6

    .line 481
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->startSharing()V

    .line 487
    :goto_1
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/Editor;->setTrimBar(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V

    .line 488
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPreviewSeekBar(Landroid/widget/SeekBar;)V

    .line 489
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addPlayerView()V

    .line 490
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->reOpen()V

    .line 492
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->onClipOptionsOpened()V

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->enableShareAndPreviewButtons()V

    .line 495
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->initSnapToBeatUI()V

    .line 506
    :goto_2
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->toBeOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 507
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openMusicView()V

    .line 509
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-eqz v0, :cond_4

    .line 510
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setFullScreenUI()V

    .line 512
    :cond_4
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->resetAllKeys()V

    .line 514
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 515
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity$8;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->setListener(Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;)V

    .line 536
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->registerNetworkChangeNotification()V

    .line 537
    return-void

    :cond_5
    move v0, v1

    .line 475
    goto :goto_0

    .line 483
    :cond_6
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->initPlayback()Z

    .line 484
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->mayBeExportPPro()V

    goto :goto_1

    .line 499
    :cond_7
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardReplaced:Z

    if-eqz v2, :cond_8

    .line 500
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->storyCardReplaced:Z

    goto :goto_2

    .line 503
    :cond_8
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->disableShareAndPreviewButtons()V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->setThumbnailThreadPoolThrottle(Z)V

    .line 561
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setVolumeControlStream(I)V

    .line 562
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->exportMode:Z

    .line 563
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->stop()V

    .line 564
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    .line 565
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/editor/Editor;->release(Z)V

    .line 566
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->clearListener()V

    .line 567
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    .line 568
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateLoadingSpinner()V

    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 570
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->unRegisterNetworkChangeNotification()V

    .line 571
    return-void

    :cond_0
    move v0, v1

    .line 565
    goto :goto_0
.end method

.method public onTouchPlayer(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1579
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1645
    :goto_0
    return v0

    .line 1582
    :cond_0
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mTrimmingInProgress:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 1583
    goto :goto_0

    .line 1585
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v0, v1

    .line 1645
    goto :goto_0

    .line 1587
    :pswitch_1
    const-string/jumbo v2, "EditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "2 finger swipe ACTION_POINTER_DOWN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1591
    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    if-eq v2, v5, :cond_4

    .line 1593
    iput v5, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    .line 1595
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    .line 1596
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->startTwoFingerSwipe()V

    goto :goto_1

    .line 1598
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_3

    .line 1599
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    goto :goto_1

    .line 1606
    :pswitch_2
    const-string/jumbo v0, "EditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "2 finger swipe ACTION_POINTER_UP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->fullScreenMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->musicView:Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/waveform/BackgroundMusicView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 1611
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    goto :goto_1

    .line 1616
    :pswitch_3
    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    if-ne v2, v5, :cond_3

    .line 1617
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->stopX:F

    .line 1618
    iget v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->startX:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->stopX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 1619
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->moveTwoFingerSwipe()V

    goto/16 :goto_1

    .line 1625
    :pswitch_4
    iput v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    goto/16 :goto_1

    .line 1629
    :pswitch_5
    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    if-ne v2, v5, :cond_5

    .line 1630
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->finishTwoFingerSwipe(Z)V

    .line 1632
    :cond_5
    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    if-ne v2, v1, :cond_6

    .line 1633
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/EditorActivity;->onClickPlayer(Landroid/view/View;)V

    .line 1635
    :cond_6
    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    goto/16 :goto_1

    .line 1639
    :pswitch_6
    iget v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    if-ne v2, v5, :cond_7

    .line 1640
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->finishTwoFingerSwipe(Z)V

    .line 1642
    :cond_7
    iput v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mode:I

    goto/16 :goto_1

    .line 1585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 639
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 640
    if-eqz p1, :cond_2

    .line 641
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 642
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_TRIM2"

    invoke-virtual {v0, v1, v11}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_REORDER"

    .line 643
    invoke-virtual {v0, v1, v11}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 645
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 646
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_TRIM2"

    invoke-virtual {v0, v1, v11}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->isConvertedFromAutomatic:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a03c8

    move v2, v0

    .line 648
    :goto_0
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03ca

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FREEFORM_TRIM2"

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerBar:Landroid/widget/FrameLayout;

    .line 651
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v8, v7

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 652
    iput-wide v12, v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    .line 653
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 659
    if-nez v4, :cond_4

    .line 713
    :cond_2
    :goto_1
    return-void

    .line 647
    :cond_3
    const v0, 0x7f0a03c9

    move v2, v0

    goto :goto_0

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_REORDER"

    invoke-virtual {v0, v1, v11}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03c5

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03c4

    .line 667
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "FREEFORM_REORDER"

    move-object v6, v7

    move-object v8, v7

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 670
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mcoachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0, v10}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithNext(Ljava/util/List;)V

    .line 677
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_ADJUST"

    invoke-virtual {v0, v1, v11}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 678
    const v0, 0x7f120507

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 679
    new-instance v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v0, 0x7f0a03bf

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0a03be

    .line 680
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "FREEFORM_ADJUST"

    move v6, v11

    move-object v8, v7

    move-object v9, v7

    move v10, v11

    invoke-direct/range {v1 .. v10}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 683
    iput-wide v12, v1, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;->delay:J

    .line 684
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->timeline:Lcom/adobe/premiereclip/editor/Timeline;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline;->setCoachmarkParam(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 688
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_EDIT_PROJECT"

    invoke-virtual {v0, v1, v11}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 690
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$9;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$9;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkRunnable:Ljava/lang/Runnable;

    .line 704
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->coachmarkRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    :cond_8
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showTwoFingerCoachmark()V

    .line 710
    :cond_9
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->showEmptyTimelineCoachmark()V

    goto/16 :goto_1
.end method

.method public openAudioSettings(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2262
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapSoundtrack()V

    .line 2263
    const/16 v0, 0x2a

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2264
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->openAudioSettingsView()V

    .line 2266
    :cond_0
    return-void
.end method

.method public final openLooks(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2269
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2270
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2271
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2272
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v4

    .line 2269
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapFinishingTouchesForSequenceWithDuration(DII)V

    .line 2274
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapFinishingTouchesLooksMenu()V

    .line 2276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2277
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2278
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 2279
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2280
    return-void
.end method

.method public openSyncTableView()V
    .locals 3

    .prologue
    .line 2820
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2821
    const-string/jumbo v1, "restrictedCompositeId"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2822
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2823
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 2824
    return-void
.end method

.method public openVideoSetting(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->initialLookId:Ljava/lang/String;

    .line 2284
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2285
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2286
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v1

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 2287
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v4

    .line 2284
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapFinishingTouchesForSequenceWithDuration(DII)V

    .line 2289
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/editor/VideoSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2291
    const-string/jumbo v1, "cross_fade"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionAppliedOnSequence()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2292
    const-string/jumbo v1, "fade_in"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeInApplied()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2293
    const-string/jumbo v1, "fade_out"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeOutApplied()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2294
    const-string/jumbo v1, "photo_motion"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotionApplied()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2295
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2297
    const/16 v1, 0x2717

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2298
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2299
    return-void
.end method

.method public pickBackgroundColor(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2231
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2232
    const-string/jumbo v1, "color"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2233
    const/16 v1, 0x271a

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2234
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2235
    return-void
.end method

.method public pickTextColor(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2223
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2224
    const-string/jumbo v1, "color"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2225
    const/16 v1, 0x2719

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2226
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2227
    return-void
.end method

.method public final playPauseClip()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 1161
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    .line 1162
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->playClip()V

    .line 1164
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->clipOptionsView:Lcom/adobe/premiereclip/editor/ClipOptionsView;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/ClipOptionsView;->enableClipMoreOptions(Z)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1167
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1168
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    .line 1181
    :goto_0
    return-void

    .line 1169
    :cond_0
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1172
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1173
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1174
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updateSplitView()V

    .line 1175
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    goto :goto_0

    .line 1176
    :cond_1
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_2

    .line 1177
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "Loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1179
    :cond_2
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "Unexpected value of player state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final playPauseSequence(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1135
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    .line 1136
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 1137
    invoke-static {v4}, Lcom/adobe/premiereclip/util/Utilities;->setThumbnailThreadPoolThrottle(Z)V

    .line 1138
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->playSequence()V

    .line 1139
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1140
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1142
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1143
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1144
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    .line 1158
    :goto_0
    return-void

    .line 1145
    :cond_0
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_1

    .line 1146
    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->setThumbnailThreadPoolThrottle(Z)V

    .line 1147
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 1148
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->updatePlayPauseButton()V

    .line 1149
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->previewPlayPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 1151
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->countDownTimer:Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/EditorActivity$CustomCountDownTimer;->cancelTimer()V

    .line 1152
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setEnabled(Z)V

    goto :goto_0

    .line 1153
    :cond_1
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_2

    .line 1154
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "Loading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1156
    :cond_2
    const-string/jumbo v0, "EditorActivity"

    const-string/jumbo v1, "Unexpected value of player state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeProjectSyncingText()V
    .locals 0

    .prologue
    .line 2844
    return-void
.end method

.method public retryPendingPPro()V
    .locals 1

    .prologue
    .line 2828
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$38;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$38;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2834
    return-void
.end method

.method public final setAudioFadeInSwitch()V
    .locals 3

    .prologue
    .line 2038
    const v0, 0x7f120590

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2039
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeInApplied()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 2040
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v1

    .line 2042
    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$24;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity$24;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2053
    return-void
.end method

.method public final setAudioFadeOutSwitch()V
    .locals 3

    .prologue
    .line 2056
    const v0, 0x7f120593

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2057
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeOutApplied()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 2058
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v1

    .line 2060
    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$25;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity$25;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2071
    return-void
.end method

.method public final setMuteSwitch()V
    .locals 4

    .prologue
    .line 2092
    const v0, 0x7f120584

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2093
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v2

    .line 2095
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2096
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 2097
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->disableAudioControls()V

    .line 2103
    :goto_0
    new-instance v1, Lcom/adobe/premiereclip/editor/EditorActivity$27;

    invoke-direct {v1, p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity$27;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2116
    return-void

    .line 2100
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 2101
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->enableAudioControls()V

    goto :goto_0
.end method

.method public final setSmartVolumeSwitch()V
    .locals 3

    .prologue
    .line 2074
    const v0, 0x7f12058c

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 2075
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSmartVolumeApplied()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 2076
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v1

    .line 2078
    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$26;

    invoke-direct {v2, p0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity$26;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2089
    return-void
.end method

.method public sharingOptionClicked(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->onOptionSelected(Landroid/view/View;)V

    .line 1873
    return-void
.end method

.method public showConnectionFailureDialog(Z)V
    .locals 4

    .prologue
    .line 2807
    const v0, 0x7f0a03e3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2808
    if-nez p1, :cond_0

    .line 2809
    const v0, 0x7f0a03e1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2811
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v2, 0x7f0a03e2

    .line 2812
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2815
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 2816
    return-void
.end method

.method public showConnectionFailureIcon()V
    .locals 1

    .prologue
    .line 2765
    .line 2766
    if-nez p0, :cond_0

    .line 2775
    :goto_0
    return-void

    .line 2767
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$35;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$35;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showProjectSync(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2241
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2242
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 2243
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/EditorActivity;->overridePendingTransition(II)V

    .line 2244
    return-void
.end method

.method public showProjectSyncingText()V
    .locals 0

    .prologue
    .line 2839
    return-void
.end method

.method public showStoryCardConfirmDialog(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipTypeString()Ljava/lang/String;

    move-result-object v0

    .line 2163
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapTurnIntoStorycardForClipType(Ljava/lang/String;)V

    .line 2165
    new-instance v1, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2166
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0507

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2167
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/adobe/premiereclip/editor/EditorActivity$28;

    invoke-direct {v3, p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity$28;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 2180
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0389

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$29;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$29;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V

    .line 2186
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->show()V

    .line 2187
    return-void
.end method

.method public showStoryCardInputDialog(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 2191
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->setClipPlayback()V

    .line 2192
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 2193
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/Editor;->getCurrentClipIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getStoryCardText()Ljava/lang/String;

    move-result-object v0

    .line 2194
    new-instance v1, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;

    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$30;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$30;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;)V

    .line 2202
    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2203
    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->show()V

    .line 2204
    return-void
.end method

.method public showTitleTextInputDialog(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->pause()V

    .line 2208
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->setPauseUX()V

    .line 2209
    new-instance v0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->currentTitleImage:Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTitleText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/premiereclip/editor/EditorActivity$31;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$31;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;)V

    .line 2217
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2218
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->show()V

    .line 2219
    return-void
.end method

.method public splitClip(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->trimBar:Lcom/adobe/premiereclip/editor/RangeSeekBar;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->isSplitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->mEditor:Lcom/adobe/premiereclip/editor/Editor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Editor;->splitClip()V

    .line 2155
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->closeClipOptions()V

    .line 2157
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2159
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 2779
    .line 2780
    if-nez p0, :cond_0

    .line 2789
    :goto_0
    return-void

    .line 2781
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$36;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$36;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 2793
    .line 2794
    if-nez p0, :cond_0

    .line 2803
    :goto_0
    return-void

    .line 2795
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/EditorActivity$37;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/EditorActivity$37;-><init>(Lcom/adobe/premiereclip/editor/EditorActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public storyCardShoot(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1384
    const/16 v0, 0xc

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->shootFromStoryCard()V

    .line 1387
    :cond_0
    return-void
.end method

.method public triggerAddPlayerView()V
    .locals 0

    .prologue
    .line 2863
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->addPlayerView()V

    .line 2864
    return-void
.end method

.method public triggerRemovePlayerView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2850
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    if-eqz v0, :cond_0

    .line 2851
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2853
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/EditorActivity;->disableShareAndPreviewButtons()V

    .line 2854
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingPlayer:Z

    .line 2855
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->loadingBeats:Z

    .line 2856
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/EditorActivity;->playerViewSet:Z

    .line 2857
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/EditorActivity;->onClickPlayer(Landroid/view/View;)V

    .line 2859
    :cond_0
    return-void
.end method
