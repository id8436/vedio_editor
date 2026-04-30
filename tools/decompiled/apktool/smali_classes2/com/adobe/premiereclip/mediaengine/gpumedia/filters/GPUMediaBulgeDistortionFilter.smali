.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaBulgeDistortionFilter.java"


# static fields
.field public static final BULGE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp float aspectRatio;\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float scale;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float dist = distance(center, textureCoordinateToUse);\ntextureCoordinateToUse = textureCoordinate;\n\nif (dist < radius)\n{\ntextureCoordinateToUse -= center;\nhighp float percent = 1.0 - ((radius - dist) / radius) * scale;\npercent = percent * percent;\n\ntextureCoordinateToUse = textureCoordinateToUse * percent;\ntextureCoordinateToUse += center;\n}\n\ngl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );    \n}\n"


# instance fields
.field private mAspectRatio:F

.field private mAspectRatioLocation:I

.field private mCenter:Landroid/graphics/PointF;

.field private mCenterLocation:I

.field private mRadius:F

.field private mRadiusLocation:I

.field private mScale:F

.field private mScaleLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 62
    const/high16 v0, 0x3e800000    # 0.25f

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v2, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;-><init>(FFLandroid/graphics/PointF;)V

    .line 63
    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 66
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp float aspectRatio;\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float scale;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float dist = distance(center, textureCoordinateToUse);\ntextureCoordinateToUse = textureCoordinate;\n\nif (dist < radius)\n{\ntextureCoordinateToUse -= center;\nhighp float percent = 1.0 - ((radius - dist) / radius) * scale;\npercent = percent * percent;\n\ntextureCoordinateToUse = textureCoordinateToUse * percent;\ntextureCoordinateToUse += center;\n}\n\ngl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );    \n}\n"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mRadius:F

    .line 68
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mScale:F

    .line 69
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mCenter:Landroid/graphics/PointF;

    .line 70
    return-void
.end method

.method private setAspectRatio(F)V
    .locals 1

    .prologue
    .line 97
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mAspectRatio:F

    .line 98
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mAspectRatioLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setFloat(IF)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 75
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "scale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mScaleLocation:I

    .line 76
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "radius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mRadiusLocation:I

    .line 77
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "center"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mCenterLocation:I

    .line 78
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "aspectRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mAspectRatioLocation:I

    .line 79
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 84
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mRadius:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setRadius(F)V

    .line 85
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mScale:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setScale(F)V

    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setCenter(Landroid/graphics/PointF;)V

    .line 87
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 2

    .prologue
    .line 91
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mAspectRatio:F

    .line 92
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mAspectRatio:F

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setAspectRatio(F)V

    .line 93
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onOutputSizeChanged(II)V

    .line 94
    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mCenter:Landroid/graphics/PointF;

    .line 128
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mCenterLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setPoint(ILandroid/graphics/PointF;)V

    .line 129
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 107
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mRadius:F

    .line 108
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mRadiusLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setFloat(IF)V

    .line 109
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 117
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mScale:F

    .line 118
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->mScaleLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;->setFloat(IF)V

    .line 119
    return-void
.end method
