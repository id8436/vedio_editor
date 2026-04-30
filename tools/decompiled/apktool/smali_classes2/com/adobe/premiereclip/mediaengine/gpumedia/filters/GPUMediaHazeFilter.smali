.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaHazeFilter.java"


# static fields
.field public static final HAZE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp float distance;\nuniform highp float slope;\n\nvoid main()\n{\n\t//todo reconsider precision modifiers\t \n\t highp vec4 color = vec4(1.0);//todo reimplement as a parameter\n\n\t highp float  d = textureCoordinate.y * slope  +  distance; \n\n\t highp vec4 c = texture2D(inputImageTexture, textureCoordinate) ; // consider using unpremultiply\n\n\t c = (c - d * color) / (1.0 -d);\n\n\t gl_FragColor = c; //consider using premultiply(c);\n}\n"


# instance fields
.field private mDistance:F

.field private mDistanceLocation:I

.field private mSlope:F

.field private mSlopeLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;-><init>(FF)V

    .line 56
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp float distance;\nuniform highp float slope;\n\nvoid main()\n{\n\t//todo reconsider precision modifiers\t \n\t highp vec4 color = vec4(1.0);//todo reimplement as a parameter\n\n\t highp float  d = textureCoordinate.y * slope  +  distance; \n\n\t highp vec4 c = texture2D(inputImageTexture, textureCoordinate) ; // consider using unpremultiply\n\n\t c = (c - d * color) / (1.0 -d);\n\n\t gl_FragColor = c; //consider using premultiply(c);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mDistance:F

    .line 61
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mSlope:F

    .line 62
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 67
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "distance"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mDistanceLocation:I

    .line 68
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "slope"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mSlopeLocation:I

    .line 69
    return-void
.end method

.method protected onInitialized()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mDistance:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->setDistance(F)V

    .line 75
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mSlope:F

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->setSlope(F)V

    .line 76
    return-void
.end method

.method public setDistance(F)V
    .locals 1

    .prologue
    .line 84
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mDistance:F

    .line 85
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mDistanceLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->setFloat(IF)V

    .line 86
    return-void
.end method

.method public setSlope(F)V
    .locals 1

    .prologue
    .line 94
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mSlope:F

    .line 95
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->mSlopeLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;->setFloat(IF)V

    .line 96
    return-void
.end method
