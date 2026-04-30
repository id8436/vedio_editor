.class public Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoView;


# instance fields
.field private final mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoView;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->cleanup()V

    .line 284
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 285
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 142
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->update()V

    .line 184
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->update()V

    .line 192
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->update()V

    .line 200
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->setMaximumScale(F)V

    .line 170
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 175
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 164
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->setMediumScale(F)V

    .line 159
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->setMinimumScale(F)V

    .line 148
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 153
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 279
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 205
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 215
    return-void
.end method

.method public setOnViewTapListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 225
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 64
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 74
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 69
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(F)V

    .line 235
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 245
    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 240
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 269
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->mAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 259
    return-void
.end method
