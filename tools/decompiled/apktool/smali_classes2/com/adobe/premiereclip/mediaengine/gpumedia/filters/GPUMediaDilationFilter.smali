.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;
.source "GPUMediaDilationFilter.java"


# static fields
.field public static final FRAGMENT_SHADER_1:Ljava/lang/String; = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_2:Ljava/lang/String; = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_3:Ljava/lang/String; = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\nfloat threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate).r;\nfloat threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

.field public static final FRAGMENT_SHADER_4:Ljava/lang/String; = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\nfloat threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate).r;\nfloat threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate).r;\nfloat fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate).r;\nfloat fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\nmaxValue = max(maxValue, fourStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

.field public static final VERTEX_SHADER_1:Ljava/lang/String; = "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\n}\n"

.field public static final VERTEX_SHADER_2:Ljava/lang/String; = "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\n}\n"

.field public static final VERTEX_SHADER_3:Ljava/lang/String; = "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\n}\n"

.field public static final VERTEX_SHADER_4:Ljava/lang/String; = "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = uv - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = uv + (offset * 4.0);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;-><init>(I)V

    .line 249
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 258
    invoke-static {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;->getVertexShader(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoPassTextureSamplingFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private static getFragmentShader(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    packed-switch p0, :pswitch_data_0

    .line 289
    const-string/jumbo v0, "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\nfloat threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate).r;\nfloat threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate).r;\nfloat fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate).r;\nfloat fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\nmaxValue = max(maxValue, fourStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    const-string/jumbo v0, "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

    goto :goto_0

    .line 285
    :pswitch_1
    const-string/jumbo v0, "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

    goto :goto_0

    .line 287
    :pswitch_2
    const-string/jumbo v0, "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\nfloat threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate).r;\nfloat threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n"

    goto :goto_0

    .line 280
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
    .line 266
    packed-switch p0, :pswitch_data_0

    .line 275
    const-string/jumbo v0, "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = uv - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = uv + (offset * 4.0);\n}\n"

    :goto_0
    return-object v0

    .line 269
    :pswitch_0
    const-string/jumbo v0, "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\n}\n"

    goto :goto_0

    .line 271
    :pswitch_1
    const-string/jumbo v0, "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\n}\n"

    goto :goto_0

    .line 273
    :pswitch_2
    const-string/jumbo v0, "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\n}\n"

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
