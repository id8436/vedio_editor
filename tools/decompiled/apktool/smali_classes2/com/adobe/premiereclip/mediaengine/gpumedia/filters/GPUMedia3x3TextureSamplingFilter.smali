.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMedia3x3TextureSamplingFilter.java"


# static fields
.field public static final THREE_X_THREE_TEXTURE_SAMPLING_VERTEX_SHADER:Ljava/lang/String; = "uniform highp float texelWidth; \nuniform highp float texelHeight; \n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\n    gl_Position = pos;\n\n    vec2 widthStep = vec2(texelWidth, 0.0);\n    vec2 heightStep = vec2(0.0, texelHeight);\n    vec2 widthHeightStep = vec2(texelWidth, texelHeight);\n    vec2 widthNegativeHeightStep = vec2(texelWidth, -texelHeight);\n\n    textureCoordinate = uv;\n    leftTextureCoordinate = uv - widthStep;\n    rightTextureCoordinate = uv + widthStep;\n\n    topTextureCoordinate = uv - heightStep;\n    topLeftTextureCoordinate = uv - widthHeightStep;\n    topRightTextureCoordinate = uv + widthNegativeHeightStep;\n\n    bottomTextureCoordinate = uv + heightStep;\n    bottomLeftTextureCoordinate = uv - widthNegativeHeightStep;\n    bottomRightTextureCoordinate = uv + widthHeightStep;\n}"


# instance fields
.field private mHasOverriddenImageSizeFactor:Z

.field private mLineSize:F

.field private mTexelHeight:F

.field private mTexelWidth:F

.field private mUniformTexelHeightLocation:I

.field private mUniformTexelWidthLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "uniform highp float texelWidth; \nuniform highp float texelHeight; \n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\n    gl_Position = pos;\n\n    vec2 widthStep = vec2(texelWidth, 0.0);\n    vec2 heightStep = vec2(0.0, texelHeight);\n    vec2 widthHeightStep = vec2(texelWidth, texelHeight);\n    vec2 widthNegativeHeightStep = vec2(texelWidth, -texelHeight);\n\n    textureCoordinate = uv;\n    leftTextureCoordinate = uv - widthStep;\n    rightTextureCoordinate = uv + widthStep;\n\n    topTextureCoordinate = uv - heightStep;\n    topLeftTextureCoordinate = uv - widthHeightStep;\n    topRightTextureCoordinate = uv + widthNegativeHeightStep;\n\n    bottomTextureCoordinate = uv + heightStep;\n    bottomLeftTextureCoordinate = uv - widthNegativeHeightStep;\n    bottomRightTextureCoordinate = uv + widthHeightStep;\n}"

    invoke-direct {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mHasOverriddenImageSizeFactor:Z

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mLineSize:F

    .line 74
    return-void
.end method

.method private updateTexelValues()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mUniformTexelWidthLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelWidth:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->setFloat(IF)V

    .line 115
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mUniformTexelHeightLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->setFloat(IF)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 79
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "texelWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mUniformTexelWidthLocation:I

    .line 80
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "texelHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mUniformTexelHeightLocation:I

    .line 81
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->updateTexelValues()V

    .line 84
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 89
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mHasOverriddenImageSizeFactor:Z

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mLineSize:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->setLineSize(F)V

    .line 92
    :cond_0
    return-void
.end method

.method public setLineSize(F)V
    .locals 1

    .prologue
    .line 107
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mLineSize:F

    .line 108
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->getOutputWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelWidth:F

    .line 109
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->getOutputHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelHeight:F

    .line 110
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->updateTexelValues()V

    .line 111
    return-void
.end method

.method public setTexelHeight(F)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mHasOverriddenImageSizeFactor:Z

    .line 102
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelHeight:F

    .line 103
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mUniformTexelHeightLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->setFloat(IF)V

    .line 104
    return-void
.end method

.method public setTexelWidth(F)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mHasOverriddenImageSizeFactor:Z

    .line 96
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mTexelWidth:F

    .line 97
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->mUniformTexelWidthLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->setFloat(IF)V

    .line 98
    return-void
.end method
