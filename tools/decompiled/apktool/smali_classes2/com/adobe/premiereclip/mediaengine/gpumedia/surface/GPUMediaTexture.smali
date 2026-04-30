.class public final Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
.super Ljava/lang/Object;
.source "GPUMediaTexture.java"


# instance fields
.field protected drawFrameListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;

.field private final isFrameBuffer:Z

.field private final mFrameBufferHandle:I

.field protected final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mHeight:I

.field private mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTextureHandle:I

.field private final mTextureTarget:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isFrameBuffer:Z

    .line 64
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 69
    if-ne p4, v2, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p4

    .line 72
    :cond_0
    iput p4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    .line 73
    iput v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mFrameBufferHandle:I

    .line 74
    if-eqz p5, :cond_2

    const v0, 0x8d65

    :goto_0
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureTarget:I

    .line 75
    if-eqz p5, :cond_1

    .line 76
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onOutputSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 89
    return-void

    .line 74
    :cond_2
    const/16 v0, 0xde1

    goto :goto_0
.end method

.method public constructor <init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isFrameBuffer:Z

    .line 94
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 98
    if-eqz p4, :cond_0

    .line 99
    invoke-static {p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadFrameBuffer(II)[I

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    .line 101
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mFrameBufferHandle:I

    .line 102
    const/16 v0, 0xde1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureTarget:I

    .line 120
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onOutputSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 121
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mFrameBufferHandle:I

    .line 106
    const v0, 0x8d65

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureTarget:I

    .line 107
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$2;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0
.end method

.method private onSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 3

    .prologue
    .line 160
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    .line 161
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    .line 162
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->setRotationBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 163
    const-string/jumbo v0, "GPUMediaTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_270:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_90:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-ne p3, v0, :cond_2

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0
.end method

.method private setRotationBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 145
    if-eqz p1, :cond_0

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 148
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 147
    :goto_1
    invoke-static {p1, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$TextureRotationUtil;->getRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;ZZ)[F

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    return-void

    .line 145
    :cond_0
    sget-object p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 148
    goto :goto_1
.end method


# virtual methods
.method public bindFrameBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isFrameBuffer:Z

    if-eqz v0, :cond_0

    .line 206
    const v0, 0x8d40

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mFrameBufferHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 207
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 209
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    return v0
.end method

.method public getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    return-object v0
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureTarget()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureTarget:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    return v0
.end method

.method public final isExternalOES()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureTarget:I

    const v1, 0x8d65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 299
    :cond_0
    new-array v0, v3, [I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 303
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mFrameBufferHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 304
    new-array v0, v3, [I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mFrameBufferHandle:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 308
    :cond_1
    return-void
.end method

.method public onDraw(I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 195
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureTarget:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mTextureHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 197
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 200
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 202
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mHeight:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-ne v0, p3, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    goto :goto_0
.end method

.method public setDrawFrameListener(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->drawFrameListener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;

    .line 59
    return-void
.end method

.method public setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-static {p1, v2, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$TextureRotationUtil;->getRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;ZZ)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
