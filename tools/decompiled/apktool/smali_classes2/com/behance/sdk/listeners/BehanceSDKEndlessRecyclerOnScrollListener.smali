.class public abstract Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BehanceSDKEndlessRecyclerOnScrollListener.java"


# instance fields
.field private current_page:I

.field firstVisibleItem:I

.field private loading:Z

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mStaggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field private previousTotal:I

.field totalItemCount:I

.field visibleItemCount:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->previousTotal:I

    .line 13
    iput-boolean v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->loading:Z

    .line 14
    const/4 v0, 0x5

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->visibleThreshold:I

    .line 17
    iput v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->current_page:I

    .line 23
    iput-object p1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->previousTotal:I

    .line 13
    iput-boolean v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->loading:Z

    .line 14
    const/4 v0, 0x5

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->visibleThreshold:I

    .line 17
    iput v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->current_page:I

    .line 27
    iput-object p1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mStaggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract onLoadMore(I)V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 34
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->visibleItemCount:I

    .line 35
    iget-object v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mStaggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->totalItemCount:I

    .line 37
    iget-object v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mStaggeredGridLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/16 v1, 0x8

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    aget v0, v0, v2

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->firstVisibleItem:I

    .line 43
    :goto_0
    iget-boolean v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->loading:Z

    if-eqz v0, :cond_0

    .line 44
    iget v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->totalItemCount:I

    iget v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->previousTotal:I

    if-le v0, v1, :cond_0

    .line 45
    iput-boolean v2, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->loading:Z

    .line 46
    iget v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->totalItemCount:I

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->previousTotal:I

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->loading:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->totalItemCount:I

    iget v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->visibleItemCount:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->firstVisibleItem:I

    iget v2, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->visibleThreshold:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 50
    iget v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->current_page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->current_page:I

    .line 51
    iget v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->current_page:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->onLoadMore(I)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->loading:Z

    .line 54
    :cond_1
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->totalItemCount:I

    .line 40
    iget-object v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->firstVisibleItem:I

    goto :goto_0
.end method

.method public resetScrollCount()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->previousTotal:I

    .line 62
    return-void
.end method

.method public setVisibleThreshold(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/behance/sdk/listeners/BehanceSDKEndlessRecyclerOnScrollListener;->visibleThreshold:I

    .line 58
    return-void
.end method
