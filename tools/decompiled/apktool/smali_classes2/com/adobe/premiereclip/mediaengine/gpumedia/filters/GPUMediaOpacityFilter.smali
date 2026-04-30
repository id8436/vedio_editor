.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaOpacityFilter.java"


# static fields
.field public static final OPACITY_FRAGMENT_SHADER:Ljava/lang/String; = "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform lowp float opacity;\n  \n  void main()\n  {\n      lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.rgb, textureColor.a * opacity);\n  }\n"


# instance fields
.field private mOpacity:F

.field private mOpacityLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;-><init>(F)V

    .line 44
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform lowp float opacity;\n  \n  void main()\n  {\n      lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.rgb, textureColor.a * opacity);\n  }\n"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->mOpacity:F

    .line 49
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 54
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->mOpacityLocation:I

    .line 55
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 60
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->mOpacity:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->setOpacity(F)V

    .line 61
    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .prologue
    .line 64
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->mOpacity:F

    .line 65
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->mOpacityLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->mOpacity:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;->setFloat(IF)V

    .line 66
    return-void
.end method
