.class Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;
.source "ClipRendererResources.java"


# instance fields
.field private clipCropFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;

.field private clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

.field private clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->this$0:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    .line 229
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;-><init>(I)V

    .line 230
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipCropFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;

    .line 231
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    .line 232
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    .line 234
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipCropFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected buildNodesInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v1, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 243
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->mFrameBuffers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 244
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v2, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 246
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->mFrameBuffers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v3, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 247
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v3, v2, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 248
    return-void
.end method

.method public setCropParams(IIII)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipCropFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setSizeParams(II)V

    .line 258
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipCropFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;

    invoke-virtual {v0, p3, p4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setCropParams(II)V

    .line 259
    return-void
.end method

.method public setExposure(F)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setExposure(F)V

    .line 263
    return-void
.end method

.method public setHighlights(F)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setHighlights(F)V

    .line 267
    return-void
.end method

.method public setNullEffect(Z)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->setNullEffect(Z)V

    .line 252
    return-void
.end method

.method public setShadows(F)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources$ClipFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setShadows(F)V

    .line 271
    return-void
.end method
