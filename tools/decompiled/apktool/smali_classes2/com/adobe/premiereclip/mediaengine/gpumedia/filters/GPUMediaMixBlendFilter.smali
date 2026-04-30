.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.source "GPUMediaMixBlendFilter.java"


# instance fields
.field private mMix:F

.field private mMixLocation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;-><init>(Ljava/lang/String;F)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->mMix:F

    .line 33
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onInit()V

    .line 38
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "mixturePercent"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->mMixLocation:I

    .line 39
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onInitialized()V

    .line 44
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->mMix:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->setMix(F)V

    .line 45
    return-void
.end method

.method public setMix(F)V
    .locals 2

    .prologue
    .line 51
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->mMix:F

    .line 52
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->mMixLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->mMix:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;->setFloat(IF)V

    .line 53
    return-void
.end method
