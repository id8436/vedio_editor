.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;
.source "ImageSurface.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private draw()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->started:Z

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mWidth:I

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 94
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    const-string/jumbo v1, "New Image"

    const-string/jumbo v2, "Drawing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 98
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->releaseBitmap()V

    goto :goto_0
.end method

.method private releaseBitmap()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public drawImage()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->setSize(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 53
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->draw()V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->releaseBitmap()V

    .line 112
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->release()V

    .line 113
    return-void
.end method

.method public setBitmap(I)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->releaseBitmap()V

    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->releaseBitmap()V

    .line 66
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setBitmap(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->releaseBitmap()V

    .line 58
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method

.method public setBitmap([BII)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->releaseBitmap()V

    .line 76
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 78
    return-void
.end method

.method public start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 83
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->draw()V

    .line 84
    return-void
.end method
