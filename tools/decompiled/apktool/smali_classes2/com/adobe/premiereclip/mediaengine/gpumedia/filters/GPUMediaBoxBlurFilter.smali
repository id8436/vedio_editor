.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;
.source "GPUMediaBoxBlurFilter.java"


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\nlowp vec4 fragmentColor = texture2D(inputImageTexture, centerTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepRightTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsRightTextureCoordinate) * 0.2;\n\ngl_FragColor = fragmentColor;\n}\n"

.field public static final VERTEX_SHADER:Ljava/lang/String; = "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 firstOffset = vec2(1.5 * texelWidthOffset, 1.5 * texelHeightOffset);\nvec2 secondOffset = vec2(3.5 * texelWidthOffset, 3.5 * texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepLeftTextureCoordinate = uv - firstOffset;\ntwoStepsLeftTextureCoordinate = uv - secondOffset;\noneStepRightTextureCoordinate = uv + firstOffset;\ntwoStepsRightTextureCoordinate = uv + secondOffset;\n}\n"


# instance fields
.field private blurSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;-><init>(F)V

    .line 78
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 82
    const-string/jumbo v0, "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 firstOffset = vec2(1.5 * texelWidthOffset, 1.5 * texelHeightOffset);\nvec2 secondOffset = vec2(3.5 * texelWidthOffset, 3.5 * texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepLeftTextureCoordinate = uv - firstOffset;\ntwoStepsLeftTextureCoordinate = uv - secondOffset;\noneStepRightTextureCoordinate = uv + firstOffset;\ntwoStepsRightTextureCoordinate = uv + secondOffset;\n}\n"

    const-string/jumbo v1, "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\nlowp vec4 fragmentColor = texture2D(inputImageTexture, centerTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepRightTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsRightTextureCoordinate) * 0.2;\n\ngl_FragColor = fragmentColor;\n}\n"

    const-string/jumbo v2, "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 firstOffset = vec2(1.5 * texelWidthOffset, 1.5 * texelHeightOffset);\nvec2 secondOffset = vec2(3.5 * texelWidthOffset, 3.5 * texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepLeftTextureCoordinate = uv - firstOffset;\ntwoStepsLeftTextureCoordinate = uv - secondOffset;\noneStepRightTextureCoordinate = uv + firstOffset;\ntwoStepsRightTextureCoordinate = uv + secondOffset;\n}\n"

    const-string/jumbo v3, "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\nlowp vec4 fragmentColor = texture2D(inputImageTexture, centerTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepRightTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsRightTextureCoordinate) * 0.2;\n\ngl_FragColor = fragmentColor;\n}\n"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->blurSize:F

    .line 83
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->blurSize:F

    .line 84
    return-void
.end method


# virtual methods
.method public getHorizontalTexelOffsetRatio()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->blurSize:F

    return v0
.end method

.method public getVerticalTexelOffsetRatio()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->blurSize:F

    return v0
.end method

.method public setBlurSize(F)V
    .locals 1

    .prologue
    .line 92
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->blurSize:F

    .line 93
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
