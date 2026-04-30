.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDissolveBlendFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;
.source "GPUMediaDissolveBlendFilter.java"


# static fields
.field public static final DISSOLVE_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n uniform lowp float mixturePercent;\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n    \n    gl_FragColor = mix(textureColor, textureColor2, mixturePercent);\n }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n uniform lowp float mixturePercent;\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n    \n    gl_FragColor = mix(textureColor, textureColor2, mixturePercent);\n }"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n uniform lowp float mixturePercent;\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n    \n    gl_FragColor = mix(textureColor, textureColor2, mixturePercent);\n }"

    invoke-direct {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;-><init>(Ljava/lang/String;F)V

    .line 44
    return-void
.end method
