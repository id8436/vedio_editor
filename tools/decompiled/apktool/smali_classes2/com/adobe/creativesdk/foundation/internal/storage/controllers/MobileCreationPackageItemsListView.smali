.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;
.source "MobileCreationPackageItemsListView.java"


# instance fields
.field private _itemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

.field private _numColumnsInTwoWay:I

.field _reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field private _twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

.field private _uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

.field private _waterFallLayoutManager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
.end method

.method private getTargetPackage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    return-object v0
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
    .line 105
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_itemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_itemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_itemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    return-object v0
.end method

.method protected getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    return-object v0
.end method

.method protected getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_library_items_spacing_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    invoke-direct {v1, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;-><init>(II)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    .line 87
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_numColumnsInTwoWay:I

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_numColumnsInTwoWay:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->setFixedColumn(I)V

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    return-object v0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;->getColumnCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_numColumnsInTwoWay:I

    .line 112
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_numColumnsInTwoWay:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/GridLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;II)V

    return-object v0
.end method

.method protected getMainRootView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 68
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assets_mobilecreations_items_view:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_mobilecreations_itemsview_swipe_refresh_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 70
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_mobilecreations_items_twowayview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    .line 71
    return-object v1
.end method

.method protected getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method protected handleItemClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_itemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->getPageAtPosition(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->_packagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getPages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    .line 124
    iput p2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/MobilePackageItemsOneUpData;->startIndex:I

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleAssetClickAction(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleListItemLongClick(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 101
    return-void
.end method

.method public setTargetPackage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_targetPackage:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    .line 57
    return-void
.end method
