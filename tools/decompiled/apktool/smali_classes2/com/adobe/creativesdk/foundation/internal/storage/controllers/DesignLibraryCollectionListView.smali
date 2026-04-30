.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;
.source "DesignLibraryCollectionListView.java"


# static fields
.field private static shouldInvalidateCollection:Z


# instance fields
.field private _collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

.field private _libraryDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

.field private _numColumnsInTwoWay:I

.field _reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

.field private _uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

.field private isLoki:Ljava/lang/Boolean;

.field private rightMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->shouldInvalidateCollection:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->rightMargin:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->isLoki:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->isLoki:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_libraryDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_numColumnsInTwoWay:I

    return v0
.end method

.method public static setShouldInvalidateCollection(Z)V
    .locals 0

    .prologue
    .line 743
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->shouldInvalidateCollection:Z

    .line 744
    return-void
.end method

.method public static souldInvalidateCollection()Z
    .locals 1

    .prologue
    .line 748
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->shouldInvalidateCollection:Z

    return v0
.end method


# virtual methods
.method protected createRecyclerViewAdapter(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    return-object v0
.end method

.method protected getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    return-object v0
.end method

.method protected getDesignLibraryCollectionNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;->setCollectionGUID(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;->setCollectionName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavToDesignLibraryCollectionData;->setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 188
    return-object v0
.end method

.method protected getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_library_items_spacing_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 105
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    invoke-direct {v1, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;-><init>(II)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    .line 106
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_numColumnsInTwoWay:I

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_numColumnsInTwoWay:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->setFixedColumn(I)V

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    return-object v0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_numColumnsInTwoWay:I

    .line 141
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_numColumnsInTwoWay:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V

    return-object v0
.end method

.method protected getMainRootView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assets_library_items_view:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_libraryitemsview_swipe_refresh_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 93
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_library_design_items_twowayview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    .line 94
    return-object v1
.end method

.method protected getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method protected handleItemClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getDesignLibraryCollectionNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected handleListItemLongClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleLongClickOnAsset(Ljava/lang/Object;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getLibraryAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V

    .line 179
    :cond_0
    return-void
.end method

.method invalidateCollectionList()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->invalidateLibraryCollectionList()V

    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method public refreshDueToDataChange()V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->invalidateCollectionList()V

    .line 125
    return-void
.end method

.method public refreshDueToNewItemsInsertion()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->invalidateCollectionList()V

    .line 130
    return-void
.end method

.method public searchLibraryCollections(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->isSearch:Z

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->query:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->refreshDueToDataChange()V

    .line 195
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->showEmptySearch()V

    .line 196
    return-void
.end method

.method public setDesignLibraryCollectionsDataSource(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_libraryDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    .line 77
    return-void
.end method

.method public setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 82
    return-void
.end method

.method public showEmptySearch()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->_collectioAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;->getAssetsCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->checkToSetEmptySearchView(Z)V

    .line 200
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateItemViewForLib(Landroid/view/View;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 708
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_colortheme:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 709
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 710
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 711
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_shared_folder_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 712
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_main_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 713
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_collection_cell_count_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 715
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCountOfElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)I

    move-result v1

    .line 718
    if-eq v1, v6, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_design_library_collection_count:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 723
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_library_bookmark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 739
    :goto_1
    return-void

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_design_library_collection_count_single:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 727
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isShared()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_ro:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 731
    :cond_2
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_folder_shared:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 734
    :cond_3
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_vector_asset_library:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
