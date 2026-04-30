.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;
.source "CCFilesWithUploadFragment.java"


# static fields
.field public static final EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I

.field private static T:Ljava/lang/String;


# instance fields
.field _adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

.field protected _alphaPane:Landroid/view/View;

.field private _assetBrowserMenu:Landroid/view/Menu;

.field private _ccFilesMenu:Landroid/view/Menu;

.field private _ccfilesEditProgressObserver:Ljava/util/Observer;

.field private _ccfilesUploadObserver:Ljava/util/Observer;

.field private _collaborationVisibilityObserver:Ljava/util/Observer;

.field private _collaboratorMenuItem:Landroid/view/MenuItem;

.field private _createFolderFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private _editDialogVisible:Z

.field private _editMode:Z

.field private _editProgressDialogBar:Landroid/app/ProgressDialog;

.field private _editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

.field protected _floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private _folderLoadingProgressBar:Landroid/widget/ProgressBar;

.field private _leaveFolderMenuItem:Landroid/view/MenuItem;

.field private _moveButton:Landroid/widget/ImageButton;

.field private _notificationCountTextView:Landroid/widget/TextView;

.field private _notificationIcon:Landroid/widget/ImageView;

.field private _notificationMenuItem:Landroid/view/MenuItem;

.field private _notificationView:Landroid/view/View;

.field private _progressBar:Landroid/widget/ProgressBar;

.field private _showNoFiles:Z

.field private _takePhotoFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private _uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

.field private _uploadFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field private _uploadImagesFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field protected ccFilesEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;

.field private handler:Landroid/os/Handler;

.field private isCurrentFolderOwner:Z

