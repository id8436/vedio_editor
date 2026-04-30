.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaCopyFilter.java"


# instance fields
.field private copyFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCopyBuffer()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->copyFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method public onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getWidth()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getHeight()I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->ROTATION_180:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    if-eq v2, v3, :cond_2

    .line 64
    :goto_0
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mOutputWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mOutputHeight:I

    if-eq v2, v0, :cond_1

    .line 65
    :cond_0
    const-string/jumbo v2, "Renderclip"

    const-string/jumbo v3, "clipframebuffer size changed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->onOutputSizeChanged(II)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->copyFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->bindFrameBuffer()V

    .line 71
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->onDraw()V

    .line 72
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 80
    return-void

    :cond_2
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method public onOutputSizeChanged(II)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getWidth()I

    move-result p1

    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getHeight()I

    move-result p2

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->copyFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->copyFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDestroy()V

    .line 42
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCopyFilter;->copyFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 43
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 44
    return-void
.end method
