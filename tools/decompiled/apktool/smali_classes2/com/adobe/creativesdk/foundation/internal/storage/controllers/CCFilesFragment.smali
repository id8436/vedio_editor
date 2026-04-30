.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;
.source "CCFilesFragment.java"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _dataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;

.field private _forceRefreshAssetsListObserver:Ljava/util/Observer;

.field protected _gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

.field protected _isReadOnly:Z

.field private _lastSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

.field protected _listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

.field private _reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _selectionTimeStampAtStop:I

.field private _storageAssetsSelectionCountChange:Ljava/util/Observer;

.field private _storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

.field private _tabDataSourceChangedObserver:Ljava/util/Observer;

.field private _targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_selectionTimeStampAtStop:I

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;I)I
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_selectionTimeStampAtStop:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->changeVisualDisplay(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    return-object v0
.end method

.method private changeVisualDisplay(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;)V
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    if-ne p1, v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsAsGrid()V

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->refreshDueToDataChange()V

    .line 540
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->setLastVisualLayout(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;)V

    .line 541
    return-void

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsAsList()V

    goto :goto_0
.end method

.method private showAssetsAsGrid()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsAsGridAnimate(Z)V

    .line 500
    return-void
.end method

.method private showAssetsAsList()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsAsListAnimate(Z)V

    .line 480
    return-void
.end method

.method private showAssetsOfCurrentVisualLayout(Z)V
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    .line 522
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualLayout()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsAsListAnimate(Z)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsAsGridAnimate(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected collapseFloatingActionMenu()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 580
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    return-object v0
.end method

.method protected ds_startedLoadingMoreFolders()V
    .locals 0

    .prologue
    .line 861
    return-void
.end method

.method protected ds_stoppedLoadingMoreFolders()V
    .locals 0

    .prologue
    .line 857
    return-void
.end method

.method protected getAssetSelectionCount()I
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->selectedAssetCount()I

    move-result v0

    return v0
.end method

.method protected getAssetViewConfiguration(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;-><init>()V

    .line 83
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->createFromBundle(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 85
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isReadOnly()Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_isReadOnly:Z

    .line 86
    return-object v0
.end method

.method protected getContainerNameForRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_csdk_myassets_main:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurrentTargetCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    return-object v0
.end method

.method protected getInternalFilters()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    return-object v0
.end method

.method protected handleAnyListCellViewsRefresh()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 345
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_selectionTimeStampAtStop:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    if-eqz v0, :cond_0

    .line 346
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_selectionTimeStampAtStop:I

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->getCurrentSelectionTimeStamp()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->refreshOnlyListView()V

    .line 350
    :cond_0
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_selectionTimeStampAtStop:I

    .line 351
    return-void
.end method

.method protected handleAnyListConfigChange()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->resetSortIndexCollator()Z

    move-result v0

    return v0
.end method

.method public handleAppOrientationChange()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->refreshLayoutDueToOrientationChange()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->refreshLayoutDueToOrientationChange()V

    goto :goto_0
.end method

.method public handleAssetClickAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 122
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 126
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->openOneUpViewActivityFromAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    goto :goto_0
.end method

.method protected handleCancelSelectionUserAction()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 153
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->refreshOnlyListView()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->refreshOnlyListView()V

    .line 157
    :cond_1
    return-void
.end method

.method protected handleCollaborationVisibilty(Z)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public handleCurrentNetworkStatusWithUpload(Z)V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public handleLongClickOnAsset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method protected handleNotificationQueue()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleNotificationQueue()V

    .line 427
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesForceRefreshAssetsList:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->getNotificationsForID(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)Ljava/util/List;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 437
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 438
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesForceRefreshAssetsList:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 439
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUxTabDataSourceChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 442
    :cond_1
    return-void
.end method

.method protected handleOnStop()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleOnStop()V

    .line 335
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->getCurrentSelectionTimeStamp()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_selectionTimeStampAtStop:I

    .line 336
    return-void
.end method

.method protected handleOpenCurrentSelectedFilesUserAction()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_OPEN_SELECTED_FILES:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    .line 148
    return-void
.end method

.method public handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected handlePostOffline()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method protected handleSearchFunctionality(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterWithSearchString(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hasActionBarOptions()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method protected hookUpDataSourceDelegate(Z)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_dataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setAdobeStorageDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;)V

    .line 143
    return-void
.end method

.method protected initializeCCFilesContainerFromCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 1

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getAssetFolderFromCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->initializeCCFilesContainerFromCollectionHref(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initializeCCFilesContainerFromCollectionHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getAssetFolderFromHref(Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 215
    return-void
.end method

.method protected initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getTargetCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_0

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 234
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->initializeCCFilesContainerFromCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 235
    return-void

    :cond_0
    move-object v0, v1

    .line 233
    goto :goto_0
.end method

.method public isContainerReadOnly()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method protected isContainerShowingRootCollection()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->isRootCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRestoredDataSourceChanged()Z
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->isFolderMarkedAsChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Z)Z

    move-result v0

    return v0
.end method

.method public navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V
    .locals 2

    .prologue
    .line 91
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;

    .line 93
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->getCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->setCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 95
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->getDataSourceType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->setDataSourceType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 96
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToAssetFolderData;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateToCollectionCommand;->setReadOnly(Z)V

    .line 97
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_TO_COLLECTION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 98
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;-><init>()V

    .line 175
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 177
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 178
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->clearCache()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 188
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onDestroy()V

    .line 189
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 282
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/UiUtils;->getNavBarHeightInternal(Landroid/content/Context;)I

    move-result v2

    .line 285
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    .line 286
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    .line 285
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 288
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 289
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    .line 288
    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 290
    return-void
.end method

.method protected openOneUpViewActivityFromAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 4

    .prologue
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->getLokiConfigurationKey()I

    move-result v0

    move v1, v0

    .line 198
    :goto_0
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerConfigurationFactory;->getOneUpViewerController(I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;

    move-result-object v0

    .line 199
    const-string/jumbo v2, "ADOBE_ONE_UP_VIEW_ASSET_CONFIGURATION"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->getConfiguration(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;

    .line 200
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->setAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    .line 201
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->setDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetOneUpViewerActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v2, "one_up_controller_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v1, "ADOBE_CLOUD"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x856

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerControllerConfigurations;->getCsdkConfigurationKey()I

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method protected registerLocalNofications()V
    .locals 3

    .prologue
    .line 360
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->registerLocalNofications()V

    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageAssetsSelectionCountChange:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageAssetsSelectionCountChange:Ljava/util/Observer;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_forceRefreshAssetsListObserver:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_forceRefreshAssetsListObserver:Ljava/util/Observer;

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_tabDataSourceChangedObserver:Ljava/util/Observer;

    if-nez v0, :cond_2

    .line 383
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_tabDataSourceChangedObserver:Ljava/util/Observer;

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageAssetsSelectionCountChange:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 409
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageAssetsSelectionCountChange:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesForceRefreshAssetsList:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_forceRefreshAssetsListObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUxTabDataSourceChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_tabDataSourceChangedObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 418
    return-void
.end method

.method public reloadAssetItemsFromDataSourceDueToSwipeRefresh()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    .line 322
    const-string/jumbo v1, "mobile.ccmobile.pullToRefresh"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 324
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 325
    return-void
.end method

.method protected resetAssetsListViewVisualLayout()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->showAssetsOfCurrentVisualLayout(Z)V

    .line 565
    return-void
.end method

.method protected restoreCurrentAssetsListControllerState()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_lastSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

    if-eqz v0, :cond_0

    .line 555
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualLayout()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_lastSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;->_visualLayout:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    if-eq v0, v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->restoreCurrentAssetsListControllerState()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_lastSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

    goto :goto_0
.end method

.method protected saveCurrentAssetsListControllerState()V
    .locals 2

    .prologue
    .line 546
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->saveCurrentAssetsListControllerState()V

    .line 547
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_lastSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

    .line 548
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_lastSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualLayout()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesFragmentState;->_visualLayout:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    .line 549
    return-void
.end method

.method protected setCurrentAssetViewController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    .line 475
    return-void
.end method

.method protected setupAssetsDataSourceAndListViewControllers()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_dataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;

    .line 244
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_targetCollection:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setTargetCollection(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 246
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_dataSourceDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$StorageDataSourceDelegate;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setAdobeStorageDataSourceDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;)V

    .line 248
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getMimeTypesFilter()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setFilter(Ljava/util/EnumSet;)V

    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getIsMimeTypeFilterInclusive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setInclusiveFilter(Z)V

    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getInternalFilters()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->setDataInternalFilters(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$DataSourceInternalFilters;)V

    .line 253
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->setupGridViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    .line 254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setContainerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    .line 255
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isReadOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setContainerReadOnly(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->setupSectionalListViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->setContainerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    .line 259
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->isReadOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->setContainerReadOnly(Z)V

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setAssetListViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V

    .line 262
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->setAssetListViewerConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V

    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->performInitialization(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->performInitialization(Landroid/content/Context;)V

    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setStorageDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V

    .line 269
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->setStorageDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V

    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_storageDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadItemsFromScratch(Z)Z

    goto/16 :goto_0
.end method

.method protected setupGridViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;-><init>(Landroid/content/Context;)V

    .line 299
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_reusableBitmapCacheWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V

    .line 300
    return-object v0
.end method

.method protected setupSectionalListViewController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected showAssetsAsGridAnimate(Z)V
    .locals 5

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getMainView()Landroid/view/View;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 510
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;

    const-string/jumbo v3, "grid"

    const-string/jumbo v4, "cc_file"

    invoke-direct {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;->endAndTrackEvent()V

    .line 513
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->setCurrentAssetViewController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)V

    .line 517
    return-void
.end method

.method protected showAssetsAsListAnimate(Z)V
    .locals 5

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 486
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getMainView()Landroid/view/View;

    move-result-object v1

    .line 488
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 489
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;

    const-string/jumbo v3, "list"

    const-string/jumbo v4, "cc_file"

    invoke-direct {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;->endAndTrackEvent()V

    .line 492
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->setCurrentAssetViewController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)V

    .line 495
    return-void
.end method

.method public showCoachMarkForCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected showEmptySearchView()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_gridAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesGridView;->showEmptySearch()V

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_listAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->showEmptySearch()V

    .line 788
    :cond_1
    return-void
.end method

.method protected unRegisterLocalNotifications()V
    .locals 2

    .prologue
    .line 461
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->unRegisterLocalNotifications()V

    .line 463
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 465
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 467
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesForceRefreshAssetsList:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 469
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUxTabDataSourceChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 470
    return-void
.end method
