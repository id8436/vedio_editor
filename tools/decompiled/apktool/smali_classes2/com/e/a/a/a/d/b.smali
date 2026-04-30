.class public Lcom/e/a/a/a/d/b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TVH;>;"
        }
    .end annotation
.end field

.field private b:Lcom/e/a/a/a/d/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 35
    new-instance v0, Lcom/e/a/a/a/d/c;

    invoke-direct {v0, p0}, Lcom/e/a/a/a/d/c;-><init>(Lcom/e/a/a/a/d/b;)V

    iput-object v0, p0, Lcom/e/a/a/a/d/b;->b:Lcom/e/a/a/a/d/c;

    .line 36
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/e/a/a/a/d/b;->b:Lcom/e/a/a/a/d/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 37
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected a(II)V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->notifyItemRangeChanged(II)V

    .line 121
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/e/a/a/a/d/b;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/e/a/a/a/d/b;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method protected b(II)V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->notifyItemRangeInserted(II)V

    .line 129
    return-void
.end method

.method protected b(III)V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "itemCount should be always 1  (actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->notifyItemMoved(II)V

    .line 141
    return-void
.end method

.method final b(IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lcom/e/a/a/a/d/b;->a(IILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method protected c(II)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->notifyItemRangeRemoved(II)V

    .line 133
    return-void
.end method

.method final c(III)V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lcom/e/a/a/a/d/b;->b(III)V

    .line 189
    return-void
.end method

.method final e(II)V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->a(II)V

    .line 157
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/e/a/a/a/d/b;->a()V

    .line 43
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/d/b;->b:Lcom/e/a/a/a/d/c;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/e/a/a/a/d/b;->b:Lcom/e/a/a/a/d/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 47
    :cond_0
    iput-object v2, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 48
    iput-object v2, p0, Lcom/e/a/a/a/d/b;->b:Lcom/e/a/a/a/d/c;

    .line 49
    return-void
.end method

.method final f(II)V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->b(II)V

    .line 173
    return-void
.end method

.method public g()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TVH;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method final g(II)V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/d/b;->c(II)V

    .line 181
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method final h()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/e/a/a/a/d/b;->b()V

    .line 149
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 62
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 98
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 67
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 72
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 77
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 82
    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 87
    iget-object v0, p0, Lcom/e/a/a/a/d/b;->a:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 88
    return-void
.end method
