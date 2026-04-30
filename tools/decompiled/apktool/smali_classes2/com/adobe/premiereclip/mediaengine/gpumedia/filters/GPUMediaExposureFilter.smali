.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaExposureFilter.java"


# static fields
.field public static final EXPOSURE_FRAGMENT_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform highp float exposure;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(textureColor.rgb * pow(2.0, exposure), textureColor.w);\n } "


# instance fields
.field private mExposure:F

.field private mExposureLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;-><init>(F)V

    .line 43
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform highp float exposure;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(textureColor.rgb * pow(2.0, exposure), textureColor.w);\n } "

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->mExposure:F

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
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "exposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->mExposureLocation:I

    .line 54
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 59
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->mExposure:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->setExposure(F)V

    .line 60
    return-void
.end method

.method public setExposure(F)V
    .locals 2

    .prologue
    .line 63
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->mExposure:F

    .line 64
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->mExposureLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->mExposure:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;->setFloat(IF)V

    .line 65
    return-void
.end method
