.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaContrastFilter.java"


# static fields
.field public static final CONTRAST_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float contrast;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(((textureColor.rgb - vec3(0.5)) * contrast + vec3(0.5)), textureColor.w);\n }"


# instance fields
.field private mContrast:F

.field private mContrastLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;-><init>(F)V

    .line 45
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float contrast;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(((textureColor.rgb - vec3(0.5)) * contrast + vec3(0.5)), textureColor.w);\n }"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->mContrast:F

    .line 50
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 55
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "contrast"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->mContrastLocation:I

    .line 56
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 61
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->mContrast:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->setContrast(F)V

    .line 62
    return-void
.end method

.method public setContrast(F)V
    .locals 2

    .prologue
    .line 65
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->mContrast:F

    .line 66
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->mContrastLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->mContrast:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;->setFloat(IF)V

    .line 67
    return-void
.end method
