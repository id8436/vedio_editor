.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;
.super Ljava/lang/Object;
.source "GPUMediaSurface.java"


# instance fields
.field protected connected:Z

.field protected cropParamsChanged:Z

.field protected crop_bottom:I

.field protected crop_right:I

.field private gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private listener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;

.field protected mContext:Landroid/content/Context;

.field protected mHeight:I

.field private volatile mNewFrameConsumed:Z

.field protected mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

.field protected mSurface:Landroid/view/Surface;

.field protected mWidth:I

.field protected slice:I

.field protected started:Z

.field protected stride:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mContext:Landroid/content/Context;

    .line 62
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->started:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    .line 64
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->connected:Z

    .line 65
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->listener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;

    return-object v0
.end method


# virtual methods
.method public awaitsNewImage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->awaitsNewImage(Z)Z

    move-result v0

    return v0
.end method

.method public awaitsNewImage(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 145
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->awaitsNewImage(ZI)Z

    move-result v0

    return v0
.end method

.method public awaitsNewImage(ZI)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    move v0, v1

    .line 150
    :goto_0
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-ge v0, p2, :cond_1

    move v0, v2

    .line 151
    :cond_0
    const-string/jumbo v2, "New Image"

    const-string/jumbo v3, "waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    if-nez v0, :cond_2

    .line 155
    const-string/jumbo v0, "New Image"

    const-string/jumbo v2, "none"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->connected:Z

    .line 76
    return-void
.end method

.method public getCropBottom()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->crop_bottom:I

    return v0
.end method

.method public getCropParamsChanged()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->cropParamsChanged:Z

    return v0
.end method

.method public getCropRight()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->crop_right:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mHeight:I

    return v0
.end method

.method public getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    return-object v0
.end method

.method public getSlice()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->slice:I

    return v0
.end method

.method public getStride()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->stride:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mWidth:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->connected:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->stop()V

    .line 231
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 234
    :cond_0
    return-void
.end method

.method public resetCropParamsChanged()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->cropParamsChanged:Z

    .line 213
    return-void
.end method

.method public resetNewFrame()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    .line 136
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    .line 137
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSurface(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->stop()V

    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->setSize(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 72
    return-void
.end method

.method public setCrop(IIII)V
    .locals 1

    .prologue
    .line 217
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->stride:I

    .line 218
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->slice:I

    .line 219
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->crop_right:I

    .line 220
    iput p4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->crop_bottom:I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->cropParamsChanged:Z

    .line 222
    return-void
.end method

.method public setInputToFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-nez p2, :cond_2

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_0

    .line 127
    :cond_2
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ge p2, v0, :cond_3

    .line 128
    check-cast p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->setSecondGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_0

    .line 129
    :cond_3
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p1, p2, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_0
.end method

.method public setListener(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->listener:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$Listener;

    .line 84
    return-void
.end method

.method public setSize(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 161
    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-ne v0, p3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    if-eq p1, v1, :cond_2

    .line 165
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mWidth:I

    .line 167
    :cond_2
    if-eq p2, v1, :cond_3

    .line 168
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mHeight:I

    .line 170
    :cond_3
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mHeight:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mRotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onOutputSizeChanged(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    goto :goto_0
.end method

.method public start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->started:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->setDrawFrameListener(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture$DrawFrameListener;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->gpuMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mSurface:Landroid/view/Surface;

    .line 106
    const-string/jumbo v0, "GPUMediaSurface"

    const-string/jumbo v1, "Surface Created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mNewFrameConsumed:Z

    .line 108
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->started:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 113
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->started:Z

    .line 114
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->connected:Z

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->mSurface:Landroid/view/Surface;

    .line 117
    const-string/jumbo v0, "GPUMediaSurface"

    const-string/jumbo v1, "Surface Released"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method
