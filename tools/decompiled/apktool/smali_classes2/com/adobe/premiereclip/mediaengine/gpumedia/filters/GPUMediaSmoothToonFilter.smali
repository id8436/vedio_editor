.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;
.source "GPUMediaSmoothToonFilter.java"


# instance fields
.field blurFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

.field toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;-><init>()V

    .line 32
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->blurFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    .line 33
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->blurFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 36
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->addFilter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 39
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->blurFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->setBlurSize(F)V

    .line 42
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->setThreshold(F)V

    .line 43
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->setQuantizationLevels(F)V

    .line 44
    return-void
.end method


# virtual methods
.method public setBlurSize(F)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->blurFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->setBlurSize(F)V

    .line 59
    return-void
.end method

.method public setQuantizationLevels(F)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;->setQuantizationLevels(F)V

    .line 67
    return-void
.end method

.method public setTexelHeight(F)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;->setTexelHeight(F)V

    .line 55
    return-void
.end method

.method public setTexelWidth(F)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;->setTexelWidth(F)V

    .line 51
    return-void
.end method

.method public setThreshold(F)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;->toonFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;->setThreshold(F)V

    .line 63
    return-void
.end method
