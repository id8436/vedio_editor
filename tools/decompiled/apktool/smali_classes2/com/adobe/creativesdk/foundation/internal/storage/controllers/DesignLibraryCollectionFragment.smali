.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;
.source "DesignLibraryCollectionFragment.java"


# instance fields
.field private _alphaPane:Landroid/view/View;

.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

.field private _designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

.field private _designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

.field private _editProgressDialogBar:Landroid/app/ProgressDialog;

.field private _editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

.field private _fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private _progressBar:Landroid/widget/ProgressBar;

.field _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field protected libraryCollectionForItemEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;

.field protected libraryCompEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->handleCreateNewLibraryButtonClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->action_forceRefresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->action_editStarted()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->action_editCompleted(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_alphaPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    return-object v0
.end method

.method private action_editCompleted(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 659
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->hasEditCompletionHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditCompletionHandled(Z)V

    .line 661
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditStarted(Z)V

    .line 662
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditInProgress(Z)V

    .line 663
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->clearSelection()V

    .line 666
    if-nez p1, :cond_1

    .line 674
    :goto_0
    if-eqz v2, :cond_4

    .line 675
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshDueToDataChange()V

    .line 684
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->getLastSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;

    move-result-object v0

    .line 685
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->showEditSummaryBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)V

    .line 688
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 669
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    .line 670
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "committedDelete"

    if-eq v3, v4, :cond_2

    .line 671
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "pendingDelete"

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_5

    .line 679
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->updateItemViewForLib(Landroid/view/View;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    goto :goto_1

    .line 681
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->refreshCurrentListViewController()V

    goto :goto_1
.end method

.method private action_editStarted()V
    .locals 1

    .prologue
    .line 633
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->hasEditStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditStarted(Z)V

    .line 636
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->showProgressDialogBar()V

    .line 640
    :cond_0
    return-void
.end method

.method private action_forceRefresh()V
    .locals 0

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->reloadDataFromDataSource()V

    .line 692
    return-void
.end method

.method private createEditProgressDialogBar()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 649
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    .line 650
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_edit_in_progress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 652
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 653
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private createEditSummaryView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 696
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    if-eqz v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 698
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 699
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 700
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_theme_actionbar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 702
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 705
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;-><init>(Landroid/content/Context;)V

    .line 706
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 707
    if-nez v0, :cond_1

    .line 708
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 716
    :goto_1
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextColor(I)V

    .line 718
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextSize(IF)V

    .line 720
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 722
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    .line 723
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    .line 724
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    .line 725
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 727
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 712
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 713
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private getPixelsFromDP(F)I
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 622
    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private handleCreateNewLibraryButtonClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    .line 615
    const-string/jumbo v1, "mobile.ccmobile.createNewLibrary"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 616
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_CREATE_NEWLIBRARY:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 617
    return-void
.end method

.method private handleFABMenu()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_alphaPane:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/h;)V

    .line 598
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->isNetworkOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 603
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    goto :goto_0
.end method

.method private setEditProgress(D)V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 628
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 629
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 630
    return-void
.end method

.method private setLayoutMargin(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 568
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 569
    return-void
.end method

.method private showEditSummaryBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 732
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession;->getEditSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;

    move-result-object v4

    .line 734
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->createEditSummaryView()V

    .line 736
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->isEditSucceeded()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 737
    :goto_0
    const-string/jumbo v3, ""

    .line 738
    if-eqz v0, :cond_4

    .line 739
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    sget v5, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_error_banner_background:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 741
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    if-ne v0, v5, :cond_3

    .line 742
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_EDIT_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 766
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->reloadDataFromDataSource()V

    .line 767
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 775
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 783
    return-void

    :cond_2
    move v0, v2

    .line 736
    goto :goto_0

    .line 744
    :cond_3
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    if-ne v0, v4, :cond_8

    .line 745
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_DELETE_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 750
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 751
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 754
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$EditSummaryBanner;->bannerView:Landroid/view/View;

    sget v5, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_success_banner_background:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 757
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_COMP_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    if-ne v0, v5, :cond_7

    .line 758
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_EDIT_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 763
    :cond_6
    :goto_3
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 760
    :cond_7
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;->ADOBE_LIBRARY_COMP_EDIT_OPERATION_DELETE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditOperation;

    if-ne v0, v4, :cond_6

    .line 761
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_DELETE_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private showProgressDialogBar()V
    .locals 1

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->createEditProgressDialogBar()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    .line 644
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_editProgressDialogBar:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 646
    return-void
.end method


# virtual methods
.method protected addFabToRootView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 226
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeLibraryExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 232
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_design_library_floating_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 233
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_FAB:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 234
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_alpha_pane:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_alphaPane:Landroid/view/View;

    .line 235
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->handleFABMenu()V

    .line 237
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 241
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getNavBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 245
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getFabPaddingWidth()I

    move-result v2

    .line 246
    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected configureEmptyStateView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 255
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_photo_asset_browser_empty_state_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->adobe_emptystate_libraries:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_photo_asset_browser_empty_state_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_my_libraries_empty_collection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method protected getAssetSelectionCount()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method protected getAssetViewConfiguration(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 96
    return-object v0
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    .line 377
    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeLibraryExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_cc_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_library_chooser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_browser_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCurrentTargetCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    return-object v0
.end method

.method protected getEmptyStateViewId()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->setFabNotAdded(Z)V

    .line 221
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_photo_assetbrowser_empty_state_view:I

    return v0
.end method

.method protected handleAppOrientationChange()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshLayoutDueToOrientationChange()V

    .line 146
    return-void
.end method

.method public handleAssetClickAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method protected handleCancelSelectionUserAction()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public handleLongClickOnAsset(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    .line 104
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;->ADOBE_ASSET_TYPE_LIBRARIES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-interface {v0, p1, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;->handleLongClick(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected handleOpenCurrentSelectedFilesUserAction()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    .line 112
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;->ADOBE_ASSET_TYPE_LIBRARIES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;->handlePopupClick(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected handlePostOnCreateView(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 537
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handlePostOnCreateView(Landroid/os/Bundle;)V

    .line 539
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    .line 540
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->asset_edit_progress_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 544
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 545
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_asset_edit_progress_bar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getPixelsFromDP(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 546
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 547
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 548
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 551
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->addFabToRootView()V

    .line 552
    return-void
.end method

.method protected handleSearchFunctionality(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->searchLibraryCollections(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hasActionBarOptions()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public hideFab()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 285
    :cond_0
    return-void
.end method

.method protected hookUpDataSourceDelegate(Z)V
    .locals 2

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V

    .line 346
    :cond_0
    return-void
.end method

.method protected initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public isContainerReadOnly()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isContainerShowingRootCollection()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V
    .locals 2

    .prologue
    .line 433
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;

    .line 436
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;-><init>()V

    .line 437
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;->getCollectionGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setCollectionGUID(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setCollectionName(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;->getLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 440
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_DESIGNLIBRARY_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public navigateToDesignLibraryCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;-><init>()V

    .line 329
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setCollectionGUID(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setCollectionName(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToDesignLibraryCollectionCommand;->setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 333
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_DESIGNLIBRARY_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/NavBarUtil;->getHasTranslucentNav(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 558
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getFabPaddingWidth()I

    move-result v0

    .line 559
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getNavBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 560
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v2, :cond_0

    .line 561
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->setLayoutMargin(II)V

    .line 563
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 564
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 466
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->libraryCompEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;

    .line 467
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->libraryCollectionForItemEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;

    .line 468
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 452
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onDestroy()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    .line 165
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->clearCache()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 157
    :cond_0
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onDestroyView()V

    .line 158
    return-void
.end method

.method public onEvent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V
    .locals 3

    .prologue
    .line 518
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->getEventType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    move-result-object v0

    .line 519
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    if-ne v0, v1, :cond_1

    .line 520
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 521
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 522
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 524
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshDueToDataChange()V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUnShared:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryDeleted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    if-ne v0, v1, :cond_0

    .line 529
    :cond_2
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshDueToDataChange()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onStart()V

    .line 474
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeLibraryExtraControlsHostActivity;

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->libraryCompEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;->onStart()V

    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->libraryCollectionForItemEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;->onStart()V

    .line 478
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->isUpdateCollectionDueToItemEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshDueToDataChange()V

    .line 480
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setUpdateCollectionDueToItemEdit(Z)V

    .line 483
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->hasEditStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->action_editStarted()V

    .line 487
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->hasEditCompletionHandled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->action_editCompleted(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 492
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->isEditInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 496
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->getProgressValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->setEditProgress(D)V

    .line 501
    :cond_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->getDefault()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->register(Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 506
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onStop()V

    .line 507
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/IAdobeLibraryExtraControlsHostActivity;

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->libraryCompEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCompEditCommandsHandler;->onStop()V

    .line 510
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->libraryCollectionForItemEditCommandsHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$LibraryCollectionForItemEditCommandsHandler;->onStop()V

    .line 513
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->getDefault()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->unregister(Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getNavBarHeightInternal(Landroid/content/Context;)I

    move-result v1

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 215
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    .line 214
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 216
    return-void
.end method

.method public reloadAssetItemsFromDataSourceDueToSwipeRefresh()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->stopRefreshAnimation()V

    .line 352
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->willLoadDataFromScratch()V

    .line 353
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryController;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryController;->forceSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;)V

    .line 367
    return-void
.end method

.method protected resetAssetsListViewVisualLayout()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getMainView()Landroid/view/View;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 399
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    .line 408
    return-void
.end method

.method protected setupAssetsDataSourceAndListViewControllers()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->souldInvalidateCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->invalidateCollectionList()V

    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->setShouldInvalidateCollection(Z)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    .line 180
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->setContainerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    .line 182
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 183
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 185
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 186
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V

    .line 188
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    .line 189
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V

    .line 191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->setDesignLibraryCollectionsDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)V

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V

    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->performInitialization(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designLibraryCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_designDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->loadItemsFromScratch()Z

    .line 201
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;

    const-string/jumbo v1, "grid"

    const-string/jumbo v2, "library"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;->endAndTrackEvent()V

    goto :goto_0
.end method

.method public showCoachMarkForCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public showFab()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method
