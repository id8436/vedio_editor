.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSoftLightBlendFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.source "GPUMediaSoftLightBlendFilter.java"


# static fields
.field public static final SOFT_LIGHT_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     mediump vec4 base = texture2D(inputImageTexture, textureCoordinate);\n     mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     gl_FragColor = base * (overlay.a * (base / base.a) + (2.0 * overlay * (1.0 - (base / base.a)))) + overlay * (1.0 - base.a) + base * (1.0 - overlay.a);\n }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     mediump vec4 base = texture2D(inputImageTexture, textureCoordinate);\n     mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     gl_FragColor = base * (overlay.a * (base / base.a) + (2.0 * overlay * (1.0 - (base / base.a)))) + overlay * (1.0 - base.a) + base * (1.0 - overlay.a);\n }"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
