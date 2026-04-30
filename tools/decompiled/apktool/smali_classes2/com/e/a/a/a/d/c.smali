.class final Lcom/e/a/a/a/d/c;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "BaseWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/e/a/a/a/d/b",
            "<TVH;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/d/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/e/a/a/a/d/b",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    .line 196
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/d/b;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/e/a/a/a/d/b;->h()V

    .line 204
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/d/b;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1, p2}, Lcom/e/a/a/a/d/b;->e(II)V

    .line 212
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/d/b;

    .line 217
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1, p2, p3}, Lcom/e/a/a/a/d/b;->b(IILjava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/d/b;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/e/a/a/a/d/b;->f(II)V

    .line 228
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/d/b;

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1, p2, p3}, Lcom/e/a/a/a/d/b;->c(III)V

    .line 245
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/e/a/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/d/b;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1, p2}, Lcom/e/a/a/a/d/b;->g(II)V

    .line 236
    :cond_0
    return-void
.end method
