.class Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;
.source "LooksPreviewResources.java"


# instance fields
.field private clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

.field private clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;-><init>(I)V

    .line 167
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    .line 168
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    .line 170
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 172
    return-void
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;Z)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->setNullEffect(Z)V

    return-void
.end method

.method private setClipEffects(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setExposure(F)V

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setHighlights(F)V

    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipExposureFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setShadows(F)V

    .line 194
    return-void
.end method

.method private setNullEffect(Z)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->clipLookUpFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->setNullEffect(Z)V

    .line 188
    return-void
.end method


# virtual methods
.method protected buildNodesInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v1, v1, v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v1, v2, v0}, Lcom/adobe/premiereclip/mediaengine/resources/LooksPreviewResources$PosterFilter;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 184
    return-void
.end method
