.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;
.source "PhotosCollectionFragment.java"


# instance fields
.field private _alphaPane:Landroid/view/View;

.field private _fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private _photoAssetsSelectionCountChange:Ljava/util/Observer;

.field private _photoCollectionCommandHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;

.field private _photoCollectionUploadedObserver:Ljava/util/Observer;

.field private _photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

.field private _photoCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;

.field private _photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_alphaPane:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->handleCreateNewCollectionButtonClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    return-object v0
.end method

.method private handleCreateNewCollectionButtonClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$5;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V

    .line 327
    const-string/jumbo v1, "mobile.ccmobile.createNewPhotoCollection"

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 328
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_CREATE_NEW_PHOTOCOLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method private handleFABMenu()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_alphaPane:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/h;)V

    .line 311
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->isNetworkOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLayoutMargin(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 222
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    return-void
.end method


# virtual methods
.method protected addFabToRootView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 347
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 353
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_design_library_floating_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 354
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_collection_FAB:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 355
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_library_alpha_pane:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_alphaPane:Landroid/view/View;

    .line 356
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->handleFABMenu()V

    .line 358
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 359
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 360
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_alphaPane:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 362
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 363
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 364
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 365
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getNavBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 366
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getFabPaddingWidth()I

    move-result v2

    .line 367
    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 369
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    :cond_0
    return-void
.end method

.method protected configureEmptyStateView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 339
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_photo_asset_browser_empty_state_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 340
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->adobe_emptystate_lightroom:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_photo_asset_browser_empty_state_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_photo_asset_browser_empty_folder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method protected getAssetSelectionCount()I
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->selectedAssetCount()I

    move-result v0

    return v0
.end method

.method protected getAssetViewConfiguration(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotosViewContainerConfiguration;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 100
    return-object v0
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_cc_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_browser_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCurrentTargetCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    return-object v0
.end method

.method protected getEmptyStateViewId()I
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->setFabNotAdded(Z)V

    .line 335
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_photo_assetbrowser_empty_state_view:I

    return v0
.end method

.method protected handleAppOrientationChange()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->refreshLayoutDueToOrientationChange()V

    .line 473
    :cond_0
    return-void
.end method

.method public handleAssetClickAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method protected handleCancelSelectionUserAction()V
    .locals 0

    .prologue
    .line 438
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->resetSelectedAssets()V

    .line 439
    return-void
.end method

.method public handleLongClickOnAsset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected handleOpenCurrentSelectedFilesUserAction()V
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_OPEN_SELECTED_PHOTOS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    .line 434
    return-void
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;

    .line 113
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;->ADOBE_ASSET_TYPE_PHOTOS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/IAdobeLongClickHandler;->handlePopupClick(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeAssetType;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected handlePostOnCreateView(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handlePostOnCreateView(Landroid/os/Bundle;)V

    .line 258
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionCommandHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;

    .line 260
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->addFabToRootView()V

    .line 261
    return-void
.end method

.method protected handleSearchFunctionality(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->searchInPhotoCollections(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hasActionBarOptions()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public hideFab()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 478
    :cond_0
    return-void
.end method

.method protected hookUpDataSourceDelegate(Z)V
    .locals 2

    .prologue
    .line 392
    if-eqz p1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->setDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;)V

    .line 395
    :cond_0
    return-void
.end method

.method protected initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public isContainerReadOnly()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V
    .locals 2

    .prologue
    .line 453
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;

    .line 456
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;-><init>()V

    .line 457
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->getCollectionGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCollectionGUID(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCollectionName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->getCatalogGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCatalogGUID(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToPhotoCollectionData;->getCatalogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCatalogName(Ljava/lang/String;)V

    .line 461
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_PHOTO_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 462
    return-void
.end method

.method public navigateToPhotoCollection(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;-><init>()V

    .line 376
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCollectionGUID(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCollectionName(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCatalogGUID(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getCatalog()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToPhotoCollectionCommand;->setCatalogName(Ljava/lang/String;)V

    .line 382
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_PHOTO_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getFabPaddingWidth()I

    move-result v0

    .line 213
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getNavBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v2, :cond_0

    .line 215
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->setLayoutMargin(II)V

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 267
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 268
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 270
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 271
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V

    .line 273
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->clearCache()V

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 281
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onDestroy()V

    .line 282
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onStart()V

    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionCommandHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;->onStart()V

    .line 241
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoCollectionAssetsUploadStatus;->reloadDataAfterUploaded:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->reloadDataFromDataSource()V

    .line 243
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoCollectionAssetsUploadStatus;->reloadDataAfterUploaded:Z

    .line 245
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onStop()V

    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionCommandHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionCommandHandler;->onStop()V

    .line 252
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getNavBarHeightInternal(Landroid/content/Context;)I

    move-result v1

    .line 233
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 234
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    .line 233
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 235
    return-void
.end method

.method protected registerLocalNofications()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->registerLocalNofications()V

    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoAssetsSelectionCountChange:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoAssetsSelectionCountChange:Ljava/util/Observer;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionUploadedObserver:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionUploadedObserver:Ljava/util/Observer;

    .line 164
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoAssetsSelectionCountChange:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 167
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoAssetsSelectionCountChange:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 170
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionComplete:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionUploadedObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 172
    return-void
.end method

.method protected resetAssetsListViewVisualLayout()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->getMainView()Landroid/view/View;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    .line 429
    return-void
.end method

.method protected setupAssetsDataSourceAndListViewControllers()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->setContainerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V

    .line 197
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;

    .line 198
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$PhotoCollectionsDataSourceDelegate;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobePhotoCollectionsDataSourceDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->set_photoCollectionsDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;)V

    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->performInitialization(Landroid/content/Context;)V

    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    .line 206
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionsDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->loadCatalog()V

    goto :goto_0
.end method

.method public showCoachMarkForCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected showEmptySearchView()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photosCollectionListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->showEmptySearch()V

    .line 94
    :cond_0
    return-void
.end method

.method public showFab()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_fabLayout:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setVisibility(I)V

    .line 484
    :cond_0
    return-void
.end method

.method protected unRegisterLocalNotifications()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->unRegisterLocalNotifications()V

    .line 178
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoAssetsSelectionCountChange:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 181
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoAssetsSelectionCountChange:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 184
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionComplete:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->_photoCollectionUploadedObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 186
    return-void
.end method
