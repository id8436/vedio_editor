.class public abstract Landroid/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6398
    new-instance v0, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    .line 6399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6501
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6502
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6503
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6505
    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6508
    const-string/jumbo v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6509
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6510
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6511
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6512
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 6513
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6515
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6516
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 6486
    const-string/jumbo v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6487
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6488
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6489
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 6490
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 6559
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 6531
    const/4 v0, 0x0

    return v0
.end method

.method public final hasObservers()Z
    .locals 1

    .prologue
    .line 6669
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 6577
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6756
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6757
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .prologue
    .line 6772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6773
    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 6800
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6801
    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .prologue
    .line 6865
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6866
    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .prologue
    .line 6880
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 6881
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .prologue
    .line 6818
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6819
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 6848
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6849
    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .prologue
    .line 6899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6900
    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .prologue
    .line 6933
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6934
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .prologue
    .line 6916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6917
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6715
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6476
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 6477
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6724
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 6635
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6649
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6661
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 6598
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 6689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6690
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 2

    .prologue
    .line 6543
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6547
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 6548
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .prologue
    .line 6703
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$Adapter;->mObservable:Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6704
    return-void
.end method
