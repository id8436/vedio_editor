.class public abstract Lcom/e/a/a/a/a/a/h;
.super Lcom/e/a/a/a/a/a/b;
.source "ItemChangeAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/e/a/a/a/a/a/b",
        "<",
        "Lcom/e/a/a/a/a/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/e/a/a/a/a/a/b;-><init>(Lcom/e/a/a/a/a/a;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/e/a/a/a/a/a/e;)V
.end method

.method protected synthetic a(Lcom/e/a/a/a/a/a/g;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a/h;->c(Lcom/e/a/a/a/a/a/e;)V

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method protected abstract b(Lcom/e/a/a/a/a/a/e;)V
.end method

.method protected c(Lcom/e/a/a/a/a/a/e;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a/h;->a(Lcom/e/a/a/a/a/a/e;)V

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a/h;->b(Lcom/e/a/a/a/a/a/e;)V

    .line 66
    :cond_1
    return-void
.end method

.method public d(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/e/a/a/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "ARVItemChangeAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchChangeStarting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/e/a/a/a/a/a/h;->a:Lcom/e/a/a/a/a/a;

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/e/a/a/a/a/a;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 37
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic d(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a/h;->d(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public e(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/e/a/a/a/a/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "ARVItemChangeAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchChangeFinished("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/e/a/a/a/a/a/h;->a:Lcom/e/a/a/a/a/a;

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/e/a/a/a/a/a;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 45
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic e(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a/h;->e(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected f(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/a/a/h;->b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 72
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/a/a/h;->e(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 73
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/e/a/a/a/a/a/e;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_3

    .line 77
    :cond_2
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/a/a/h;->b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 78
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/a/a/h;->e(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 79
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/e/a/a/a/a/a/e;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 82
    :cond_3
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic f(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a/h;->f(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/e/a/a/a/a/a/h;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a;->getChangeDuration()J

    move-result-wide v0

    return-wide v0
.end method
