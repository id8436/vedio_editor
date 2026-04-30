.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorInvertFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaColorInvertFilter.java"


# static fields
.field public static final COLOR_INVERT_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    \n    gl_FragColor = vec4((1.0 - textureColor.rgb), textureColor.w);\n}"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    \n    gl_FragColor = vec4((1.0 - textureColor.rgb), textureColor.w);\n}"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
