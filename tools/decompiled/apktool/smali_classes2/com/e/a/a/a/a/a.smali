.class public abstract Lcom/e/a/a/a/a/a;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "BaseItemAnimator.java"


# instance fields
.field private a:Lcom/e/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/e/a/a/a/a/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/e/a/a/a/a/a;->dispatchAnimationsFinished()V

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 61
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    invoke-interface {v0, p1}, Lcom/e/a/a/a/a/b;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final onAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 55
    return-void
.end method

.method public final onChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 75
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    invoke-interface {v0, p1}, Lcom/e/a/a/a/a/b;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final onChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 69
    return-void
.end method

.method public final onMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 89
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    invoke-interface {v0, p1}, Lcom/e/a/a/a/a/b;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final onMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 83
    return-void
.end method

.method public final onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 103
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/e/a/a/a/a/a;->a:Lcom/e/a/a/a/a/b;

    invoke-interface {v0, p1}, Lcom/e/a/a/a/a/b;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 97
    return-void
.end method
