.class Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;
.super Ljava/lang/Object;
.source "ExtendableListView.java"


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V
    .locals 1

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2173
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private pruneScrapViews()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 2445
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v5, v0

    .line 2446
    iget v6, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2447
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    move v4, v1

    .line 2448
    :goto_0
    if-ge v4, v6, :cond_1

    .line 2449
    aget-object v8, v7, v4

    .line 2450
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2451
    sub-int v9, v0, v5

    .line 2452
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 2453
    :goto_1
    if-ge v2, v9, :cond_0

    .line 2454
    iget-object v10, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v10, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1500(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2453
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 2448
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 2458
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 2459
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2461
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2462
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 2463
    add-int/lit8 v1, v1, -0x1

    .line 2459
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2467
    :cond_3
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 2348
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    .line 2349
    if-nez v0, :cond_1

    .line 2381
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    iput p2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->position:I

    .line 2357
    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 2358
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    .line 2359
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_7

    .line 2360
    :cond_2
    const/4 v2, -0x2

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_5

    .line 2361
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 2362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 2364
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2366
    :cond_5
    if-eqz v1, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_6

    .line 2368
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 2370
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2375
    :cond_7
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 2376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2379
    :cond_8
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2236
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2237
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2238
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 2239
    :goto_0
    if-ge v1, v4, :cond_2

    .line 2240
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v5, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1100(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2244
    :cond_0
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    move v3, v2

    .line 2245
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2246
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 2247
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 2248
    :goto_2
    if-ge v1, v6, :cond_1

    .line 2249
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v7, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1200(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2248
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2245
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2253
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 2254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2256
    :cond_3
    return-void
.end method

.method clearTransientStateViews()V
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 2322
    :cond_0
    return-void
.end method

.method fillActiveViews(II)V
    .locals 5

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 2267
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2269
    :cond_0
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    .line 2271
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2272
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 2273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2274
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    .line 2276
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_1

    .line 2279
    aput-object v3, v2, v1

    .line 2272
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2282
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2292
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    sub-int v2, p1, v0

    .line 2293
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2294
    if-ltz v2, :cond_0

    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 2295
    aget-object v0, v3, v2

    .line 2296
    aput-object v1, v3, v2

    .line 2299
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 2328
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 2337
    :goto_0
    return-object v0

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2333
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2334
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2337
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2303
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_1

    .line 2312
    :cond_0
    :goto_0
    return-object v0

    .line 2306
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 2307
    if-ltz v1, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2311
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2203
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2204
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2205
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 2206
    :goto_0
    if-ge v2, v4, :cond_2

    .line 2207
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 2206
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2211
    :cond_0
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    move v3, v1

    .line 2212
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 2214
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 2215
    :goto_2
    if-ge v2, v6, :cond_1

    .line 2216
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 2215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2212
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2220
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 2221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    .line 2222
    :goto_3
    if-ge v1, v2, :cond_3

    .line 2223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 2222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2226
    :cond_3
    return-void
.end method

.method removeSkippedScrap()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2395
    :goto_0
    return-void

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2391
    :goto_1
    if-ge v1, v3, :cond_1

    .line 2392
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v4, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1300(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2391
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2394
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2401
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2402
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    if-le v1, v0, :cond_5

    move v1, v0

    .line 2404
    :goto_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2405
    array-length v0, v5

    .line 2406
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_8

    .line 2407
    aget-object v6, v5, v4

    .line 2408
    if-eqz v6, :cond_4

    .line 2409
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    .line 2410
    const/4 v7, 0x0

    aput-object v7, v5, v4

    .line 2412
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v7

    .line 2413
    iget v8, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 2415
    invoke-virtual {p0, v8}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v7, :cond_6

    .line 2417
    :cond_0
    const/4 v0, -0x2

    if-ne v8, v0, :cond_1

    if-eqz v7, :cond_2

    .line 2418
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->this$0:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;

    invoke-static {v0, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->access$1400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V

    .line 2420
    :cond_2
    if-eqz v7, :cond_4

    .line 2421
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_3

    .line 2422
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 2424
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    iget v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v7, v4

    invoke-virtual {v0, v7, v6}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 2406
    :cond_4
    :goto_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v1, v2

    .line 2402
    goto :goto_0

    .line 2429
    :cond_6
    if-eqz v1, :cond_7

    .line 2430
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v8

    .line 2432
    :cond_7
    iget v7, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->position:I

    .line 2433
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2437
    :cond_8
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->pruneScrapViews()V

    .line 2438
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2475
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2476
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2477
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 2478
    :goto_0
    if-ge v2, v4, :cond_2

    .line 2479
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2478
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2483
    :cond_0
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    move v3, v1

    .line 2484
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2485
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 2486
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 2487
    :goto_2
    if-ge v2, v6, :cond_1

    .line 2488
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2487
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2484
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2493
    :cond_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2494
    array-length v3, v2

    move v0, v1

    .line 2495
    :goto_3
    if-ge v0, v3, :cond_4

    .line 2496
    aget-object v1, v2, v0

    .line 2497
    if-eqz v1, :cond_3

    .line 2498
    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2495
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2501
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2189
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2193
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 2194
    :goto_0
    if-ge v0, p1, :cond_1

    .line 2195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 2194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2197
    :cond_1
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mViewTypeCount:I

    .line 2198
    aget-object v0, v2, v1

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2199
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 2200
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1

    .prologue
    .line 2229
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
