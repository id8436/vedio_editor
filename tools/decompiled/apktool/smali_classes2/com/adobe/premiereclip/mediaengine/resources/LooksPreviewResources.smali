.class public Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;
.super Ljava/lang/Object;
.source "LooksPreviewResources.java"


# instance fields
.field private clipLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

.field private gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private handler:Landroid/os/Handler;

.field private posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

.field private posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

.field private posterTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private shouldApplyLook:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;Lcom/adobe/premiereclip/project/Project;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p4}, Lcom/adobe/premiereclip/project/Project;->shouldApplyLookOnPoster()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->shouldApplyLook:Z

    .line 61
    invoke-virtual {p4}, Lcom/adobe/premiereclip/project/Project;->getNormalPosterPath()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->handler:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 64
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-direct {v1, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    .line 65
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-direct {v1, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    .line 68
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    invoke-direct {v1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    .line 69
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v2, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$1;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$Listener;Ljava/lang/String;Lcom/adobe/premiereclip/project/Project;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->clipLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->clipLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->shouldApplyLook:Z

    return v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public applyLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterFilter:Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->access$800(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;Z)V

    .line 137
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v2, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$2;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$2;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 145
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    .line 147
    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->posterSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;->release()V

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->clipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->release()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 160
    return-void
.end method
