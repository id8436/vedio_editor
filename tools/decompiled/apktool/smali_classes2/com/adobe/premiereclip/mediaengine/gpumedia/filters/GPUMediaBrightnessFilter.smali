.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaBrightnessFilter.java"


# static fields
.field public static final BRIGHTNESS_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }"


# instance fields
.field private mBrightness:F

.field private mBrightnessLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;-><init>(F)V

    .line 43
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->mBrightness:F

    .line 48
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 53
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "brightness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->mBrightnessLocation:I

    .line 54
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 59
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->mBrightness:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->setBrightness(F)V

    .line 60
    return-void
.end method

.method public setBrightness(F)V
    .locals 2

    .prologue
    .line 63
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->mBrightness:F

    .line 64
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->mBrightnessLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->mBrightness:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;->setFloat(IF)V

    .line 65
    return-void
.end method
