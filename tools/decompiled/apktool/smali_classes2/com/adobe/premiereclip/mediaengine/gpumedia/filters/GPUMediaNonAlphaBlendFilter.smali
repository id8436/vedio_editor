.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonAlphaBlendFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;
.source "GPUMediaNonAlphaBlendFilter.java"


# static fields
.field public static final NON_ALPHA_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n uniform lowp float mixturePercent;\n\n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   if(mixturePercent != 0.0) { \n       lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n       gl_FragColor = vec4(mix(textureColor.rgb, textureColor2.rgb, mixturePercent), textureColor.a);\n       } else { \n       gl_FragColor = textureColor;\n   } }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n uniform lowp float mixturePercent;\n\n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   if(mixturePercent != 0.0) { \n       lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n       gl_FragColor = vec4(mix(textureColor.rgb, textureColor2.rgb, mixturePercent), textureColor.a);\n       } else { \n       gl_FragColor = textureColor;\n   } }"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n uniform lowp float mixturePercent;\n\n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   if(mixturePercent != 0.0) { \n       lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n       gl_FragColor = vec4(mix(textureColor.rgb, textureColor2.rgb, mixturePercent), textureColor.a);\n       } else { \n       gl_FragColor = textureColor;\n   } }"

    invoke-direct {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMixBlendFilter;-><init>(Ljava/lang/String;F)V

    .line 49
    return-void
.end method
