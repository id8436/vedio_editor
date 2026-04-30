.class public Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;
.super Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;
.source "ImageDecoder.java"


# instance fields
.field private height:I

.field private renderedFrame:Z

.field private width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;-><init>(Ljava/lang/String;II)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->renderedFrame:Z

    .line 41
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_90:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-eq p6, v0, :cond_0

    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_270:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-ne p6, v0, :cond_1

    :cond_0
    move v1, p4

    move p4, p5

    move p5, v1

    .line 46
    :cond_1
    iput p4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->width:I

    .line 47
    iput p5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->height:I

    .line 48
    return-void
.end method


# virtual methods
.method public getFrameAtTimeInternal(JJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 72
    :goto_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->currentTimeStampUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->isReleased()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->renderedFrame:Z

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->sourcePath:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->height:I

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/util/Utilities;->getScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v1, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 78
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->width:I

    iget v5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->height:I

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    iput-boolean v8, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->renderedFrame:Z

    .line 85
    :cond_1
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->currentTimeStampUs:J

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->renderedTimeStampUs:J

    .line 86
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->currentTimeStampUs:J

    const-wide/32 v2, 0x8235

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->currentTimeStampUs:J

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->height:I

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->width:I

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->setCrop(IIII)V

    goto :goto_0

    .line 91
    :cond_2
    return v8
.end method

.method protected onDisabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->renderedFrame:Z

    .line 63
    return-void
.end method

.method protected onEnabled(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;->renderedFrame:Z

    .line 58
    return-void
.end method

.method public onReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method protected onSurfaceSet()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method protected seekToInternal(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method
