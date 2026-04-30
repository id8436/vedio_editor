.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaThresholdEdgeDetection;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;
.source "GPUMediaThresholdEdgeDetection.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;-><init>()V

    .line 26
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaThresholdEdgeDetection;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 27
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelThresholdFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelThresholdFilter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaThresholdEdgeDetection;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setLineSize(F)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaThresholdEdgeDetection;->getFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->setLineSize(F)V

    .line 32
    return-void
.end method

.method public setThreshold(F)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaThresholdEdgeDetection;->getFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelThresholdFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelThresholdFilter;->setThreshold(F)V

    .line 36
    return-void
.end method
