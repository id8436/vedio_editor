.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaColorMatrixFilter.java"


# static fields
.field public static final COLOR_MATRIX_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp mat4 colorMatrix;\nuniform lowp float intensity;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    gl_FragColor = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n}"


# instance fields
.field private mColorMatrix:[F

.field private mColorMatrixLocation:I

.field private mIntensity:F

.field private mIntensityLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;-><init>(F[F)V

    .line 53
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(F[F)V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp mat4 colorMatrix;\nuniform lowp float intensity;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    gl_FragColor = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n}"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mIntensity:F

    .line 58
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mColorMatrix:[F

    .line 59
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 64
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "colorMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mColorMatrixLocation:I

    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mIntensityLocation:I

    .line 66
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 71
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mIntensity:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->setIntensity(F)V

    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mColorMatrix:[F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->setColorMatrix([F)V

    .line 73
    return-void
.end method

.method public setColorMatrix([F)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mColorMatrix:[F

    .line 82
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mColorMatrixLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->setUniformMatrix4f(I[F)V

    .line 83
    return-void
.end method

.method public setIntensity(F)V
    .locals 1

    .prologue
    .line 76
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mIntensity:F

    .line 77
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->mIntensityLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorMatrixFilter;->setFloat(IF)V

    .line 78
    return-void
.end method
