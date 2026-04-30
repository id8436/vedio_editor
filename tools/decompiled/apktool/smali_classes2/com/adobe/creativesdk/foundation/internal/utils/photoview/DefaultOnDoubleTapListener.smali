.class public Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->setPhotoViewAttacher(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    if-nez v1, :cond_1

    .line 72
    const/4 v0, 0x0

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 81
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 82
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 83
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v1

    .line 92
    :goto_1
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getZoomDelegate()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    move-result-object v4

    .line 93
    if-eqz v4, :cond_0

    .line 94
    invoke-interface {v4, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;->signalZoomHandled(FFF)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0

    .line 84
    :cond_2
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 86
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v1

    goto :goto_1

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 89
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMinimumScale()F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    iget v0, v2, Landroid/graphics/RectF;->left:F

    sub-float v0, v3, v0

    .line 53
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    .line 54
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v4, v3

    .line 55
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v3, v2

    .line 57
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method public setPhotoViewAttacher(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    .line 34
    return-void
.end method
