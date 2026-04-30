.class public Lcom/e/a/a/a/a/g;
.super Lcom/e/a/a/a/a/a/i;
.source "RefactoredDefaultItemAnimator.java"


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/e/a/a/a/a/a/i;-><init>(Lcom/e/a/a/a/a/a;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/e/a/a/a/a/a/g;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/e/a/a/a/a/a/k;

    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/g;->a(Lcom/e/a/a/a/a/a/k;)V

    return-void
.end method

.method protected synthetic a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/e/a/a/a/a/a/k;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/g;->c(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/k;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v0, p1, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 232
    iget v1, p1, Lcom/e/a/a/a/a/a/k;->d:I

    iget v2, p1, Lcom/e/a/a/a/a/a/k;->b:I

    sub-int/2addr v1, v2

    .line 233
    iget v2, p1, Lcom/e/a/a/a/a/a/k;->e:I

    iget v3, p1, Lcom/e/a/a/a/a/a/k;->c:I

    sub-int/2addr v2, v3

    .line 235
    if-eqz v1, :cond_0

    .line 236
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 238
    :cond_0
    if-eqz v2, :cond_1

    .line 239
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 242
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/e/a/a/a/a/g;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 246
    iget-object v1, p1, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1, v1, v0}, Lcom/e/a/a/a/a/g;->a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 247
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 9

    .prologue
    .line 283
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 285
    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v2, v0

    .line 286
    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v3, v0

    .line 288
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/g;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 290
    sub-int v7, p4, v2

    .line 291
    sub-int v8, p5, v3

    .line 293
    new-instance v0, Lcom/e/a/a/a/a/a/k;

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/e/a/a/a/a/a/k;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    .line 295
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 296
    iget-object v1, v0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v0, v1}, Lcom/e/a/a/a/a/g;->e(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 297
    iget-object v1, v0, Lcom/e/a/a/a/a/a/k;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/e/a/a/a/a/a/k;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 298
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 301
    :cond_0
    if-eqz v7, :cond_1

    .line 302
    neg-int v1, v7

    int-to-float v1, v1

    invoke-static {v6, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 304
    :cond_1
    if-eqz v8, :cond_2

    .line 305
    neg-int v1, v8

    int-to-float v1, v1

    invoke-static {v6, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 308
    :cond_2
    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/g;->c(Lcom/e/a/a/a/a/a/g;)V

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/e/a/a/a/a/a/k;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/g;->b(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected b(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 256
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 257
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 258
    return-void
.end method

.method protected synthetic c(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Lcom/e/a/a/a/a/a/k;

    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/a/g;->a(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected c(Lcom/e/a/a/a/a/a/k;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 263
    iget v1, p1, Lcom/e/a/a/a/a/a/k;->d:I

    iget v2, p1, Lcom/e/a/a/a/a/a/k;->b:I

    sub-int/2addr v1, v2

    .line 264
    iget v2, p1, Lcom/e/a/a/a/a/a/k;->e:I

    iget v3, p1, Lcom/e/a/a/a/a/a/k;->c:I

    sub-int/2addr v2, v3

    .line 266
    if-eqz v1, :cond_0

    .line 267
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 269
    :cond_0
    if-eqz v2, :cond_1

    .line 270
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 273
    :cond_1
    if-eqz v1, :cond_2

    .line 274
    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 276
    :cond_2
    if-eqz v2, :cond_3

    .line 277
    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 279
    :cond_3
    return-void
.end method
