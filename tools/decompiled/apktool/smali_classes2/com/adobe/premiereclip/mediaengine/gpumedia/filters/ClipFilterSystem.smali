.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;
.source "ClipFilterSystem.java"


# static fields
.field private static final NUMBER_OF_EXPOSURE_FILTERS:I = 0x2

.field private static final NUMBER_OF_LOOKUP_FILTERS:I = 0x2


# instance fields
.field private currentBlendFactor:F

.field private exposureFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private lookFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 37
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;-><init>(I)V

    .line 38
    iput v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->currentBlendFactor:F

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->lookFilters:Ljava/util/ArrayList;

    move v1, v0

    .line 42
    :goto_0
    if-ge v1, v5, :cond_0

    .line 43
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    new-instance v3, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-direct {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    :goto_1
    if-ge v0, v5, :cond_1

    .line 46
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->lookFilters:Ljava/util/ArrayList;

    new-instance v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-direct {v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->lookFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->addFilters(Ljava/util/ArrayList;)V

    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->addFilters(Ljava/util/ArrayList;)V

    .line 50
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 51
    return-void
.end method

.method private static filterInputNodesCount(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)I
    .locals 1

    .prologue
    .line 86
    instance-of v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x2

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    instance-of v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    if-eqz v0, :cond_1

    .line 90
    check-cast p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBlockFilter;->getNumInputNodes()I

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setNull(IZ)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->lookFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->setNullEffect(Z)V

    .line 83
    return-void
.end method


# virtual methods
.method protected buildNodesInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 98
    move v2, v1

    .line 100
    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mTextures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mTextures:Ljava/util/List;

    add-int/lit8 v3, v2, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v4, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    :goto_1
    if-ge v2, v5, :cond_1

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mFrameBuffers:Ljava/util/List;

    add-int/lit8 v3, v2, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mTextures:Ljava/util/List;

    add-int/lit8 v3, v2, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v4, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 107
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 113
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mFilters:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->filterInputNodesCount(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mFrameBuffers:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {p0, v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setInputNode(IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 116
    :cond_2
    return-void
.end method

.method public setBlendFactor(F)Z
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->currentBlendFactor:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 73
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->currentBlendFactor:F

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->mFilters:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;

    .line 75
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;->setMix(F)V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClipOptionsToFilter(ILcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setExposure(F)V

    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setHighlights(F)V

    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->exposureFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setShadows(F)V

    .line 69
    :cond_0
    return-void
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->lookFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setNull(IZ)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public setLookToFilter(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipFilterSystem;->setNull(IZ)V

    .line 61
    return-void
.end method
