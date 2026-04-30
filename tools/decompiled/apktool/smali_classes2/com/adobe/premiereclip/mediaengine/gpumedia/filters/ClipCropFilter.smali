.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "ClipCropFilter.java"


# static fields
.field public static final CROP_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform highp float crop_bottom;\nuniform highp float height;\nuniform highp float crop_right;\nuniform highp float width;\nvoid main()\n{\n       gl_FragColor = texture2D(inputImageTexture, vec2(textureCoordinate.x * crop_right / width, textureCoordinate.y * crop_bottom / height));\n}"


# instance fields
.field private crop_bottom:F

.field private crop_right:F

.field private height:F

.field private mGLUniformCropBottomLocation:I

.field private mGLUniformCropRightLocation:I

.field private mGLUniformHeightLocation:I

.field private mGLUniformWidthLocation:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;-><init>(IIII)V

    .line 50
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform highp float crop_bottom;\nuniform highp float height;\nuniform highp float crop_right;\nuniform highp float width;\nvoid main()\n{\n       gl_FragColor = texture2D(inputImageTexture, vec2(textureCoordinate.x * crop_right / width, textureCoordinate.y * crop_bottom / height));\n}"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    int-to-float v0, p1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->width:F

    .line 55
    int-to-float v0, p2

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->height:F

    .line 56
    int-to-float v0, p3

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_right:F

    .line 57
    int-to-float v0, p4

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_bottom:F

    .line 58
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 63
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLProgId:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformWidthLocation:I

    .line 64
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLProgId:I

    const-string/jumbo v1, "crop_right"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformCropRightLocation:I

    .line 65
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLProgId:I

    const-string/jumbo v1, "crop_bottom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformCropBottomLocation:I

    .line 66
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLProgId:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformHeightLocation:I

    .line 67
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 72
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformCropRightLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_right:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 73
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformCropBottomLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_bottom:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformWidthLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->width:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 75
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformHeightLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->height:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 76
    return-void
.end method

.method public setCropParams(II)V
    .locals 2

    .prologue
    .line 79
    int-to-float v0, p2

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_bottom:F

    .line 80
    int-to-float v0, p1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_right:F

    .line 81
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformCropRightLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_right:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 82
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformCropBottomLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->crop_bottom:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 83
    return-void
.end method

.method public setSizeParams(II)V
    .locals 2

    .prologue
    .line 86
    int-to-float v0, p1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->width:F

    .line 87
    int-to-float v0, p2

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->height:F

    .line 88
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformWidthLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->width:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 89
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->mGLUniformHeightLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->height:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipCropFilter;->setFloat(IF)V

    .line 90
    return-void
.end method
