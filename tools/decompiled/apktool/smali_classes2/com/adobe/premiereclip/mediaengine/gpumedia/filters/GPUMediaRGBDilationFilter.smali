.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;
.source "GPUMediaRGBDilationFilter.java"


# static fields
.field public static final FRAGMENT_SHADER_1:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\n\ngl_FragColor = max(maxValue, oneStepNegativeIntensity);\n}\n"

.field public static final FRAGMENT_SHADER_2:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = max(maxValue, twoStepsNegativeIntensity);\n}\n"

.field public static final FRAGMENT_SHADER_3:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, threeStepsNegativeIntensity);\n}\n"

.field public static final FRAGMENT_SHADER_4:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\nlowp vec4 fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate);\nlowp vec4 fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, fourStepsNegativeIntensity);\n}\n"

.field public static final VERTEX_SHADER_1:Ljava/lang/String; = "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\n}\n"

.field public static final VERTEX_SHADER_2:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\n}\n"

.field public static final VERTEX_SHADER_3:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\n}\n"

.field public static final VERTEX_SHADER_4:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = uv - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = uv + (offset * 4.0);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;-><init>(I)V

    .line 261
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 270
    invoke-static {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;->getVertexShader(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1, p2, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private static getFragmentShader(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    packed-switch p0, :pswitch_data_0

    .line 301
    const-string/jumbo v0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\nlowp vec4 fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate);\nlowp vec4 fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, fourStepsNegativeIntensity);\n}\n"

    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    const-string/jumbo v0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\n\ngl_FragColor = max(maxValue, oneStepNegativeIntensity);\n}\n"

    goto :goto_0

    .line 297
    :pswitch_1
    const-string/jumbo v0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = max(maxValue, twoStepsNegativeIntensity);\n}\n"

    goto :goto_0

    .line 299
    :pswitch_2
    const-string/jumbo v0, "precision highp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nlowp vec4 centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate);\nlowp vec4 oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate);\nlowp vec4 oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate);\nlowp vec4 twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate);\nlowp vec4 twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate);\nlowp vec4 threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate);\nlowp vec4 threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate);\n\nlowp vec4 maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\n\ngl_FragColor = max(maxValue, threeStepsNegativeIntensity);\n}\n"

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getVertexShader(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    packed-switch p0, :pswitch_data_0

    .line 287
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = uv - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = uv + (offset * 4.0);\n}\n"

    :goto_0
    return-object v0

    .line 281
    :pswitch_0
    const-string/jumbo v0, "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\n}\n"

    goto :goto_0

    .line 283
    :pswitch_1
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\n}\n"

    goto :goto_0

    .line 285
    :pswitch_2
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = uMVPMatrix * position;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\n}\n"

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
