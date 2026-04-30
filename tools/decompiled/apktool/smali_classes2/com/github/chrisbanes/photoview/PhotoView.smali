.class public Lcom/github/chrisbanes/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"


# instance fields
.field private a:Lcom/github/chrisbanes/photoview/l;

.field private b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/PhotoView;->a()V

    .line 54
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/github/chrisbanes/photoview/l;

    invoke-direct {v0, p0}, Lcom/github/chrisbanes/photoview/l;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    .line 60
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/chrisbanes/photoview/l;->a(FFF)V

    .line 217
    return-void
.end method

.method public getAttacher()Lcom/github/chrisbanes/photoview/l;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->a()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->h()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->d()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->c()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->b()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->e()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->f()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Z)V

    .line 201
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v1}, Lcom/github/chrisbanes/photoview/l;->g()V

    .line 139
    :cond_0
    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->g()V

    .line 115
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->g()V

    .line 123
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 128
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/l;->g()V

    .line 131
    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->e(F)V

    .line 213
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->d(F)V

    .line 209
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->c(F)V

    .line 205
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 257
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Landroid/view/View$OnLongClickListener;)V

    .line 92
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/github/chrisbanes/photoview/e;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/e;)V

    .line 221
    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/github/chrisbanes/photoview/f;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/f;)V

    .line 229
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/g;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/g;)V

    .line 225
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/github/chrisbanes/photoview/h;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/h;)V

    .line 261
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/github/chrisbanes/photoview/i;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/i;)V

    .line 265
    return-void
.end method

.method public setOnViewDragListener(Lcom/github/chrisbanes/photoview/j;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/j;)V

    .line 237
    return-void
.end method

.method public setOnViewTapListener(Lcom/github/chrisbanes/photoview/k;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Lcom/github/chrisbanes/photoview/k;)V

    .line 233
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->b(F)V

    .line 148
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(F)V

    .line 144
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->f(F)V

    .line 241
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->a(I)V

    .line 253
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/PhotoView;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v0, p1}, Lcom/github/chrisbanes/photoview/l;->b(Z)V

    .line 161
    return-void
.end method
