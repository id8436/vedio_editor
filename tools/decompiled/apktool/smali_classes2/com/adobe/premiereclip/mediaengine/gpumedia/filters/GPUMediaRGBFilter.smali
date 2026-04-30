.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaRGBFilter.java"


# static fields
.field public static final RGB_FRAGMENT_SHADER:Ljava/lang/String; = "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n"


# instance fields
.field private mBlue:F

.field private mBlueLocation:I

.field private mGreen:F

.field private mGreenLocation:I

.field private mIsInitialized:Z

.field private mRed:F

.field private mRedLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    invoke-direct {p0, v0, v0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;-><init>(FFF)V

    .line 53
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mIsInitialized:Z

    .line 57
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mRed:F

    .line 58
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mGreen:F

    .line 59
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mBlue:F

    .line 60
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "red"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mRedLocation:I

    .line 66
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "green"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mGreenLocation:I

    .line 67
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "blue"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mBlueLocation:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mIsInitialized:Z

    .line 69
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mRed:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->setRed(F)V

    .line 70
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mGreen:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->setGreen(F)V

    .line 71
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mBlue:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->setBlue(F)V

    .line 72
    return-void
.end method

.method public setBlue(F)V
    .locals 2

    .prologue
    .line 89
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mBlue:F

    .line 90
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mBlueLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mBlue:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->setFloat(IF)V

    .line 93
    :cond_0
    return-void
.end method

.method public setGreen(F)V
    .locals 2

    .prologue
    .line 82
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mGreen:F

    .line 83
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mGreenLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mGreen:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->setFloat(IF)V

    .line 86
    :cond_0
    return-void
.end method

.method public setRed(F)V
    .locals 2

    .prologue
    .line 75
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mRed:F

    .line 76
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mRedLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->mRed:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;->setFloat(IF)V

    .line 79
    :cond_0
    return-void
.end method
