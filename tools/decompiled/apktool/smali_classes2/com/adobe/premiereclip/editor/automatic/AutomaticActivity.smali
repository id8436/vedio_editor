.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AutomaticActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;
.implements Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;
.implements Lcom/adobe/premiereclip/editor/Editor$Listener;
.implements Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;
.implements Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;


# static fields
.field private static final BACKGROUND_AUDIO_REQUEST:I = 0x42f

.field private static final NUM_PACE_VALUES:I = 0x5

.field private static final NUM_PAGES:I = 0x2

.field private static final SHARING_REQUEST:I = 0x430

.field private static final TAG:Ljava/lang/String; = "AutomaticActivity"


# instance fields
.field private LRAssetCountMoreThanMax:Z

.field private final MY_PERMISSIONS_REQUEST_CAMERA:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX:I

.field private final MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS:I

.field private final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I

.field private final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_AUDIO:I

.field private final MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_GALLERY:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH:I

.field private final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE:I

.field private bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

.field private ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

.field private coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field private convertDialog:Landroid/view/View;

.field private convertDialogOpen:Z

.field private convertToFreeformButton:Landroid/widget/ImageView;

.field private currentProject:Lcom/adobe/premiereclip/project/Project;

.field private dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

.field private exportMode:Z

.field private floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private isComposingTimeline:Z

.field private isPlayerReady:Z

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private loadingMessage:Landroid/widget/TextView;

.field private loadingSpinner:Landroid/widget/ImageView;

.field private mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

.field private mImpactDataHandler:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

.field private mSyncData:Lcom/adobe/premiereclip/project/sequence/SyncData;

.field private mUIHandler:Landroid/os/Handler;

.field private mWM:Landroid/view/WindowManager;

.field private mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

.field private newProject:Z

.field private pausedState:Z

.field private peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

.field private playPauseBtn:Landroid/widget/ImageView;

