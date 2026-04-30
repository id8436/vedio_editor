.class public Lcom/e/a/a/a/a/f;
.super Lcom/e/a/a/a/a/a/h;
.source "RefactoredDefaultItemAnimator.java"


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/e/a/a/a/a/a/h;-><init>(Lcom/e/a/a/a/a/a;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected a(Lcom/e/a/a/a/a/a/e;)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/e/a/a/a/a/f;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 150
    iget v1, p1, Lcom/e/a/a/a/a/a/e;->e:I

    iget v2, p1, Lcom/e/a/a/a/a/a/e;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 151
    iget v1, p1, Lcom/e/a/a/a/a/a/e;->f:I

    iget v2, p1, Lcom/e/a/a/a/a/a/e;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 154
    iget-object v1, p1, Lcom/e/a/a/a/a/a/e;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/e/a/a/a/a/f;->a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 155
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 173
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 174
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 175
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 176
    return-void
.end method

.method protected synthetic a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/f;->c(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 7

    .prologue
    .line 192
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    .line 193
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    .line 194
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    .line 196
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/f;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 198
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 199
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 202
    iget-object v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 203
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 204
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 206
    if-eqz p2, :cond_0

    .line 208
    invoke-virtual {p0, p2}, Lcom/e/a/a/a/a/f;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 209
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 210
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 211
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 214
    :cond_0
    new-instance v0, Lcom/e/a/a/a/a/a/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/e/a/a/a/a/a/e;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/f;->c(Lcom/e/a/a/a/a/a/g;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/e/a/a/a/a/a/e;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 163
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 164
    invoke-virtual {p0}, Lcom/e/a/a/a/a/f;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 165
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 167
    iget-object v1, p1, Lcom/e/a/a/a/a/a/e;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/e/a/a/a/a/f;->a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 168
    return-void
.end method

.method protected b(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 181
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 182
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 183
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 184
    return-void
.end method

.method protected bridge synthetic b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/f;->b(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected c(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method protected synthetic c(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 140
    check-cast p1, Lcom/e/a/a/a/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/f;->a(Lcom/e/a/a/a/a/a/e;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
