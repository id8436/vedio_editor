.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSubtractBlendFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.source "GPUMediaSubtractBlendFilter.java"


# static fields
.field public static final SUBTRACT_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n\n   gl_FragColor = vec4(textureColor.rgb - textureColor2.rgb, textureColor.a);\n }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n\n   gl_FragColor = vec4(textureColor.rgb - textureColor2.rgb, textureColor.a);\n }"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
