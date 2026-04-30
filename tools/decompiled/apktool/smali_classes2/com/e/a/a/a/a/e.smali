.class public Lcom/e/a/a/a/a/e;
.super Lcom/e/a/a/a/a/a/f;
.source "RefactoredDefaultItemAnimator.java"


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/e/a/a/a/a/a/f;-><init>(Lcom/e/a/a/a/a/a;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected a(Lcom/e/a/a/a/a/a/a;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 61
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 62
    invoke-virtual {p0}, Lcom/e/a/a/a/a/e;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 64
    iget-object v1, p1, Lcom/e/a/a/a/a/a/a;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/e/a/a/a/a/e;->a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 65
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method protected bridge synthetic a(Lcom/e/a/a/a/a/a/g;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/e;->a(Lcom/e/a/a/a/a/a/a;)V

    return-void
.end method

.method protected synthetic a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/e;->c(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/e;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 85
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 87
    new-instance v0, Lcom/e/a/a/a/a/a/a;

    invoke-direct {v0, p1}, Lcom/e/a/a/a/a/a/a;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/e;->c(Lcom/e/a/a/a/a/a/g;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 74
    return-void
.end method

.method protected bridge synthetic b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/e;->b(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected c(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 79
    return-void
.end method

.method protected synthetic c(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/e/a/a/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/e;->a(Lcom/e/a/a/a/a/a/a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
