.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaGlassSphereFilter.java"


# static fields
.field public static final SPHERE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n// uniform vec3 lightPosition;\nconst highp vec3 lightPosition = vec3(-0.5, 0.5, 1.0);\nconst highp vec3 ambientLightPosition = vec3(0.0, 0.0, 1.0);\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = 2.0 * refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\nrefractedVector.xy = -refractedVector.xy;\n\nhighp vec3 finalSphereColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5).rgb;\n\n// Grazing angle lighting\nhighp float lightingIntensity = 2.5 * (1.0 - pow(clamp(dot(ambientLightPosition, sphereNormal), 0.0, 1.0), 0.25));\nfinalSphereColor += lightingIntensity;\n\n// Specular lighting\nlightingIntensity  = clamp(dot(normalize(lightPosition), sphereNormal), 0.0, 1.0);\nlightingIntensity  = pow(lightingIntensity, 15.0);\nfinalSphereColor += vec3(0.8, 0.8, 0.8) * lightingIntensity;\n\ngl_FragColor = vec4(finalSphereColor, 1.0) * checkForPresenceWithinSphere;\n}\n"


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

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f35c28f    # 0.71f

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;-><init>(Landroid/graphics/PointF;FF)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;FF)V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n// uniform vec3 lightPosition;\nconst highp vec3 lightPosition = vec3(-0.5, 0.5, 1.0);\nconst highp vec3 ambientLightPosition = vec3(0.0, 0.0, 1.0);\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = 2.0 * refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\nrefractedVector.xy = -refractedVector.xy;\n\nhighp vec3 finalSphereColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5).rgb;\n\n// Grazing angle lighting\nhighp float lightingIntensity = 2.5 * (1.0 - pow(clamp(dot(ambientLightPosition, sphereNormal), 0.0, 1.0), 0.25));\nfinalSphereColor += lightingIntensity;\n\n// Specular lighting\nlightingIntensity  = clamp(dot(normalize(lightPosition), sphereNormal), 0.0, 1.0);\nlightingIntensity  = pow(lightingIntensity, 15.0);\nfinalSphereColor += vec3(0.8, 0.8, 0.8) * lightingIntensity;\n\ngl_FragColor = vec4(finalSphereColor, 1.0) * checkForPresenceWithinSphere;\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mCenter:Landroid/graphics/PointF;

    .line 80
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRadius:F

    .line 81
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRefractiveIndex:F

    .line 82
    return-void
.end method

.method private setAspectRatio(F)V
    .locals 1

    .prologue
    .line 104
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mAspectRatio:F

    .line 105
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mAspectRatioLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setFloat(IF)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 87
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "center"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mCenterLocation:I

    .line 88
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "radius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRadiusLocation:I

    .line 89
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "aspectRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mAspectRatioLocation:I

    .line 90
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "refractiveIndex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRefractiveIndexLocation:I

    .line 91
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 96
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRadius:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setRadius(F)V

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setCenter(Landroid/graphics/PointF;)V

    .line 98
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRefractiveIndex:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setRefractiveIndex(F)V

    .line 99
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mOutputHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mOutputWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mAspectRatio:F

    .line 100
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mAspectRatio:F

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setAspectRatio(F)V

    .line 101
    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mCenter:Landroid/graphics/PointF;

    .line 115
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mCenterLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setPoint(ILandroid/graphics/PointF;)V

    .line 116
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 119
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRadius:F

    .line 120
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRadiusLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setFloat(IF)V

    .line 121
    return-void
.end method

.method public setRefractiveIndex(F)V
    .locals 1

    .prologue
    .line 109
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRefractiveIndex:F

    .line 110
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->mRefractiveIndexLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;->setFloat(IF)V

    .line 111
    return-void
.end method
