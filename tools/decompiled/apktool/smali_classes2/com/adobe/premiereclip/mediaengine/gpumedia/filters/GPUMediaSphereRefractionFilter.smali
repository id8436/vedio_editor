.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaSphereRefractionFilter.java"


# static fields
.field public static final SPHERE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\n\ngl_FragColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5) * checkForPresenceWithinSphere;     \n}\n"


# instance fields
.field private mAspectRatio:F

.field private mAspectRatioLocation:I

.field private mCenter:Landroid/graphics/PointF;

.field private mCenterLocation:I

.field private mRadius:F

.field private mRadiusLocation:I

.field private mRefractiveIndex:F

.field private mRefractiveIndexLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f35c28f    # 0.71f

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;-><init>(Landroid/graphics/PointF;FF)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;FF)V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\n\ngl_FragColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5) * checkForPresenceWithinSphere;     \n}\n"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mCenter:Landroid/graphics/PointF;

    .line 65
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRadius:F

    .line 66
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRefractiveIndex:F

    .line 67
    return-void
.end method

.method private setAspectRatio(F)V
    .locals 1

    .prologue
    .line 89
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mAspectRatio:F

    .line 90
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mAspectRatioLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setFloat(IF)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 72
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "center"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mCenterLocation:I

    .line 73
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "radius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRadiusLocation:I

    .line 74
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "aspectRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mAspectRatioLocation:I

    .line 75
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "refractiveIndex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRefractiveIndexLocation:I

    .line 76
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 81
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRadius:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setRadius(F)V

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setCenter(Landroid/graphics/PointF;)V

    .line 83
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRefractiveIndex:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setRefractiveIndex(F)V

    .line 84
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mOutputHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mOutputWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mAspectRatio:F

    .line 85
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mAspectRatio:F

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setAspectRatio(F)V

    .line 86
    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mCenter:Landroid/graphics/PointF;

    .line 110
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mCenterLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setPoint(ILandroid/graphics/PointF;)V

    .line 111
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 119
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRadius:F

    .line 120
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRadiusLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setFloat(IF)V

    .line 121
    return-void
.end method

.method public setRefractiveIndex(F)V
    .locals 1

    .prologue
    .line 99
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRefractiveIndex:F

    .line 100
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->mRefractiveIndexLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;->setFloat(IF)V

    .line 101
    return-void
.end method
