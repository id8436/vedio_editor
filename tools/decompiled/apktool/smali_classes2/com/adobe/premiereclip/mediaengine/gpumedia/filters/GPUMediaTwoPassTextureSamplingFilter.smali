.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassFilter;
.source "GPUMediaTwoPassTextureSamplingFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getHorizontalTexelOffsetRatio()F
    .locals 1

    .prologue
    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVerticalTexelOffsetRatio()F
    .locals 1

    .prologue
    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected initTexelOffsets()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->getHorizontalTexelOffsetRatio()F

    move-result v1

    .line 36
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->mFilters:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 37
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getProgram()I

    move-result v2

    const-string/jumbo v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 38
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getProgram()I

    move-result v3

    const-string/jumbo v4, "texelHeightOffset"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 39
    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->mOutputWidth:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setFloat(IF)V

    .line 40
    invoke-virtual {v0, v3, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setFloat(IF)V

    .line 42
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->getVerticalTexelOffsetRatio()F

    move-result v1

    .line 43
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->mFilters:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 44
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getProgram()I

    move-result v2

    const-string/jumbo v3, "texelWidthOffset"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    .line 45
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getProgram()I

    move-result v3

    const-string/jumbo v4, "texelHeightOffset"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    .line 46
    invoke-virtual {v0, v2, v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setFloat(IF)V

    .line 47
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->mOutputHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->setFloat(IF)V

    .line 48
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassFilter;->onInit()V

    .line 31
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;->initTexelOffsets()V

    .line 32
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassFilter;->onOutputSizeChanged(II)V

    .line 54
    return-void
.end method
