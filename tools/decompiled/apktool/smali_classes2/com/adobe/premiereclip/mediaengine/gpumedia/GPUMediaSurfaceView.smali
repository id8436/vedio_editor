.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GPUMediaSurfaceView.java"


# instance fields
.field private eglContext:Landroid/opengl/EGLContext;

.field private filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

.field private renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 40
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->setEGLContextClientVersion(I)V

    .line 42
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 43
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->setDebugFlags(I)V

    .line 46
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    .line 47
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->setListener(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer$Listener;)V

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 64
    invoke-virtual {p0, v6}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->setRenderMode(I)V

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Landroid/opengl/EGLContext;)Landroid/opengl/EGLContext;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->eglContext:Landroid/opengl/EGLContext;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    return-object v0
.end method


# virtual methods
.method public addFilterToChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 81
    return-void
.end method

.method public changeBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;->changeBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 85
    return-void
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->getFrameHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->getFrameWidth()I

    move-result v0

    return v0
.end method

.method public getEglContext()Landroid/opengl/EGLContext;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->eglContext:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public queueFilterDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->queueFilterDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;Z)V

    .line 97
    return-void
.end method

.method public queueFilterDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->queueFilterDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;Z)V

    .line 101
    return-void
.end method

.method public queueFilterDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;Z)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView$2;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;ZLcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;->removeFilters()V

    .line 131
    return-void
.end method

.method public removeFilterFromChain(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;->removeFilter(I)V

    .line 89
    return-void
.end method

.method public removeFilterFromChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->filterChain:Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/renderers/FilterChain;->removeFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 93
    return-void
.end method

.method public runOnDraw(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public runOnDrawEnd(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->renderer:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaRenderer;->runOnDrawEnd(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
