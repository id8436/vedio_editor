.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;
.source "GPUMediaLaplacianFilter.java"


# static fields
.field public static final LAPLACIAN_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nuniform mediump mat3 convolutionMatrix;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\nmediump vec3 bottomColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\nmediump vec3 bottomLeftColor = texture2D(inputImageTexture, bottomLeftTextureCoordinate).rgb;\nmediump vec3 bottomRightColor = texture2D(inputImageTexture, bottomRightTextureCoordinate).rgb;\nmediump vec4 centerColor = texture2D(inputImageTexture, textureCoordinate);\nmediump vec3 leftColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\nmediump vec3 rightColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\nmediump vec3 topColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\nmediump vec3 topRightColor = texture2D(inputImageTexture, topRightTextureCoordinate).rgb;\nmediump vec3 topLeftColor = texture2D(inputImageTexture, topLeftTextureCoordinate).rgb;\n\nmediump vec3 resultColor = topLeftColor * convolutionMatrix[0][0] + topColor * convolutionMatrix[0][1] + topRightColor * convolutionMatrix[0][2];\nresultColor += leftColor * convolutionMatrix[1][0] + centerColor.rgb * convolutionMatrix[1][1] + rightColor * convolutionMatrix[1][2];\nresultColor += bottomLeftColor * convolutionMatrix[2][0] + bottomColor * convolutionMatrix[2][1] + bottomRightColor * convolutionMatrix[2][2];\n\n// Normalize the results to allow for negative gradients in the 0.0-1.0 colorspace\nresultColor = resultColor + 0.5;\n\ngl_FragColor = vec4(resultColor, centerColor.a);\n}\n"


# instance fields
.field private mConvolutionKernel:[F

.field private mUniformConvolutionMatrix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;-><init>([F)V

    .line 72
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        -0x3f400000    # -6.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private constructor <init>([F)V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nuniform mediump mat3 convolutionMatrix;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\nmediump vec3 bottomColor = texture2D(inputImageTexture, bottomTextureCoordinate).rgb;\nmediump vec3 bottomLeftColor = texture2D(inputImageTexture, bottomLeftTextureCoordinate).rgb;\nmediump vec3 bottomRightColor = texture2D(inputImageTexture, bottomRightTextureCoordinate).rgb;\nmediump vec4 centerColor = texture2D(inputImageTexture, textureCoordinate);\nmediump vec3 leftColor = texture2D(inputImageTexture, leftTextureCoordinate).rgb;\nmediump vec3 rightColor = texture2D(inputImageTexture, rightTextureCoordinate).rgb;\nmediump vec3 topColor = texture2D(inputImageTexture, topTextureCoordinate).rgb;\nmediump vec3 topRightColor = texture2D(inputImageTexture, topRightTextureCoordinate).rgb;\nmediump vec3 topLeftColor = texture2D(inputImageTexture, topLeftTextureCoordinate).rgb;\n\nmediump vec3 resultColor = topLeftColor * convolutionMatrix[0][0] + topColor * convolutionMatrix[0][1] + topRightColor * convolutionMatrix[0][2];\nresultColor += leftColor * convolutionMatrix[1][0] + centerColor.rgb * convolutionMatrix[1][1] + rightColor * convolutionMatrix[1][2];\nresultColor += bottomLeftColor * convolutionMatrix[2][0] + bottomColor * convolutionMatrix[2][1] + bottomRightColor * convolutionMatrix[2][2];\n\n// Normalize the results to allow for negative gradients in the 0.0-1.0 colorspace\nresultColor = resultColor + 0.5;\n\ngl_FragColor = vec4(resultColor, centerColor.a);\n}\n"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->mConvolutionKernel:[F

    .line 77
    return-void
.end method

.method private setConvolutionKernel([F)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->mConvolutionKernel:[F

    .line 88
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->mUniformConvolutionMatrix:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->mConvolutionKernel:[F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->setUniformMatrix3f(I[F)V

    .line 89
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;->onInit()V

    .line 82
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "convolutionMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->mUniformConvolutionMatrix:I

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->mConvolutionKernel:[F

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;->setConvolutionKernel([F)V

    .line 84
    return-void
.end method
