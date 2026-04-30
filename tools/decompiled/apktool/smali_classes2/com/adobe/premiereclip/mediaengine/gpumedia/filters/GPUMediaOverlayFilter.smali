.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOverlayFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.source "GPUMediaOverlayFilter.java"


# static fields
.field public static final OVERLAY_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     mediump vec3 col = texture2D(inputImageTexture, textureCoordinate).xyz;\n     col = mix(col, overlay.xyz, overlay.a);\n     \n     gl_FragColor = vec4(col, 1.0);\n }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     mediump vec3 col = texture2D(inputImageTexture, textureCoordinate).xyz;\n     col = mix(col, overlay.xyz, overlay.a);\n     \n     gl_FragColor = vec4(col, 1.0);\n }"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