.field private requestMade:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editMode:Z

    .line 100
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editDialogVisible:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_showNoFiles:Z

    .line 107
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isCurrentFolderOwner:Z

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideMenu()V

    return-void
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showMenu()V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;I)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setNotificationCount(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleMoveButtonClick(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleShareAdvanceButtonClick()V

    return-void
.end method

.method static synthetic access$1802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetBrowserMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isAnyUploadInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaboratorMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaboratorMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_leaveFolderMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->disableCollaborationRelatedMenuItems()V

    return-void
.end method

.method static synthetic access$2300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleLeaveFolderVisibility(Z)V

    return-void
.end method

.method static synthetic access$2402(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccFilesMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->leaveFolder(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->action_forceRefresh()V

    return-void
.end method

.method static synthetic access$2800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->action_editStarted()V

    return-void
.end method

.method static synthetic access$2900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->action_editCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_takePhotoFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->leaveFolder(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;D)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setEditProgress(D)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_createFolderFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadImagesFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleCreateNewFolderButtonClick()V

    return-void
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->requestMade:Z

    return p1
.end method

.method private action_editCompleted()V
    .locals 1

    .prologue
    .line 1611
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->hasEditCompletionHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditCompletionHandled(Z)V

    .line 1613
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditInProgress(Z)V

    .line 1614
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->clearSelection()V

    .line 1615
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->getLastSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    move-result-object v0

    .line 1616
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showEditSummaryBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;)V

    .line 1618
    :cond_0
    return-void
.end method

.method private action_editStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1564
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->hasEditStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditStarted(Z)V

    .line 1567
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;->setEditMenuVisibilty(Z)V

    .line 1570
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showProgressDialogBar()V

    .line 1574
    :cond_1
    return-void
.end method

.method private action_forceRefresh()V
    .locals 0

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->reloadDataFromDataSource()V

    .line 1622
    return-void
.end method

.method private checkAndPrepareforAnyUploadsInContainer()V
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    if-eqz v0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    .line 870
    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getDestinationFolder()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->prepareForUploadInContainer(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    goto :goto_0
.end method

.method private createEditProgressDialogBar()Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 1586
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    .line 1587
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->getLastSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    move-result-object v0

    .line 1588
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getEditProgressString(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1590
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1591
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private createEditSummaryView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 906
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    if-eqz v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 908
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 909
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 910
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_theme_actionbar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 912
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 915
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;-><init>(Landroid/content/Context;)V

    .line 916
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 917
    if-nez v0, :cond_1

    .line 918
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 926
    :goto_1
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextColor(I)V

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextSize(IF)V

    .line 930
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 932
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    .line 933
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    .line 934
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    .line 935
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 922
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 923
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private createFolderLoadingProgressBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 149
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 150
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_asset_edit_move_progress_bar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getPixelsFromDP(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 152
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method private disableCollaborationRelatedMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaboratorMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 641
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_leaveFolderMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 642
    return-void
.end method

.method private getEditProgressString(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1595
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    move-result-object v0

    .line 1596
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v1, v2, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_rename_in_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1607
    :goto_0
    return-object v0

    .line 1598
    :cond_0
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v1, v2, :cond_1

    .line 1599
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_move_in_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1600
    :cond_1
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v1, v2, :cond_2

    .line 1601
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_copy_in_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1602
    :cond_2
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v1, v2, :cond_3

    .line 1603
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_archive_in_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1604
    :cond_3
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v1, :cond_4

    .line 1605
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_delete_in_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1607
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_edit_in_progress:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPixelsFromDP(F)I
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 647
    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private handleCreateNewFolderButtonClick()V
    .locals 3

    .prologue
    .line 892
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$6;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    .line 899
    const-string/jumbo v1, "mobile.ccmobile.createNewFolder"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 900
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_CREATE_NEWFOLDER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method private handleFABMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;

    invoke-direct {v1, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FileFloatingActionMenuHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/h;)V

    .line 500
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_alphaPane:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FABClickListener;

    invoke-direct {v0, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$FABClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;)V

    .line 518
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_createFolderFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_takePhotoFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadImagesFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isNetworkOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_isReadOnly:Z

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleLeaveFolderVisibility(Z)V
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_leaveFolderMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 777
    return-void

    .line 776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMoveButtonClick(Z)V
    .locals 3

    .prologue
    .line 880
    if-eqz p1, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_EDIT_COPY_OPERATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    .line 881
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v1

    .line 882
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 884
    return-void

    .line 880
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_EDIT_MOVE_OPERATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    goto :goto_0
.end method

.method private handleMoveButtonNetworkChange(Z)V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_moveButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_moveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 791
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_moveButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 793
    :cond_0
    return-void

    .line 791
    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method private handleShareAdvanceButtonClick()V
    .locals 3

    .prologue
    .line 887
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    .line 888
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSET_VIEW_CC_SHARE_ADVANCE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 889
    return-void
.end method

.method private hideMenu()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetBrowserMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetBrowserMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideMenuItemsUtil(Landroid/view/Menu;)V

    .line 1219
    :cond_0
    return-void
.end method

.method private isAnyUploadInProgress()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;->isAnyUploadInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOwner()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isCurrentFolderOwner:Z

    return v0
.end method

.method private leaveFolder(Z)V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;-><init>()V

    .line 160
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->setFragmentCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;)V

    .line 191
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "Leave Folder Alert"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private leaveFolder(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;-><init>()V

    .line 197
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->setFragmentCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;)V

    .line 230
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 231
    const-string/jumbo v2, "Leave Folder Alert"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private prepareForUploadInContainer(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1070
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    .line 1071
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;->uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 1072
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;->isAnyUploadInProgress:Z

    .line 1075
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->set_targetCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 1076
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setUpListViewToTrackActiveUploads(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 1077
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->set_targetCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 1078
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->setUpListViewToTrackActiveUploads(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 1079
    return-void
.end method

.method private setDragDropEventListener()V
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->ROOT:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    invoke-direct {v1, v2, v3, p0}, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 475
    return-void
.end method

.method private setEditProgress(D)V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 652
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 653
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 654
    return-void
.end method

.method private setLayoutMargin(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 490
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 491
    return-void
.end method

.method private setNotificationCount(I)V
    .locals 2

    .prologue
    .line 812
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    return-void
.end method

.method private showCoachMarkForCollaboration(Z)V
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 842
    if-nez v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    if-eqz p1, :cond_0

    .line 846
    const-string/jumbo v0, "collaboration"

    goto :goto_0
.end method

.method private showEditSummaryBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 941
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    move-result-object v4

    .line 942
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->hasMoveOperationInSameLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 946
    :cond_0
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v2, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_move_error_same_location:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1058
    :goto_0
    return-void

    .line 949
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_copy_error_same_location:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 952
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->createEditSummaryView()V

    .line 955
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->getErrorCount()I

    move-result v5

    .line 956
    if-lez v5, :cond_7

    move v0, v1

    .line 957
    :goto_1
    const-string/jumbo v3, ""

    .line 958
    if-eqz v0, :cond_f

    .line 959
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    sget v6, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_error_banner_background:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 961
    if-ne v5, v1, :cond_a

    .line 962
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v6, :cond_8

    .line 963
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_EDIT_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 968
    :goto_2
    iget-object v3, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v3, v6, :cond_9

    .line 969
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_DELETE_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 974
    :cond_3
    :goto_3
    iget-object v3, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v3, v4, :cond_4

    .line 975
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_COPY_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 991
    :cond_4
    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 993
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    :goto_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->reloadDataFromDataSource()V

    .line 1042
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_5

    .line 1043
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1044
    :cond_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_6

    .line 1045
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1046
    :cond_6
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$8;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 956
    goto/16 :goto_1

    .line 965
    :cond_8
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v6, :cond_1c

    .line 966
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_ARCHIVE_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 971
    :cond_9
    iget-object v3, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v3, v6, :cond_3

    .line 972
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_MOVE_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 977
    :cond_a
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v6, :cond_b

    .line 978
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_EDIT_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 980
    :cond_b
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v6, :cond_c

    .line 981
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_ARCHIVE_MULTIPLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 983
    :cond_c
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v6, :cond_d

    .line 984
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_DELETE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 986
    :cond_d
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v6, :cond_e

    .line 987
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_MOVE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 989
    :cond_e
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v4, :cond_1b

    .line 990
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_COPY_MULTIPLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1001
    :cond_f
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_10

    .line 1002
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1005
    :cond_10
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    sget v5, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_success_banner_background:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1007
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->getSuccessCount()I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 1008
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_12

    .line 1009
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_EDIT_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1038
    :cond_11
    :goto_6
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->getSuccessCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 1011
    :cond_12
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_13

    .line 1012
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_ARCHIVE_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1014
    :cond_13
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_14

    .line 1015
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_DELETE_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1017
    :cond_14
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_15

    .line 1018
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_MOVE_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1020
    :cond_15
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_11

    .line 1021
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_COPY_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1023
    :cond_16
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_17

    .line 1024
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_EDIT_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1026
    :cond_17
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_18

    .line 1027
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_ARCHIVE_MULTIPLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 1029
    :cond_18
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_19

    .line 1030
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_DELETE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 1032
    :cond_19
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_MOVE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_1a

    .line 1033
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_MOVE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 1035
    :cond_1a
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_COPY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    if-ne v0, v5, :cond_11

    .line 1036
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_COPY_MULTIPLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_1b
    move-object v0, v3

    goto/16 :goto_4

    :cond_1c
    move-object v0, v3

    goto/16 :goto_2
.end method

.method private showMenu()V
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetBrowserMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetBrowserMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showMenuItemsUtil(Landroid/view/Menu;)V

    .line 1225
    :cond_0
    return-void
.end method

.method private showProgressDialogBar()V
    .locals 1

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->createEditProgressDialogBar()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    .line 1581
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1583
    return-void
.end method


# virtual methods
.method protected addFabToRootView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 390
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 395
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->files_floating_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 396
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_files_uploadFAB:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 397
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_files_uploadAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 398
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_files_takePhoto:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_takePhotoFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 399
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_files_createFolder:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_createFolderFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 400
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_files_uploadImages:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadImagesFAB:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 403
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_files_alpha_pane:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_alphaPane:Landroid/view/View;

    .line 405
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleFABMenu()V

    .line 407
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 408
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 409
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 412
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 413
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 415
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getNavBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 416
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getFabPaddingWidth()I

    move-result v2

    .line 417
    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 418
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_0
    return-void
.end method

.method protected cleanUpUploadRelatedSetup()V
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->cleanUpUploadRelatedSetup()V

    .line 1083
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->cleanUpUploadRelatedSetup()V

    .line 1084
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    .line 1085
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 1086
    return-void
.end method

.method public collapseFloatingActionMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setVisible(Landroid/view/View;Z)V

    .line 324
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setVisibilityTab(Z)V

    .line 326
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 328
    :cond_0
    return-void
.end method

.method protected configureEmptyStateView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isContainerReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_asset_browser_empty_state_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1262
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_showNoFiles:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 1269
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    return-object v0
.end method

.method protected ds_startedLoadingMoreFolders()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 370
    :cond_0
    return-void
.end method

.method protected ds_stoppedLoadingMoreFolders()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_folderLoadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 379
    :cond_0
    return-void
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_cc_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_move_fragment_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getEditCommandsHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    return-object v0
.end method

.method protected getEmptyStateViewId()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setFabNotAdded(Z)V

    .line 384
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_assetbrowser_empty_state_view:I

    return v0
.end method

.method protected getInternalFilters()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    .line 680
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;->hasExtraControls()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;->getExtraConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->shouldShowOnlyFolders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;->FilterOnlyFolders:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    .line 686
    :goto_0
    return-object v0

    .line 683
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_1
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getInternalFilters()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleCollaborationVisibilty(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 829
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isSearchBarOpened()Z

    move-result v2

    .line 830
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isContainerShowingRootCollection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    if-nez v2, :cond_0

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 832
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->disableCollaborationRelatedMenuItems()V

    .line 838
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 831
    goto :goto_0

    .line 835
    :cond_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 836
    if-nez v2, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showCoachMarkForCollaboration(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public handleCurrentNetworkStatusWithUpload(Z)V
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isContainerShowingRootCollection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaboratorMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaboratorMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 754
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleLeaveFolderVisibility(Z)V

    goto :goto_0
.end method

.method protected handleExtraConfigurations(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x1020002

    .line 658
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->getMoveButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetEditActivity;->isMoveFragmentPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setMoveOperation(Z)V

    .line 663
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->createFolderLoadingProgressBar()V

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_showNoFiles:Z

    .line 665
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->shouldShowCreateNewFolder()Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->getIsCopy()Z

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;ZLcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    .line 669
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isContainerShowingRootCollection()Z

    move-result v0

    if-nez v0, :cond_3

    .line 670
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;

    invoke-direct {v0, p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithShareControllers;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    goto :goto_1

    .line 672
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;->getTitleForMainView()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleLongClickOnAsset(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->isEditInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isNetworkOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    .line 347
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;->ADOBE_ASSET_TYPE_FILE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-interface {v0, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;->handleLongClick(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V

    .line 351
    :cond_0
    return-void
.end method

.method protected handleNetworkStatusChange(Z)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleMoveButtonNetworkChange(Z)V

    .line 786
    return-void
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->isEditInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isNetworkOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    .line 357
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;->ADOBE_ASSET_TYPE_FILE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;->handlePopupClick(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;)V

    .line 361
    :cond_0
    return-void
.end method

.method protected handlePostOnCreateView(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 427
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->handlePostOnCreateView(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_notification_icon_view:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationView:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationView:Landroid/view/View;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_notification_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationIcon:Landroid/widget/ImageView;

    .line 430
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationView:Landroid/view/View;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_notification_count:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationCountTextView:Landroid/widget/TextView;

    .line 442
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_isReadOnly:Z

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->addFabToRootView()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationIcon:Landroid/widget/ImageView;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_notif_black_24dp_disabled:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationCountTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->checkAndPrepareforAnyUploadsInContainer()V

    .line 455
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1010078

    invoke-direct {v0, v3, v5, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    .line 456
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_progress_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_progress_bar:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 461
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_asset_edit_progress_bar_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getPixelsFromDP(F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 462
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 463
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 464
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 467
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCollaborationType()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_4

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDBYUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isCurrentFolderOwner:Z

    .line 470
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setDragDropEventListener()V

    .line 471
    return-void

    :cond_3
    move v0, v1

    .line 468
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected handlePreOnStart()V
    .locals 0

    .prologue
    .line 742
    return-void
.end method

.method protected hideCollaborationAndNotificationIcon()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaboratorMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->disableCollaborationRelatedMenuItems()V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 728
    :cond_1
    return-void
.end method

.method public hideEmptyStateView()V
    .locals 0

    .prologue
    .line 1100
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->hideEmptyStateView()V

    .line 1101
    return-void
.end method

.method public hideFab()V
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 763
    :cond_0
    return-void
.end method

.method public isEmptyFolder()Z
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingMenuExpanded()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSearchBarOpened()Z
    .locals 1

    .prologue
    .line 807
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getNavBarHeight(Landroid/app/Activity;)I

    move-result v0

    .line 480
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getFabPaddingWidth()I

    move-result v1

    .line 483
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v2, :cond_0

    .line 484
    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setLayoutMargin(II)V

    .line 485
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 486
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    .line 261
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 262
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 264
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getEditCommandsHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->ccFilesEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handler:Landroid/os/Handler;

    .line 266
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1229
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onDestroy()V

    .line 1230
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionStarted:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1233
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionComplete:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1236
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionCancelled:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1239
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onDestroyView()V

    .line 275
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1656
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->requestMade:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1657
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->requestMade:Z

    .line 1658
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 1659
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_UPLOAD_FILES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 1664
    :cond_0
    :goto_0
    return-void

    .line 1661
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_extract_permission_denied:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1642
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onResume()V

    .line 1643
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-eqz v0, :cond_0

    .line 1645
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    .line 1646
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;->hasExtraControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_adobeAssetViewBrowserFragmentExtraControls:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;->getExtraConfiguration()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;

    move-result-object v0

    .line 1649
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->handleExtraConfigurations(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditFragmentExtraConfiguration;)V

    .line 1652
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onStart()V

    .line 281
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setVisible(Landroid/view/View;Z)V

    .line 282
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 284
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    if-eqz v3, :cond_5

    .line 285
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    .line 286
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->isCollaborationFrameVisible()Z

    move-result v0

    .line 289
    :goto_0
    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setVisibilityTab(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->ccFilesEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;->onStart()V

    .line 294
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->hasEditStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->action_editStarted()V

    .line 299
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->hasEditCompletionHandled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->action_editCompleted()V

    .line 304
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->isEditInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 308
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->getProgressValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setEditProgress(D)V

    .line 313
    :cond_2
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_isFileUploadCompleteNotificationHandled:Z

    if-nez v0, :cond_3

    .line 315
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setUploadInProgress(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->cleanUpUploadRelatedSetup()V

    .line 317
    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_isFileUploadCompleteNotificationHandled:Z

    .line 319
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 289
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->onStop()V

    .line 333
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->ccFilesEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;->onStop()V

    .line 338
    :cond_0
    return-void
.end method

.method protected registerLocalNofications()V
    .locals 3

    .prologue
    .line 1154
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->registerLocalNofications()V

    .line 1156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaborationVisibilityObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$9;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaborationVisibilityObserver:Ljava/util/Observer;

    .line 1183
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesRefreshNotificationCount:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$10;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1190
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesCollaborationChangeTitleToCollaborator:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaborationVisibilityObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1193
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesCollaborationChangeTitleToTargetAsset:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaborationVisibilityObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1196
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionStarted:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1199
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionComplete:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1202
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionCancelled:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesUploadObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1204
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v0, :cond_2

    .line 1206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesEditProgressObserver:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 1207
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditProgressNotificationObserver;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$EditProgressNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesEditProgressObserver:Ljava/util/Observer;

    .line 1209
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAssetEditProgressChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesEditProgressObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1212
    :cond_2
    return-void
.end method

.method public reloadAssetItemsFromDataSourceDueToSwipeRefresh()V
    .locals 1

    .prologue
    .line 1136
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 1137
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getNotificationManager()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getUnreadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setNotificationCount(I)V

    .line 1140
    :cond_0
    return-void
.end method

.method protected setUploadInProgress(Z)V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    if-nez v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_uploadDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;

    iput-boolean p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$UploadDetails;->isAnyUploadInProgress:Z

    goto :goto_0
.end method

.method public showCoachMarkForCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 692
    if-nez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;->getCellView()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    .line 702
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;->isScreenshotsFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    const-string/jumbo v9, "screenshots_folder"

    .line 704
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_coach_mark_screenshot_folder_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 705
    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_coach_mark_screenshot_folder_body:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 715
    :goto_1
    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/internal/utils/coachmarks/IAdobeCoachMarksProvider;

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 716
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/coachmarks/IAdobeCoachMarksProvider;

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_coach_mark_common_footer:I

    .line 717
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move v7, v6

    .line 716
    invoke-interface/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/internal/utils/coachmarks/IAdobeCoachMarksProvider;->showCoachMarks(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZILcom/adobe/creativesdk/foundation/internal/utils/coachmarks/IAdobeCoachMarksDismissListener;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_2
    const-string/jumbo v9, "asset"

    .line 709
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_coach_mark_asset_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_coach_mark_asset_body:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 711
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getMenuIconView()Landroid/view/View;

    move-result-object v5

    goto :goto_1
.end method

.method protected showCollaborationAndNotificationIcon()V
    .locals 2

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isContainerShowingRootCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isSearchBarOpened()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 734
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->disableCollaborationRelatedMenuItems()V

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 737
    return-void

    .line 733
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showEmptyAssetsStateView()V
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->isAnyUploadInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showEmptyAssetsStateView()V

    .line 1146
    :cond_0
    return-void
.end method

.method public showFab()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_floatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 769
    :cond_0
    return-void
.end method

.method protected unRegisterLocalNotifications()V
    .locals 3

    .prologue
    .line 1243
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->unRegisterLocalNotifications()V

    .line 1245
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesCollaborationChangeTitleToCollaborator:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaborationVisibilityObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1247
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesCollaborationChangeTitleToTargetAsset:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_collaborationVisibilityObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1249
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesEditProgressObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 1251
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAssetEditProgressChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->_ccfilesEditProgressObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1253
    :cond_0
    return-void
.end method

.method protected upload_handleUploadCancelledNotification(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setUploadInProgress(Z)V

    .line 1129
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->cleanUpUploadRelatedSetup()V

    .line 1131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_isFileUploadCompleteNotificationHandled:Z

    .line 1132
    return-void
.end method

.method protected upload_handleUploadCompleteNotification(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setUploadInProgress(Z)V

    .line 1115
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->cleanUpUploadRelatedSetup()V

    .line 1116
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showUploadSummaryBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 1118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_isFileUploadCompleteNotificationHandled:Z

    .line 1120
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    if-eqz v1, :cond_0

    .line 1122
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewBrowserFragmentHostActivity;->updateUploadCountForAppRater()V

    .line 1124
    :cond_0
    return-void
.end method

.method protected upload_handleUploadStartedNotification(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->prepareForUploadInContainer(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 1107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setUploadInProgress(Z)V

    .line 1109
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideProgressView()V

    .line 1110
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideEmptyStateView()V

    .line 1111
    return-void
.end method
