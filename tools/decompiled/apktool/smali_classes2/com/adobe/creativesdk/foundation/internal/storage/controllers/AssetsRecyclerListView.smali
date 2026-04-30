.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;
.source "AssetsRecyclerListView.java"


# instance fields
.field protected _itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field protected _itemsAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected _layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private _mainRootView:Landroid/view/View;

.field private _onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private _recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected _swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field protected contextMenuClickListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 81
    return-void
.end method


# virtual methods
.method protected attachScrollListenerToListView()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 141
    return-void
.end method

.method protected abstract createRecyclerViewAdapter(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
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
.end method

.method protected abstract getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
.end method

.method protected getFirstVisiblePosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getInstanceState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$RecyclerViewInstanceState;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$RecyclerViewInstanceState;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;)V

    .line 124
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$RecyclerViewInstanceState;->_layoutManagerState:Landroid/os/Parcelable;

    .line 126
    :cond_0
    return-object v0
.end method

.method protected abstract getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.end method

.method protected getLastVisiblePosition()I
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end method

.method protected abstract getMainRootView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_mainRootView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
.end method

.method protected abstract handleItemClick(Landroid/view/View;I)V
.end method

.method protected abstract handleListItemLongClick(Landroid/view/View;I)V
.end method

.method protected abstract handlePopupMenuClick(ILandroid/view/View;)V
.end method

.method handleScrollOffsetChange()V
    .locals 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemsAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getFirstVisiblePosition()I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getLastVisiblePosition()I

    move-result v2

    .line 67
    add-int/lit8 v3, v0, -0x1

    sub-int v4, v2, v1

    if-eq v3, v4, :cond_0

    .line 70
    int-to-double v4, v2

    sub-int v1, v2, v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 72
    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->loadMoreItemsFromDataSource()V

    goto :goto_0
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getMainRootView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_mainRootView:Landroid/view/View;

    .line 155
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->recyclerViewHasFixedItemSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 171
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_recylerview_padding_bottom_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 193
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;

    float-to-int v0, v0

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;I)V

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 196
    const-string/jumbo v0, "#2098f5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 197
    const-string/jumbo v1, "#f5f9fa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    const/4 v0, 0x3

    aput v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 200
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->attachScrollListenerToListView()V

    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->createRecyclerViewAdapter(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemsAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemsAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 205
    return-void
.end method

.method protected recyclerViewHasFixedItemSize()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public refreshDueToDataChange()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemsAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public refreshDueToNewItemsInsertion()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemsAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public refreshLayoutDueToOrientationChange()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 215
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 216
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 217
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_itemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 219
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->refreshDueToDataChange()V

    .line 220
    if-eq v0, v1, :cond_1

    .line 221
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 222
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public restoreFromState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;)V
    .locals 2

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$RecyclerViewInstanceState;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$RecyclerViewInstanceState;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$RecyclerViewInstanceState;->_layoutManagerState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    :cond_0
    return-void
.end method

.method public showLoadingFooter()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public startRefreshAnimation()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 106
    return-void
.end method

.method public stopRefreshAnimation()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 111
    return-void
.end method
