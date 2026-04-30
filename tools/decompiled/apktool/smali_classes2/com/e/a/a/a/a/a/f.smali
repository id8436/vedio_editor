.class public abstract Lcom/e/a/a/a/a/a/f;
.super Lcom/e/a/a/a/a/a/b;
.source "ItemAddAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/e/a/a/a/a/a/b",
        "<",
        "Lcom/e/a/a/a/a/a/a;",
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
.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public d(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/e/a/a/a/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "ARVItemAddAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchAddStarting("

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

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/f;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0, p2}, Lcom/e/a/a/a/a/a;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 47
    return-void
.end method

.method public bridge synthetic d(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a/f;->d(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public e(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/e/a/a/a/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "ARVItemAddAnimMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatchAddFinished("

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

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/f;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0, p2}, Lcom/e/a/a/a/a/a;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 55
    return-void
.end method

.method public bridge synthetic e(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a/f;->e(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected f(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 60
    :cond_0
    iget-object v0, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/a/a/f;->b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 61
    iget-object v0, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/a/a/f;->e(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 62
    iget-object v0, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/e/a/a/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic f(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a/f;->f(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/e/a/a/a/a/a/f;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a;->getAddDuration()J

    move-result-wide v0

    return-wide v0
.end method
