.class public Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;
.super Ljava/lang/Object;
.source "ClipRendererResources.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipRenderResources"


# instance fields
.field private gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private mClipEffectsLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

.field private mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

.field private mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

.field private mClipTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private mLookLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private maxHeight:I

.field private maxWidth:I

.field private mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

.field private oriHeight:I

.field private oriWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    .line 62
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 63
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->constructClipEffectsFilter(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private constructClipEffectsFilter(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;-><init>(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    .line 68
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    .line 69
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    .line 70
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->setClipEffects(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getClipFrameBuffer()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->oriHeight:I

    return v0
.end method

.method public getMediaSurface()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->oriWidth:I

    return v0
.end method

.method public init(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x0

    .line 119
    if-ne p1, v0, :cond_0

    .line 120
    const/16 p1, 0x780

    .line 123
    :cond_0
    if-ne p2, v0, :cond_1

    .line 124
    const/16 p2, 0x438

    .line 127
    :cond_1
    const-string/jumbo v0, "Render_issue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " maxheight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxWidth:I

    .line 130
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxHeight:I

    .line 132
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->oriWidth:I

    .line 133
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->oriHeight:I

    .line 135
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 138
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    .line 139
    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipEffectsLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipEffectsLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 142
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    .line 143
    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mLookLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mLookLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->start(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 146
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v4, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mLookLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v5, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 150
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipEffectsLUT:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->onOutputSizeChanged(II)V

    .line 153
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->init()V

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->addFilterToChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 156
    return-void
.end method

.method public onClipCropChanged()V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getCropBottom()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getCropRight()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getStride()I

    move-result v2

    .line 113
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getSlice()I

    move-result v3

    .line 114
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setCropParams(IIII)V

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->resetCropParamsChanged()V

    .line 116
    return-void
.end method

.method public onClipSizeChanged(Z)V
    .locals 5

    .prologue
    .line 74
    const-string/jumbo v0, "Render_issue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clip size changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getWidth()I

    move-result v1

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getHeight()I

    move-result v0

    .line 77
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->oriWidth:I

    .line 81
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->oriHeight:I

    .line 82
    if-eqz p1, :cond_2

    .line 83
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 84
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 85
    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxWidth:I

    if-le v1, v3, :cond_2

    .line 86
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxWidth:I

    .line 87
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 97
    :cond_2
    :goto_1
    const-string/jumbo v2, "Render_issue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new optimized size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDestroy()V

    .line 102
    :cond_3
    new-instance v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 103
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->onOutputSizeChanged(II)V

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->gpuMediaSurfaceView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->changeBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    goto :goto_0

    .line 90
    :cond_4
    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxHeight:I

    if-le v1, v3, :cond_2

    .line 91
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxHeight:I

    .line 92
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->release()V

    .line 213
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->release()V

    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->release()V

    .line 221
    return-void
.end method

.method public setClipEffects(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getExposure()F

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    .line 180
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getShadows()F

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    .line 181
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getHighlights()F

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipExposureSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->setClipExposureParams(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setExposure(F)V

    .line 186
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setHighlights(F)V

    .line 187
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setShadows(F)V

    .line 189
    :cond_1
    return-void
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;Z)V
    .locals 2

    .prologue
    .line 166
    if-nez p2, :cond_1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    .line 169
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setNullEffect(Z)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipLookUpSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;

    const-string/jumbo v1, "0"

    invoke-static {v1}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z

    .line 174
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setNullEffect(Z)V

    goto :goto_0
.end method

.method public setMaxSize(II)V
    .locals 3

    .prologue
    .line 159
    const-string/jumbo v0, "Render_issue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " maxheight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxWidth:I

    .line 161
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->maxHeight:I

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->onClipSizeChanged(Z)V

    .line 163
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->mClipFilter:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setTextureScale(F)V

    .line 193
    return-void
.end method
