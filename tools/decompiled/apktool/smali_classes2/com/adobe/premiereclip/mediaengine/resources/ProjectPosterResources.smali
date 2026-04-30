.class public Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;
.super Ljava/lang/Object;
.source "ProjectPosterResources.java"


# static fields
.field private static final POSTER_HEIGHT:I = 0x2d0

.field private static final POSTER_WIDTH:I = 0x500


# instance fields
.field private cancelled:Z

.field private clipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

.field private clipExposureTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private clipLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

.field private finalFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field private gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private handler:Landroid/os/Handler;

.field private posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

.field private posterFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

.field private posterTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->handler:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 75
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    .line 76
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    .line 77
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    .line 79
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    .line 80
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->finalFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;

    invoke-direct {v1, p0, p3}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$1;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$Listener;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipExposureTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipExposureTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$402(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object p1
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->finalFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private isCancelled()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->cancelled:Z

    return v0
.end method


# virtual methods
.method public applyLook(Landroid/graphics/Bitmap;Lcom/adobe/premiereclip/project/sequence/Clip;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x500

    const/16 v10, 0x2d0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 128
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->cancelled:Z

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->resetNewFrame()V

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->drawImage()V

    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->awaitsNewImage(Z)Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->setClipExposureParams(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->access$1000(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;Z)V

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->access$1100(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    .line 145
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 147
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 4.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 213
    :goto_0
    return-object v0

    .line 152
    :cond_1
    const v0, 0xe1000

    new-array v8, v0, [I

    .line 153
    const v0, 0xe1000

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    .line 155
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 4.2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 157
    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDimensions()[Ljava/lang/Object;

    move-result-object v1

    .line 161
    aget-object v0, v1, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 162
    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 164
    iget-object v9, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$2;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;IILjava/nio/IntBuffer;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v9, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 184
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 4.3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 186
    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    .line 191
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 4.4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 193
    goto :goto_0

    .line 196
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 198
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    const-string/jumbo v0, "ProjectPosterTask"

    const-string/jumbo v1, "cancelling 4.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 200
    goto :goto_0

    .line 203
    :cond_5
    invoke-virtual {v4}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    move v0, v7

    .line 206
    :goto_1
    if-ge v0, v10, :cond_6

    .line 207
    mul-int/lit16 v2, v0, 0x500

    rsub-int v3, v0, 0x2d0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit16 v3, v3, 0x500

    invoke-static {v1, v2, v8, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    invoke-static {v8}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->cancelled:Z

    .line 121
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->release()V

    .line 218
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->release()V

    .line 219
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->clipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->release()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 230
    return-void
.end method
