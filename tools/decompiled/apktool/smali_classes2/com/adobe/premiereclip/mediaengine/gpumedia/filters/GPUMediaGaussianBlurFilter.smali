.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;
.source "GPUMediaGaussianBlurFilter.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform sampler2D inputImageTexture;\n\nconst lowp int GAUSSIAN_SAMPLES = 9;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n\nvoid main()\n{\n\tlowp vec3 sum = vec3(0.0);\n   lowp vec4 fragColor=texture2D(inputImageTexture,textureCoordinate);\n\t\n    sum += texture2D(inputImageTexture, blurCoordinates[0]).rgb * 0.05;\n    sum += texture2D(inputImageTexture, blurCoordinates[1]).rgb * 0.09;\n    sum += texture2D(inputImageTexture, blurCoordinates[2]).rgb * 0.12;\n    sum += texture2D(inputImageTexture, blurCoordinates[3]).rgb * 0.15;\n    sum += texture2D(inputImageTexture, blurCoordinates[4]).rgb * 0.18;\n    sum += texture2D(inputImageTexture, blurCoordinates[5]).rgb * 0.15;\n    sum += texture2D(inputImageTexture, blurCoordinates[6]).rgb * 0.12;\n    sum += texture2D(inputImageTexture, blurCoordinates[7]).rgb * 0.09;\n    sum += texture2D(inputImageTexture, blurCoordinates[8]).rgb * 0.05;\n\n\tgl_FragColor = vec4(sum,fragColor.a);\n}"

.field public static final VERTEX_SHADER:Ljava/lang/String; = "const int GAUSSIAN_SAMPLES = 9;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 textureCoordinate;\nvarying vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n\nvoid main()\n{\n\tgl_Position = pos;\n\ttextureCoordinate = uv;\n\t\n\t// Calculate the positions for the blur\n\tint multiplier = 0;\n\tvec2 blurStep;\n   vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset);\n    \n\tfor (int i = 0; i < GAUSSIAN_SAMPLES; i++)\n   {\n\t\tmultiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));\n       // Blur in x (horizontal)\n       blurStep = float(multiplier) * singleStepOffset;\n\t\tblurCoordinates[i] = uv + blurStep;\n\t}\n}\n"


# instance fields
.field protected mBlurSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;-><init>(F)V

    .line 82
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 85
    const-string/jumbo v0, "const int GAUSSIAN_SAMPLES = 9;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 textureCoordinate;\nvarying vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n\nvoid main()\n{\n\tgl_Position = pos;\n\ttextureCoordinate = uv;\n\t\n\t// Calculate the positions for the blur\n\tint multiplier = 0;\n\tvec2 blurStep;\n   vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset);\n    \n\tfor (int i = 0; i < GAUSSIAN_SAMPLES; i++)\n   {\n\t\tmultiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));\n       // Blur in x (horizontal)\n       blurStep = float(multiplier) * singleStepOffset;\n\t\tblurCoordinates[i] = uv + blurStep;\n\t}\n}\n"

    const-string/jumbo v1, "uniform sampler2D inputImageTexture;\n\nconst lowp int GAUSSIAN_SAMPLES = 9;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n\nvoid main()\n{\n\tlowp vec3 sum = vec3(0.0);\n   lowp vec4 fragColor=texture2D(inputImageTexture,textureCoordinate);\n\t\n    sum += texture2D(inputImageTexture, blurCoordinates[0]).rgb * 0.05;\n    sum += texture2D(inputImageTexture, blurCoordinates[1]).rgb * 0.09;\n    sum += texture2D(inputImageTexture, blurCoordinates[2]).rgb * 0.12;\n    sum += texture2D(inputImageTexture, blurCoordinates[3]).rgb * 0.15;\n    sum += texture2D(inputImageTexture, blurCoordinates[4]).rgb * 0.18;\n    sum += texture2D(inputImageTexture, blurCoordinates[5]).rgb * 0.15;\n    sum += texture2D(inputImageTexture, blurCoordinates[6]).rgb * 0.12;\n    sum += texture2D(inputImageTexture, blurCoordinates[7]).rgb * 0.09;\n    sum += texture2D(inputImageTexture, blurCoordinates[8]).rgb * 0.05;\n\n\tgl_FragColor = vec4(sum,fragColor.a);\n}"

    const-string/jumbo v2, "const int GAUSSIAN_SAMPLES = 9;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 textureCoordinate;\nvarying vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n\nvoid main()\n{\n\tgl_Position = pos;\n\ttextureCoordinate = uv;\n\t\n\t// Calculate the positions for the blur\n\tint multiplier = 0;\n\tvec2 blurStep;\n   vec2 singleStepOffset = vec2(texelHeightOffset, texelWidthOffset);\n    \n\tfor (int i = 0; i < GAUSSIAN_SAMPLES; i++)\n   {\n\t\tmultiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));\n       // Blur in x (horizontal)\n       blurStep = float(multiplier) * singleStepOffset;\n\t\tblurCoordinates[i] = uv + blurStep;\n\t}\n}\n"

    const-string/jumbo v3, "uniform sampler2D inputImageTexture;\n\nconst lowp int GAUSSIAN_SAMPLES = 9;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n\nvoid main()\n{\n\tlowp vec3 sum = vec3(0.0);\n   lowp vec4 fragColor=texture2D(inputImageTexture,textureCoordinate);\n\t\n    sum += texture2D(inputImageTexture, blurCoordinates[0]).rgb * 0.05;\n    sum += texture2D(inputImageTexture, blurCoordinates[1]).rgb * 0.09;\n    sum += texture2D(inputImageTexture, blurCoordinates[2]).rgb * 0.12;\n    sum += texture2D(inputImageTexture, blurCoordinates[3]).rgb * 0.15;\n    sum += texture2D(inputImageTexture, blurCoordinates[4]).rgb * 0.18;\n    sum += texture2D(inputImageTexture, blurCoordinates[5]).rgb * 0.15;\n    sum += texture2D(inputImageTexture, blurCoordinates[6]).rgb * 0.12;\n    sum += texture2D(inputImageTexture, blurCoordinates[7]).rgb * 0.09;\n    sum += texture2D(inputImageTexture, blurCoordinates[8]).rgb * 0.05;\n\n\tgl_FragColor = vec4(sum,fragColor.a);\n}"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->mBlurSize:F

    .line 86
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->mBlurSize:F

    .line 87
    return-void
.end method


# virtual methods
.method public getHorizontalTexelOffsetRatio()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->mBlurSize:F

    return v0
.end method

.method public getVerticalTexelOffsetRatio()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->mBlurSize:F

    return v0
.end method

.method public setBlurSize(F)V
    .locals 1

    .prologue
    .line 105
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->mBlurSize:F

    .line 106
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
