.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaPixelationFilter.java"


# static fields
.field public static final PIXELATION_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 textureCoordinate;\nuniform float imageWidthFactor;\nuniform float imageHeightFactor;\nuniform sampler2D inputImageTexture;\nuniform float pixel;\nvoid main()\n{\n  vec2 uv  = textureCoordinate.xy;\n  float dx = pixel * imageWidthFactor;\n  float dy = pixel * imageHeightFactor;\n  vec2 coord = vec2(dx * floor(uv.x / dx), dy * floor(uv.y / dy));\n  vec3 tc = texture2D(inputImageTexture, coord).xyz;\n  gl_FragColor = vec4(tc, 1.0);\n}"


# instance fields
.field private mImageHeightFactorLocation:I

.field private mImageWidthFactorLocation:I

.field private mPixel:F

.field private mPixelLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "precision highp float;\nvarying vec2 textureCoordinate;\nuniform float imageWidthFactor;\nuniform float imageHeightFactor;\nuniform sampler2D inputImageTexture;\nuniform float pixel;\nvoid main()\n{\n  vec2 uv  = textureCoordinate.xy;\n  float dx = pixel * imageWidthFactor;\n  float dy = pixel * imageHeightFactor;\n  vec2 coord = vec2(dx * floor(uv.x / dx), dy * floor(uv.y / dy));\n  vec3 tc = texture2D(inputImageTexture, coord).xyz;\n  gl_FragColor = vec4(tc, 1.0);\n}"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mPixel:F

    .line 53
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 58
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "imageWidthFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mImageWidthFactorLocation:I

    .line 59
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "imageHeightFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mImageHeightFactorLocation:I

    .line 61
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mImageWidthFactorLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mOutputWidth:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->setFloat(IF)V

    .line 62
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mImageHeightFactorLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mOutputHeight:I

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->setFloat(IF)V

    .line 63
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "pixel"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mPixelLocation:I

    .line 64
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mPixel:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->setPixel(F)V

    .line 65
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 70
    return-void
.end method

.method public setPixel(F)V
    .locals 2

    .prologue
    .line 73
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mPixel:F

    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mPixelLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->mPixel:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;->setFloat(IF)V

    .line 75
    return-void
.end method
