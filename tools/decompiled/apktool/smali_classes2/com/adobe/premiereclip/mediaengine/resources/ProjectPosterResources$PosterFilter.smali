.class Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;
.source "ProjectPosterResources.java"


# instance fields
.field private clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

.field private clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;-><init>(I)V

    .line 237
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    .line 238
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    .line 239
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 240
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 242
    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;Z)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setNullEffect(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setClipEffects(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    return-void
.end method

.method private setClipEffects(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setExposure(F)V

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setHighlights(F)V

    .line 263
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setShadows(F)V

    .line 264
    return-void
.end method

.method private setNullEffect(Z)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->setNullEffect(Z)V

    .line 258
    return-void
.end method


# virtual methods
.method protected buildNodesInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v1, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 248
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->mFrameBuffers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 249
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v2, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->mFrameBuffers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v3, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v3, v2, v0}, Lcom/adobe/premiereclip/mediaengine/resources/ProjectPosterResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 254
    return-void
.end method