.field private playerContainerLandscapeSize:[I

.field private playerContainerPortraitSize:[I

.field private playerLayout:Landroid/widget/RelativeLayout;

.field private playerViewSet:Z

.field private previousTab:I

.field private projectKey:Ljava/lang/String;

.field private sequenceButton:Landroid/widget/ImageView;

.field private shareButton:Landroid/widget/ImageView;

.field private sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

.field private snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

.field private syncCloudButton:Landroid/widget/ImageView;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

.field private timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 126
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 182
    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_CAMERA:I

    .line 183
    const/16 v0, 0xe

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE:I

    .line 184
    const/16 v0, 0x29

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_GALLERY:I

    .line 185
    const/16 v0, 0x2a

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_READ_EXTERNAL_STORAGE_FOR_AUDIO:I

    .line 186
    const/16 v0, 0x33

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_PUBLISH:I

    .line 187
    const/16 v0, 0x34

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_GALLERY:I

    .line 188
    const/16 v0, 0x35

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_CC:I

    .line 189
    const/16 v0, 0x36

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE_SHARE_YOUTUBE:I

    .line 190
    const/16 v0, 0x47

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_PHOTOS:I

    .line 191
    const/16 v0, 0x48

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DRIVE:I

    .line 192
    const/16 v0, 0x49

    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->MY_PERMISSIONS_REQUEST_READ_CONTACTS_AND_REQUEST_WRITE_EXTERNAL_STORAGE_DROPBOX:I

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->previousTab:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->previousTab:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->handleNewAudioOrTimelineInfo()V

    return-void
.end method

.method static synthetic access$2000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mWM:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialogOpen:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialogOpen:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->projectKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mImpactDataHandler:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;[F)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->composeTimelineFromImpactData([F)V

    return-void
.end method

.method static synthetic access$2600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    return-void
.end method

.method static synthetic access$2700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/sharing/SharingOptions;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->syncCloudButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->showShareCoachmark()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/project/Project;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/BottomSheetView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private addMedias(Ljava/util/ArrayList;)Z
    .locals 2
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
    .line 756
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->addAssets(Ljava/util/ArrayList;)V

    .line 759
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getCurrentClipIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->onAssetsAdded(I)V

    .line 760
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getCurrentClipIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->saveCurrentClipIndex(I)V

    .line 761
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setClipAudioProperty(Ljava/util/ArrayList;)V

    .line 762
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addOnClickListenerForSyncButton()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->syncCloudButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$7;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$7;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    return-void
.end method

.method private addPlayerView()V
    .locals 2

    .prologue
    .line 1550
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    if-nez v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1552
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    .line 1556
    :cond_0
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1559
    return-void
.end method

.method private closeAndDeleteProject()V
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->deleteProjectWithKey(Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->deleteProjectWithKey(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 751
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 752
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 753
    return-void
.end method

.method private composeTimelineFromImpactData([F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1651
    const-string/jumbo v0, "Impact data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    .line 1653
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1654
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioSyncPace()F

    move-result v1

    .line 1655
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getStartTimeUs()J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v0, v2

    .line 1656
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mSyncData:Lcom/adobe/premiereclip/project/sequence/SyncData;

    if-nez v2, :cond_1

    .line 1657
    new-instance v2, Lcom/adobe/premiereclip/project/sequence/SyncData;

    invoke-direct {v2, p1, v1, v0}, Lcom/adobe/premiereclip/project/sequence/SyncData;-><init>([FFF)V

    iput-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mSyncData:Lcom/adobe/premiereclip/project/sequence/SyncData;

    .line 1662
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mSyncData:Lcom/adobe/premiereclip/project/sequence/SyncData;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/project/Project;->composeAutomaticTimeline(FLcom/adobe/premiereclip/project/sequence/SyncData;Landroid/os/Handler;)V

    .line 1664
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1665
    instance-of v1, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    if-eqz v1, :cond_0

    .line 1666
    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->setSequenceTime(Ljava/lang/Long;)V

    .line 1668
    :cond_0
    iput-boolean v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    .line 1671
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->resetGroups()V

    .line 1673
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->playerReInit(I)V

    .line 1674
    return-void

    .line 1660
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mSyncData:Lcom/adobe/premiereclip/project/sequence/SyncData;

    invoke-virtual {v2, p1, v1, v0}, Lcom/adobe/premiereclip/project/sequence/SyncData;->reset([FFF)V

    goto :goto_0
.end method

.method private disableSequenceButton()V
    .locals 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sequenceButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1796
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sequenceButton:Landroid/widget/ImageView;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1797
    return-void
.end method

.method private disableShareAndConvertButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1775
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1776
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1778
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertToFreeformButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1779
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertToFreeformButton:Landroid/widget/ImageView;

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1781
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->enableSequenceButton()V

    .line 1787
    :goto_0
    return-void

    .line 1785
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->disableSequenceButton()V

    goto :goto_0
.end method

.method private editNewProject()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 645
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "Editing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/NewProjectData;->getMediaRequestType()I

    move-result v2

    .line 647
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->getInstance()Lcom/adobe/premiereclip/project/NewProjectData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/NewProjectData;->getMediaRequestResult()Landroid/content/Intent;

    move-result-object v4

    .line 650
    sparse-switch v2, :sswitch_data_0

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setClipAudioProperty(Ljava/util/ArrayList;)V

    .line 687
    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->reset()V

    .line 688
    :cond_0
    return-void

    .line 652
    :sswitch_0
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "Device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string/jumbo v0, "Gallery_selected_paths"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    new-instance v3, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v3}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 659
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 661
    new-instance v4, Ljava/util/Date;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 665
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v0, v8}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 669
    :sswitch_1
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "CC_ASSET"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->startDownload(Ljava/lang/String;IILandroid/content/Intent;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V

    goto :goto_0

    .line 673
    :sswitch_2
    const-string/jumbo v0, "NewProject"

    const-string/jumbo v1, "Camera asset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {p0, v4}, Lcom/adobe/premiereclip/util/Utilities;->getMediaInfoArrayListFromCameraIntentResult(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 678
    invoke-static {}, Lcom/adobe/premiereclip/media/MediaManager;->getInstance()Lcom/adobe/premiereclip/media/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/media/MediaManager;->addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1, v0, v8}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 682
    :sswitch_3
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "AssetCountMoreThanMax"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->LRAssetCountMoreThanMax:Z

    .line 683
    const-string/jumbo v0, "AdobeAssetCollection"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 684
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->startDownloadFromLRApp(Ljava/lang/String;IILjava/util/ArrayList;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V

    goto/16 :goto_0

    .line 650
    :sswitch_data_0
    .sparse-switch
        0x2329 -> :sswitch_1
        0x232a -> :sswitch_3
        0x2716 -> :sswitch_0
        0x271b -> :sswitch_2
    .end sparse-switch
.end method

.method private enableSequenceButton()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sequenceButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1791
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sequenceButton:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1792
    return-void
.end method

.method private enableShareAndConvertButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1765
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1766
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f0202cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1768
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertToFreeformButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1769
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertToFreeformButton:Landroid/widget/ImageView;

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1771
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->enableSequenceButton()V

    .line 1772
    return-void
.end method

.method private generateSyncPoints()V
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enable()V

    .line 1762
    return-void
.end method

.method private getPlayerSize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 630
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 631
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 632
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 633
    mul-int/lit8 v2, v0, 0x9

    div-int/lit8 v2, v2, 0x10

    .line 634
    new-array v3, v6, [I

    aput v0, v3, v4

    aput v2, v3, v5

    iput-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerContainerPortraitSize:[I

    .line 637
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 638
    mul-int/lit8 v1, v0, 0x10

    div-int/lit8 v1, v1, 0x9

    .line 640
    new-array v2, v6, [I

    aput v1, v2, v4

    aput v0, v2, v5

    iput-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerContainerLandscapeSize:[I

    .line 642
    return-void
.end method

.method private getReadExternalStorageDialog()V
    .locals 4

    .prologue
    .line 1530
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0408

    .line 1532
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0409

    .line 1533
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1535
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 1537
    :cond_0
    return-void
.end method

.method private getWriteExternalStorageDialog()V
    .locals 4

    .prologue
    .line 1540
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1541
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0408

    .line 1542
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0409

    .line 1543
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1545
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 1547
    :cond_0
    return-void
.end method

.method private handleNewAudioOrTimelineInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1677
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    .line 1678
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 1679
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mImpactDataHandler:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    if-nez v1, :cond_0

    .line 1680
    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mImpactDataHandler:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    .line 1682
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1683
    iput-boolean v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isPlayerReady:Z

    .line 1684
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1685
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mImpactDataHandler:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    move-result-object v0

    .line 1686
    if-eqz v0, :cond_1

    .line 1687
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->composeTimelineFromImpactData([F)V

    .line 1695
    :cond_1
    :goto_0
    return-void

    .line 1691
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    .line 1692
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1693
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mImpactDataHandler:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ImpactDataHandler;

    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    goto :goto_0
.end method

.method private setClipAudioProperty(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 769
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 770
    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setVolume(F)V

    .line 771
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSmartVolumeApplied(Z)V

    .line 772
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeInApplied(Z)V

    .line 773
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeOutApplied(Z)V

    goto :goto_0

    .line 775
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClips(Ljava/util/ArrayList;)V

    .line 776
    return-void
.end method

.method private setCoachmarkListener()V
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$10;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->setListener(Lcom/adobe/premiereclip/coachmarks/CoachMarks$Listener;)V

    .line 1815
    return-void
.end method

.method private setTabLayout()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 543
    const v0, 0x7f1200e9

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 544
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    .line 545
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 547
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mWM:Landroid/view/WindowManager;

    .line 548
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 549
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 550
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 551
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 552
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 553
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 554
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 555
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 559
    const v0, 0x7f1200e3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 560
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 561
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 562
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 563
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->setTab(Landroid/view/LayoutInflater;Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 565
    iput v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->previousTab:I

    .line 566
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$6;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 615
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 616
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 617
    return-void
.end method

.method private sharingOptionsClosed()V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->pause()V

    .line 1202
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1204
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->closeView()V

    .line 1205
    return-void
.end method

.method private sharingOptionsOpened()V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->pause()V

    .line 1190
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1193
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->openView()V

    .line 1194
    return-void
.end method

.method private showShareCoachmark()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1818
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03b7

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03b6

    .line 1819
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AUTO_SHARE"

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->shareButton:Landroid/widget/ImageView;

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1822
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 1823
    return-void
.end method

.method private updatePlayerOverlaysAndButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1726
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1727
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->disableShareAndConvertButtons()V

    .line 1751
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->getInstantiatedFragmentCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1752
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    if-eqz v0, :cond_7

    .line 1753
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->disablePacebar()V

    .line 1758
    :cond_1
    :goto_1
    return-void

    .line 1728
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isPlayerReady:Z

    if-nez v0, :cond_5

    .line 1729
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1730
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1731
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingSpinner:Landroid/widget/ImageView;

    const v1, 0x7f05002f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1732
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->disableShareAndConvertButtons()V

    .line 1734
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    if-eqz v0, :cond_4

    .line 1735
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1737
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1740
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1741
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingSpinner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1742
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->enableShareAndConvertButtons()V

    .line 1744
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_6

    .line 1745
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1747
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1755
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$PaceSettings;->enablePacebar()V

    goto :goto_1
.end method


# virtual methods
.method public addMediaFromCC(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1296
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudFileAssetInMediaPicker()V

    .line 1297
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 1298
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1297
    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V

    .line 1299
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1300
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1302
    :cond_0
    return-void
.end method

.method public addMediaFromCamera(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1305
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerUseCamera()V

    .line 1306
    const/16 v0, 0xb

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271b

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 1309
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1310
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1313
    :cond_0
    return-void
.end method

.method public addMediaFromDevice(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1231
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerOnMyDevice()V

    .line 1232
    const/16 v0, 0xe

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "moments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1237
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1238
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1239
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1242
    :cond_0
    return-void
.end method

.method public addMediaFromDropbox(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1273
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Dropbox"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 1274
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

    .line 1276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1277
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1279
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1280
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1281
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1284
    :cond_0
    return-void
.end method

.method public addMediaFromGoogleDrive(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1259
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GoogleDrive"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 1260
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

    .line 1262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1263
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1265
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1266
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1267
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1270
    :cond_0
    return-void
.end method

.method public addMediaFromGooglePhotos(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1245
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "GooglePhotos"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapMediaPickerRemoteSource(Ljava/lang/String;)V

    .line 1246
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

    .line 1248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1250
    const/16 v1, 0x2716

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1251
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1252
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1253
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1256
    :cond_0
    return-void
.end method

.method public addMediaFromLightRoom(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1287
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker()V

    .line 1288
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 1289
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1288
    invoke-virtual {v0, p0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->openCreativeCloudImagePicker(Landroid/app/Activity;Ljava/util/EnumSet;)V

    .line 1290
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1291
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1293
    :cond_0
    return-void
.end method

.method public closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1160
    return-void
.end method

.method public closeAutomode(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->onBackPressed()V

    .line 1122
    return-void
.end method

.method public closeFAB(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1226
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 1228
    :cond_0
    return-void
.end method

.method public closeSharingOptions(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptionsClosed()V

    .line 1209
    return-void
.end method

.method public convertToFreeForm(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->pauseSequence(Landroid/view/View;)V

    .line 1078
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 1079
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    const v1, 0x7f1205bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1080
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 1081
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    const v2, 0x7f1205bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1082
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/utility/FontUtils;->getAdobeCleanRegularTypefaceCollection()Lcom/h/a/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/h/a/d;->a(Landroid/view/View;Lcom/h/a/a;)V

    .line 1083
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialogOpen:Z

    .line 1085
    new-instance v2, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$8;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$9;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 441
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 443
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 445
    sparse-switch p1, :sswitch_data_0

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 447
    :sswitch_0
    if-eqz p3, :cond_0

    .line 448
    const-string/jumbo v0, "track_selected"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 449
    const-string/jumbo v0, "track_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPagerAdapter:Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$ViewPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f1204de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 451
    if-eqz v1, :cond_1

    .line 452
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didReplaceSoundtrackFromLocation(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->handleNewAudioOrTimelineInfo()V

    goto :goto_0

    .line 456
    :cond_1
    const v1, 0x7f0a0384

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    :sswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 462
    const-string/jumbo v0, "publish_video_ccv"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 463
    if-eqz v0, :cond_0

    .line 464
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 465
    const-string/jumbo v0, "title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    const-string/jumbo v1, "unlisted"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 467
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 468
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setCCVPublishData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 473
    :sswitch_2
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 474
    const-string/jumbo v0, "youtube_upload"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 475
    if-eqz v0, :cond_0

    .line 476
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 477
    const-string/jumbo v0, "AutomaticActivity"

    const-string/jumbo v1, "Back To Editor Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string/jumbo v0, "account_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    const-string/jumbo v0, "video_access"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    const-string/jumbo v0, "title"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    const-string/jumbo v0, "description"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    const-string/jumbo v0, "tag"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 485
    const-string/jumbo v0, "AutomaticActivity"

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

    .line 486
    const-string/jumbo v0, "AutomaticActivity"

    const-string/jumbo v1, "setting YouTubeCredentials"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 489
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/sharing/SharingManager;->setYouTubeCredential(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    :sswitch_3
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 495
    const-string/jumbo v0, "twitter_upload"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 496
    if-eqz v0, :cond_0

    .line 497
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 498
    const-string/jumbo v0, "tweet"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    const-string/jumbo v2, "secret"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/sharing/SharingManager;->setMode(I)V

    .line 503
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getProjectExportName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/adobe/premiereclip/sharing/SharingManager;->setTwitterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :sswitch_4
    if-ne p2, v0, :cond_2

    .line 509
    invoke-static {p0, p3}, Lcom/adobe/premiereclip/util/Utilities;->getMediaInfoArrayListFromCameraIntentResult(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->addMedias(Ljava/util/ArrayList;)Z

    goto/16 :goto_0

    .line 514
    :cond_2
    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 519
    :sswitch_5
    if-ne p2, v0, :cond_0

    .line 520
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didImportMyDeviceAssetInMediaPicker()V

    .line 521
    const-string/jumbo v0, "Gallery_selected_paths"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 522
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 523
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    new-instance v4, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-direct {v4}, Lcom/adobe/premiereclip/media/MediaInfo;-><init>()V

    .line 525
    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setLocalPath(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetUrl(Ljava/lang/String;)V

    .line 527
    new-instance v5, Ljava/util/Date;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/media/MediaInfo;->setAssetDate(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->addMedias(Ljava/util/ArrayList;)Z

    goto/16 :goto_0

    .line 537
    :sswitch_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v1, v1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->startDownload(Ljava/lang/String;IILandroid/content/Intent;Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;)V

    goto/16 :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x42f -> :sswitch_0
        0x2329 -> :sswitch_6
        0x2716 -> :sswitch_5
        0x271b -> :sswitch_4
        0x4e21 -> :sswitch_1
        0x4e22 -> :sswitch_2
        0x4e23 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->closeSharingOptions(Landroid/view/View;)V

    .line 422
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;->closeView()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 408
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->closeTimeline()V

    goto :goto_0

    .line 411
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialogOpen:Z

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialogOpen:Z

    goto :goto_0

    .line 415
    :cond_4
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->pauseSequence(Landroid/view/View;)V

    .line 416
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXWriter;->commitToDCX()V

    .line 417
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapHomeInProjectEditor()V

    .line 418
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->onBackPressed()V

    .line 419
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 420
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onClipDelete(I)V
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->onClickDelete(Landroid/content/Context;)V

    .line 1214
    return-void
.end method

.method public onClipSelected(Z)V
    .locals 0

    .prologue
    .line 1606
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mUIHandler:Landroid/os/Handler;

    .line 202
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->cancelAllUnexecutedTasks()V

    .line 204
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setContentView(I)V

    .line 205
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 207
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    const-string/jumbo v3, "project_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->projectKey:Ljava/lang/String;

    .line 209
    const-string/jumbo v3, "newProject"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/premiereclip/project/NewProjectData;->isRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->newProject:Z

    .line 211
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v3

    .line 212
    iput-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 214
    if-eqz v3, :cond_2

    .line 215
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->setCurrentComposite(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/ProjectManager;->loadSequence(Lcom/adobe/premiereclip/project/Project;)V

    .line 221
    :goto_1
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v4, v4, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->ccDownloadSession:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    .line 223
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowProjectEditorView()V

    .line 224
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->newProject:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->editNewProject()V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f04016a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialog:Landroid/view/View;

    .line 231
    const v0, 0x7f1200e7

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseBtn:Landroid/widget/ImageView;

    .line 232
    const v0, 0x7f1200e1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertToFreeformButton:Landroid/widget/ImageView;

    .line 233
    const v0, 0x7f1200e2

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->shareButton:Landroid/widget/ImageView;

    .line 234
    const v0, 0x7f1200df

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sequenceButton:Landroid/widget/ImageView;

    .line 236
    const v0, 0x7f1205dc

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    const v0, 0x7f1204c1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingSpinner:Landroid/widget/ImageView;

    .line 239
    const v0, 0x7f1200e0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->syncCloudButton:Landroid/widget/ImageView;

    .line 240
    const v0, 0x7f1205dd

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingMessage:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->loadingMessage:Landroid/widget/TextView;

    const v4, 0x7f0a03dd

    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->projectKey:Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->dcxSyncStatusButton:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;

    .line 244
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->addOnClickListenerForSyncButton()V

    .line 246
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setTabLayout()V

    .line 247
    const v0, 0x7f1200de

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 249
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getPlayerSize()V

    .line 250
    const v0, 0x7f1200e5

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerLayout:Landroid/widget/RelativeLayout;

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerContainerPortraitSize:[I

    aget v4, v4, v1

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    const v0, 0x7f1200e6

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerContainerPortraitSize:[I

    aget v4, v4, v1

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-direct {v0, p0, v4}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    .line 256
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    new-instance v4, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$1;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->setListener(Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager$Listener;)V

    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->getTimeline()Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->setClipDeleteListener(Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;)V

    .line 273
    const v0, 0x7f120127

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v4, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$2;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/h;)V

    .line 293
    new-instance v0, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    invoke-direct {v0}, Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->peakGenerator:Lcom/adobe/premiereclip/editor/waveform/AudioPeakGenerator;

    .line 294
    new-instance v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 295
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioTrack;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    .line 296
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    invoke-direct {v0, p0, v4, v3, v5}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/editor/SnapToBeatController;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setListener(Lcom/adobe/premiereclip/editor/Editor$Listener;)V

    .line 299
    new-instance v0, Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-direct {v0, p0, v3}, Lcom/adobe/premiereclip/sharing/SharingOptions;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->setListener(Lcom/adobe/premiereclip/sharing/SharingOptions$Listener;)V

    .line 302
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 303
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    .line 304
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->convertDialogOpen:Z

    .line 305
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    .line 307
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v3, v3, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/metrics/Metrics;->didFinishProjectOpenForMyProject(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->snapToBeatController:Lcom/adobe/premiereclip/editor/SnapToBeatController;

    new-instance v3, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$3;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$3;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->setListener(Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;)V

    .line 314
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->generateSyncPoints()V

    .line 315
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    .line 316
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setCoachmarkListener()V

    .line 317
    invoke-static {p0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    .line 318
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->pausedState:Z

    .line 320
    const v0, 0x7f1200eb

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$4;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 327
    new-instance v0, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    .line 328
    new-instance v0, Lcom/adobe/premiereclip/BottomSheetView;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/BottomSheetView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    .line 330
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    iget-object v0, v0, Lcom/adobe/premiereclip/BottomSheetView;->background:Landroid/view/View;

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$5;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    return-void

    :cond_1
    move v0, v2

    .line 209
    goto/16 :goto_0

    .line 218
    :cond_2
    const-string/jumbo v0, "Editor"

    const-string/jumbo v4, "Could not set current project"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->onDestroy()V

    .line 396
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 397
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 398
    return-void
.end method

.method public onDownloadCancel(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 739
    if-ne p1, v1, :cond_0

    .line 740
    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 742
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->newProject:Z

    if-eqz v0, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->closeAndDeleteProject()V

    .line 745
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

    .line 704
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 705
    if-lez p3, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0398

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 708
    :cond_0
    sub-int v1, p2, p3

    sub-int/2addr v1, v0

    .line 709
    if-lez v1, :cond_1

    .line 710
    new-instance v2, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    .line 711
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a039b

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 712
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v6}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 714
    invoke-virtual {v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 716
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->addMedias(Ljava/util/ArrayList;)Z

    move-result v0

    .line 717
    iget-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->LRAssetCountMoreThanMax:Z

    if-eqz v1, :cond_2

    .line 718
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v2, 0x7f0a042b

    .line 719
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a042c

    .line 720
    invoke-virtual {p0, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v7}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 722
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 724
    :cond_2
    if-eqz v0, :cond_4

    .line 725
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->pausedState:Z

    if-nez v0, :cond_3

    .line 726
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getCurrentClipIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->setClips(Ljava/util/ArrayList;I)V

    .line 728
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->handleNewAudioOrTimelineInfo()V

    .line 729
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->newProject:Z

    if-eqz v0, :cond_4

    .line 730
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 731
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SNAP_TO_BEAT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 732
    iput-boolean v6, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->newProject:Z

    .line 735
    :cond_4
    return-void
.end method

.method public onDownloadProgress(D)V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method public onDownloadStart()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public onExportEnded(Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/SharingManager;->onExportEnded(Ljava/io/File;Z)V

    .line 1598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 1599
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->initPlayback()Z

    .line 1601
    :cond_0
    return-void
.end method

.method public onExportProgress(D)V
    .locals 1

    .prologue
    .line 1589
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->getSharingManager()Lcom/adobe/premiereclip/sharing/SharingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/SharingManager;->setExportProgress(D)V

    .line 1592
    :cond_0
    return-void
.end method

.method public onLoadingCompleted(Z)V
    .locals 1

    .prologue
    .line 1616
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isPlayerReady:Z

    if-nez v0, :cond_0

    .line 1617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isPlayerReady:Z

    .line 1618
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1620
    :cond_0
    return-void
.end method

.method public onLoadingStarted()V
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isPlayerReady:Z

    .line 1611
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1612
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->pausedState:Z

    .line 374
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 375
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->pause()V

    .line 376
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 377
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->onPause()V

    .line 378
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 379
    return-void
.end method

.method public onPlayerPaused()V
    .locals 0

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1580
    return-void
.end method

.method public onPlayerTimeUpdate(J)V
    .locals 0

    .prologue
    .line 1585
    return-void
.end method

.method public onRangeSeekbarThumbMoveEnded()V
    .locals 0

    .prologue
    .line 1630
    return-void
.end method

.method public onRangeSeekbarThumbMoveStarted()V
    .locals 0

    .prologue
    .line 1625
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    const v6, 0x7f05002c

    const v5, 0x7f05002b

    const/16 v4, 0x2716

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1317
    sparse-switch p1, :sswitch_data_0

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1320
    :sswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 1321
    invoke-static {}, Lcom/adobe/premiereclip/CameraCaptureManager;->getInstance()Lcom/adobe/premiereclip/CameraCaptureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mediaCaptureOptionsView:Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;

    const/16 v2, 0x271b

    invoke-virtual {v0, p0, v1, v2}, Lcom/adobe/premiereclip/CameraCaptureManager;->showMediaCaptureOptions(Landroid/app/Activity;Lcom/adobe/premiereclip/editor/MediaCaptureOptionsView;I)V

    .line 1323
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1324
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto :goto_0

    .line 1331
    :cond_1
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a038f

    .line 1333
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0390

    .line 1334
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1336
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto :goto_0

    .line 1345
    :sswitch_1
    array-length v0, p3

    if-lez v0, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 1346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1347
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "moments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    invoke-virtual {p0, v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1350
    invoke-virtual {p0, v5, v6}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1351
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1352
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto :goto_0

    .line 1358
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getReadExternalStorageDialog()V

    goto :goto_0

    .line 1379
    :sswitch_2
    array-length v0, p3

    if-lez v0, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 1380
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->openSongCategoriesView()V

    goto/16 :goto_0

    .line 1383
    :cond_3
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getReadExternalStorageDialog()V

    goto/16 :goto_0

    .line 1390
    :sswitch_3
    array-length v0, p3

    if-lez v0, :cond_4

    aget v0, p3, v2

    if-nez v0, :cond_4

    .line 1391
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->sharePublish()V

    goto/16 :goto_0

    .line 1394
    :cond_4
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWriteExternalStorageDialog()V

    goto/16 :goto_0

    .line 1401
    :sswitch_4
    array-length v0, p3

    if-lez v0, :cond_5

    aget v0, p3, v2

    if-nez v0, :cond_5

    .line 1402
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareSaveGallery()V

    goto/16 :goto_0

    .line 1405
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWriteExternalStorageDialog()V

    goto/16 :goto_0

    .line 1412
    :sswitch_5
    array-length v0, p3

    if-lez v0, :cond_6

    aget v0, p3, v2

    if-nez v0, :cond_6

    .line 1413
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareSaveCC()V

    goto/16 :goto_0

    .line 1416
    :cond_6
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWriteExternalStorageDialog()V

    goto/16 :goto_0

    .line 1423
    :sswitch_6
    array-length v0, p3

    if-lez v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 1424
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->shareYoutube()V

    goto/16 :goto_0

    .line 1427
    :cond_7
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWriteExternalStorageDialog()V

    goto/16 :goto_0

    .line 1436
    :sswitch_7
    array-length v0, p3

    .line 1437
    if-ne v0, v3, :cond_8

    aget v1, p3, v2

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    aget v0, p3, v2

    if-nez v0, :cond_a

    aget v0, p3, v3

    if-nez v0, :cond_a

    .line 1441
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1442
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_photos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1443
    invoke-virtual {p0, v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1444
    invoke-virtual {p0, v5, v6}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1445
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1446
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 1450
    :cond_a
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 1451
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1452
    :cond_b
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v1, 0x7f0a0438

    .line 1453
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03fe

    .line 1454
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1456
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 1466
    :sswitch_8
    array-length v0, p3

    .line 1467
    if-ne v0, v3, :cond_c

    aget v1, p3, v2

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    aget v0, p3, v2

    if-nez v0, :cond_e

    aget v0, p3, v3

    if-nez v0, :cond_e

    .line 1471
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1472
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "google_drive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    invoke-virtual {p0, v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1474
    invoke-virtual {p0, v5, v6}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1475
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1476
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 1480
    :cond_e
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 1481
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    :cond_f
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const-string/jumbo v1, "Need Access"

    const-string/jumbo v2, "Please enable Storage and Contacts access in Settings->Apps->Adobe Clip->Permissions"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1486
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 1496
    :sswitch_9
    array-length v0, p3

    .line 1497
    if-ne v0, v3, :cond_10

    aget v1, p3, v2

    if-eqz v1, :cond_11

    :cond_10
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    aget v0, p3, v2

    if-nez v0, :cond_12

    aget v0, p3, v3

    if-nez v0, :cond_12

    .line 1501
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/mediabrowser/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1502
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    invoke-virtual {p0, v0, v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1504
    invoke-virtual {p0, v5, v6}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1505
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 1506
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->bottomSheetView:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    goto/16 :goto_0

    .line 1510
    :cond_12
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    .line 1511
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    :cond_13
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const-string/jumbo v1, "Need Access"

    const-string/jumbo v2, "Please enable Storage and Contacts access in Settings->Apps->Adobe Clip->Permissions"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1516
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    goto/16 :goto_0

    .line 1317
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_1
        0x2a -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x47 -> :sswitch_7
        0x48 -> :sswitch_8
        0x49 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->pausedState:Z

    .line 368
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 369
    return-void
.end method

.method public onSharingEnded()V
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->endExport()V

    .line 1643
    return-void
.end method

.method public onSharingOptionsClosed()V
    .locals 0

    .prologue
    .line 1647
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptionsClosed()V

    .line 1648
    return-void
.end method

.method public onSharingStarted(Z)V
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 1637
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->startExport(Z)V

    .line 1638
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 342
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 343
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setVolumeControlStream(I)V

    .line 344
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->init()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->addPlayerView()V

    .line 346
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->startSharing()V

    .line 361
    :cond_0
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->resetAllKeys()V

    .line 362
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->initPlayback()Z

    .line 350
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->handleNewAudioOrTimelineInfo()V

    .line 352
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_MIX:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 353
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    sget-object v1, Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;->AUDIO_SNAP_TO_BEAT:Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->setSequenceAudioOptions(Lcom/adobe/premiereclip/editor/Editor$SequenceAudioOptions;F)V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->newProject:Z

    goto :goto_0

    .line 358
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->disableShareAndConvertButtons()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->setVolumeControlStream(I)V

    .line 384
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    .line 385
    iput-boolean v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->exportMode:Z

    .line 386
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingOptions;->stop()V

    .line 387
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 388
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->clearListener()V

    .line 389
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->release()V

    .line 390
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 391
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 426
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 427
    if-eqz p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "AUTO_FIRST_TIME"

    invoke-virtual {v0, v1, v5}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03b3

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03b2

    .line 430
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AUTO_FIRST_TIME"

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 433
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 436
    :cond_0
    return-void
.end method

.method public openSequenceView(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1055
    const v0, 0x7f1200eb

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->pause()V

    .line 1063
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1064
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->disableShareAndConvertButtons()V

    .line 1065
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timelineViewManager:Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/TimelineViewManager;->openTimeline()V

    .line 1067
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1068
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    const v1, 0x7f0a03b5

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03b4

    .line 1069
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AUTO_SEQUENCE"

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->timeline:Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;

    .line 1071
    invoke-virtual {v4}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v6

    move-object v8, v6

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1072
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->coachMarks:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 1074
    :cond_0
    return-void
.end method

.method public openSongCategories(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1163
    const/16 v0, 0x2a

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1, p0}, Lcom/adobe/premiereclip/util/MarshmallowUtils;->getPermission(ILjava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->openSongCategoriesView()V

    .line 1167
    :cond_0
    return-void
.end method

.method public openSongCategoriesView()V
    .locals 3

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1171
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const/16 v1, 0x42f

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1173
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->overridePendingTransition(II)V

    .line 1174
    return-void
.end method

.method public openSyncTableView()V
    .locals 3

    .prologue
    .line 1882
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1883
    const-string/jumbo v1, "restrictedCompositeId"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1884
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    iget-object v2, v2, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1885
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->startActivity(Landroid/content/Intent;)V

    .line 1886
    return-void
.end method

.method public pauseSequence(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->pause()V

    .line 1154
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1155
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1156
    return-void
.end method

.method public playPauseSequence(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 1131
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    move-result-object v0

    .line 1132
    const-string/jumbo v1, "AutomaticActivity"

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->playSequence()V

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1148
    :goto_0
    return-void

    .line 1138
    :cond_1
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1140
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->mEditor:Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticEditor;->pause()V

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1143
    :cond_3
    sget-object v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-ne v0, v1, :cond_4

    .line 1144
    const-string/jumbo v0, "AutomaticActivity"

    const-string/jumbo v1, "Loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1146
    :cond_4
    const-string/jumbo v0, "AutomaticActivity"

    const-string/jumbo v1, "Unexpected value of player state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeProjectSyncingText()V
    .locals 0

    .prologue
    .line 1905
    return-void
.end method

.method public retryPendingPPro()V
    .locals 1

    .prologue
    .line 1889
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$14;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$14;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1895
    return-void
.end method

.method public shareProject(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 1177
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1178
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1179
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStillImageClips()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1180
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numTitleClips()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1181
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numStorycardClips()I

    move-result v4

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1182
    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v5

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->currentProject:Lcom/adobe/premiereclip/project/Project;

    .line 1183
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v6

    .line 1177
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->setCurrentProjectSignatureWithVideoClips(IIIIILjava/lang/String;)V

    .line 1184
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapExport()V

    .line 1185
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptionsOpened()V

    .line 1186
    return-void
.end method

.method public sharingOptionClicked(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->sharingOptions:Lcom/adobe/premiereclip/sharing/SharingOptions;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/sharing/SharingOptions;->onOptionSelected(Landroid/view/View;)V

    .line 1198
    return-void
.end method

.method public showConnectionFailureDialog(Z)V
    .locals 4

    .prologue
    .line 1869
    const v0, 0x7f0a03e3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1870
    if-nez p1, :cond_0

    .line 1871
    const v0, 0x7f0a03e1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1873
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    const v2, 0x7f0a03e2

    .line 1874
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1877
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 1878
    return-void
.end method

.method public showConnectionFailureIcon()V
    .locals 1

    .prologue
    .line 1827
    .line 1828
    if-nez p0, :cond_0

    .line 1837
    :goto_0
    return-void

    .line 1829
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$11;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showProjectSyncingText()V
    .locals 0

    .prologue
    .line 1900
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 1841
    .line 1842
    if-nez p0, :cond_0

    .line 1851
    :goto_0
    return-void

    .line 1843
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$12;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$12;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 1855
    .line 1856
    if-nez p0, :cond_0

    .line 1865
    :goto_0
    return-void

    .line 1857
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$13;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity$13;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public touchPlayer(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isComposingTimeline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->isPlayerReady:Z

    if-eqz v0, :cond_0

    .line 1126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playPauseSequence(Landroid/view/View;)V

    .line 1128
    :cond_0
    return-void
.end method

.method public triggerAddPlayerView()V
    .locals 0

    .prologue
    .line 1574
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->addPlayerView()V

    .line 1575
    return-void
.end method

.method public triggerRemovePlayerView()V
    .locals 1

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->playerViewSet:Z

    .line 1568
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticActivity;->updatePlayerOverlaysAndButtons()V

    .line 1570
    :cond_0
    return-void
.end method
