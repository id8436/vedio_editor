.class Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;
.source "VideoTrackRenderer.java"


# instance fields
.field private firstFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field private secondFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

.field private trackMixFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)V
    .locals 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->this$0:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 285
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;-><init>(I)V

    .line 287
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;-><init>(F)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->trackMixFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;

    .line 288
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->firstFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 289
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->secondFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->firstFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->secondFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 293
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->trackMixFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 294
    return-void
.end method


# virtual methods
.method protected buildNodesInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v1, v1, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 302
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->mFrameBuffers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v3, v1, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->mFrameBuffers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v3, v2, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 304
    return-void
.end method

.method public setMix(F)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->trackMixFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;->setMix(F)V

    .line 308
    return-void
.end method
