.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
.source "CCFilesFragment.java"


# instance fields
.field _currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

.field _currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

.field _currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

.field _savedFragmentActionBarInstanceData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$FragmentActionBarInstanceData;

.field _sortProtocolDelegate:Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageSortProtocol;

.field private _sortTypeMenuItem:Landroid/view/MenuItem;

.field private _viewTypeMenuItem:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    return-void
.end method

.method private toggleSortType()V
    .locals 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v0, v1, :cond_0

    .line 684
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_TIME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 685
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;->SORT_STATE_DESCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->setLastSortType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;)V

    .line 694
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->setLastSortState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;)V

    .line 695
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortCollectionByType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;)V

    .line 696
    return-void

    .line 689
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 690
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;->SORT_STATE_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    goto :goto_0
.end method

.method private toggleViewType()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    if-ne v0, v1, :cond_0

    .line 672
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    .line 676
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;)V

    .line 678
    return-void

    .line 674
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    goto :goto_0
.end method


# virtual methods
.method public handleCurrentNetworkStatus(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_sortTypeMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_sortTypeMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->handleCurrentNetworkStatusWithUpload(Z)V

    .line 616
    return-void

    :cond_2
    move v0, v2

    .line 613
    goto :goto_0

    :cond_3
    move v1, v2

    .line 614
    goto :goto_1
.end method

.method public handleOnStart()V
    .locals 0

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->resetButtonState()V

    .line 620
    return-void
.end method

.method public handleOptionItemSelect(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 700
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_uxassetbrowser_assets_viewtype:I

    if-ne p1, v0, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->toggleViewType()V

    .line 705
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    if-ne v0, v2, :cond_0

    .line 706
    const-string/jumbo v0, "View As List"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAssetBrowserAction(Ljava/lang/String;)V

    .line 707
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;)V

    .line 714
    const-string/jumbo v2, "mobile.ccmobile.viewas.list"

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :goto_0
    move v0, v1

    .line 765
    :goto_1
    return v0

    .line 716
    :cond_0
    const-string/jumbo v0, "View As Grid"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAssetBrowserAction(Ljava/lang/String;)V

    .line 717
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;)V

    .line 724
    const-string/jumbo v2, "mobile.ccmobile.viewas.grid"

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 729
    :cond_1
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_uxassetbrowser_assets_view_sorttype:I

    if-ne p1, v0, :cond_3

    .line 731
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->toggleSortType()V

    .line 734
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v0, v2, :cond_2

    .line 735
    const-string/jumbo v0, "Sort Alphabetically"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAssetBrowserAction(Ljava/lang/String;)V

    .line 736
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;)V

    .line 743
    const-string/jumbo v2, "mobile.ccmobile.sortby.alpha"

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 756
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    move v0, v1

    .line 758
    goto :goto_1

    .line 745
    :cond_2
    const-string/jumbo v0, "Sort By Date"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAssetBrowserAction(Ljava/lang/String;)V

    .line 746
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;)V

    .line 753
    const-string/jumbo v2, "mobile.ccmobile.sortby.date"

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 760
    :cond_3
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_uxassetbrowser_sdk_photos_myaccount:I

    if-ne p1, v0, :cond_4

    .line 761
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_SHOW_MY_ACCOUNT:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    move v0, v1

    .line 762
    goto :goto_1

    .line 765
    :cond_4
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleOptionItemSelect(I)Z

    move-result v0

    goto :goto_1
.end method

.method public handlePostOnCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 594
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handlePostOnCreate(Landroid/os/Bundle;)V

    .line 595
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;I)I

    .line 597
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 589
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_asset_browser_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 590
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 591
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 602
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 603
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getAssetsMainRootFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_uxassetbrowser_assets_viewtype:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    .line 606
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_uxassetbrowser_assets_view_sorttype:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_sortTypeMenuItem:Landroid/view/MenuItem;

    .line 608
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->refreshOptionItems()V

    .line 610
    :cond_0
    return-void
.end method

.method public refreshOptionItems()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 626
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    if-ne v0, v3, :cond_1

    .line 631
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_action_asgrid:I

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getLocalizedStringUtil(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 637
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getAdobeFormattedString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 641
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v0, v3, :cond_2

    .line 642
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_action_sort_date:I

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getLocalizedStringUtil(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    :goto_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_sortTypeMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 648
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_sortTypeMenuItem:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getAdobeFormattedString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 650
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_myAccountMenuItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    sget v5, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_sdk_myaccount:I

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getLocalizedStringUtil(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getAdobeFormattedString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 651
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_myAccountMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->shouldEnableMyAccountMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 653
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isAssetsMainFrameVisible()Z

    move-result v3

    .line 654
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_viewTypeMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    move v0, v1

    :goto_4
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 655
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_sortTypeMenuItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    move v0, v1

    :goto_5
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 657
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->isSearchBarOpened()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->handleCollaborationVisibilty(Z)V

    goto/16 :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_action_aslist:I

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getLocalizedStringUtil(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_action_sort_alpha:I

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->getLocalizedStringUtil(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 651
    goto :goto_3

    :cond_4
    move v0, v2

    .line 654
    goto :goto_4

    :cond_5
    move v0, v2

    .line 655
    goto :goto_5

    :cond_6
    move v1, v2

    .line 657
    goto :goto_6
.end method

.method public resetButtonState()V
    .locals 1

    .prologue
    .line 663
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualLayout()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentFileListSelectionType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    .line 664
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    .line 665
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$CCFilesActionBarController;->_currentSortType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 666
    return-void
.end method
