.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaGrayscaleFilter.java"


# static fields
.field public static final GRAYSCALE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n  lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n  float luminance = dot(textureColor.rgb, W);\n\n  gl_FragColor = vec4(vec3(luminance), textureColor.a);\n}"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "precision highp float;\n\nvarying vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n  lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n  float luminance = dot(textureColor.rgb, W);\n\n  gl_FragColor = vec4(vec3(luminance), textureColor.a);\n}"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
