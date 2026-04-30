.class public Lcom/e/a/a/a/a/h;
.super Lcom/e/a/a/a/a/a/j;
.source "RefactoredDefaultItemAnimator.java"


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/e/a/a/a/a/a/j;-><init>(Lcom/e/a/a/a/a/a;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/e/a/a/a/a/a/g;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/e/a/a/a/a/a/l;

    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/h;->a(Lcom/e/a/a/a/a/a/l;)V

    return-void
.end method

.method protected synthetic a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/e/a/a/a/a/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/h;->c(Lcom/e/a/a/a/a/a/l;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/l;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p1, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/e/a/a/a/a/h;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 109
    iget-object v1, p1, Lcom/e/a/a/a/a/a/l;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/e/a/a/a/a/h;->a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 110
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/l;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 115
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 116
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/h;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 132
    new-instance v0, Lcom/e/a/a/a/a/a/l;

    invoke-direct {v0, p1}, Lcom/e/a/a/a/a/a/l;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/h;->c(Lcom/e/a/a/a/a/a/g;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/e/a/a/a/a/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/h;->b(Lcom/e/a/a/a/a/a/l;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected b(Lcom/e/a/a/a/a/a/l;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 122
    return-void
.end method

.method protected synthetic c(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/e/a/a/a/a/a/l;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/h;->a(Lcom/e/a/a/a/a/a/l;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected c(Lcom/e/a/a/a/a/a/l;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
