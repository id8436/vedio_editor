.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaLevelsFilter.java"


# static fields
.field public static final LEVELS_FRAGMET_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform mediump vec3 levelMinimum;\n uniform mediump vec3 levelMiddle;\n uniform mediump vec3 levelMaximum;\n uniform mediump vec3 minOutput;\n uniform mediump vec3 maxOutput;\n \n void main()\n {\n     mediump vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4( mix(minOutput, maxOutput, pow(min(max(textureColor.rgb -levelMinimum, vec3(0.0)) / (levelMaximum - levelMinimum  ), vec3(1.0)), 1.0 /levelMiddle)) , textureColor.a);\n }\n"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mMax:[F

.field private mMaxLocation:I

.field private mMaxOutput:[F

.field private mMaxOutputLocation:I

.field private mMid:[F

.field private mMidLocation:I

.field private mMin:[F

.field private mMinLocation:I

.field private mMinOutput:[F

.field private mMinOutputLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 59
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;-><init>([F[F[F[F[F)V

    .line 60
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>([F[F[F[F[F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v3, " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform mediump vec3 levelMinimum;\n uniform mediump vec3 levelMiddle;\n uniform mediump vec3 levelMaximum;\n uniform mediump vec3 minOutput;\n uniform mediump vec3 maxOutput;\n \n void main()\n {\n     mediump vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4( mix(minOutput, maxOutput, pow(min(max(textureColor.rgb -levelMinimum, vec3(0.0)) / (levelMaximum - levelMinimum  ), vec3(1.0)), 1.0 /levelMiddle)) , textureColor.a);\n }\n"

    invoke-direct {p0, v0, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMin:[F

    .line 66
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMid:[F

    .line 67
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMax:[F

    .line 68
    iput-object p4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutput:[F

    .line 69
    iput-object p5, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutput:[F

    move-object v0, p0

    move v3, v2

    move v4, v1

    move v5, v2

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setMin(FFFFF)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 76
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "levelMinimum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinLocation:I

    .line 77
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "levelMiddle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMidLocation:I

    .line 78
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "levelMaximum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxLocation:I

    .line 79
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "minOutput"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutputLocation:I

    .line 80
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "maxOutput"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutputLocation:I

    .line 81
    return-void
.end method

.method protected onInitialized()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    .line 86
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->updateUniforms()V

    .line 87
    return-void
.end method

.method public setBlueMin(FFF)V
    .locals 6

    .prologue
    .line 144
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setBlueMin(FFFFF)V

    .line 145
    return-void
.end method

.method public setBlueMin(FFFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMin:[F

    aput p1, v0, v1

    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMid:[F

    aput p2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMax:[F

    aput p3, v0, v1

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutput:[F

    aput p4, v0, v1

    .line 139
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutput:[F

    aput p5, v0, v1

    .line 140
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->updateUniforms()V

    .line 141
    return-void
.end method

.method public setGreenMin(FFF)V
    .locals 6

    .prologue
    .line 131
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setGreenMin(FFFFF)V

    .line 132
    return-void
.end method

.method public setGreenMin(FFFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMin:[F

    aput p1, v0, v1

    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMid:[F

    aput p2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMax:[F

    aput p3, v0, v1

    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutput:[F

    aput p4, v0, v1

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutput:[F

    aput p5, v0, v1

    .line 127
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->updateUniforms()V

    .line 128
    return-void
.end method

.method public setMin(FFF)V
    .locals 6

    .prologue
    .line 105
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setMin(FFFFF)V

    .line 106
    return-void
.end method

.method public setMin(FFFFF)V
    .locals 0

    .prologue
    .line 99
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setRedMin(FFFFF)V

    .line 100
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setGreenMin(FFFFF)V

    .line 101
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setBlueMin(FFFFF)V

    .line 102
    return-void
.end method

.method public setRedMin(FFF)V
    .locals 6

    .prologue
    .line 118
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setRedMin(FFFFF)V

    .line 119
    return-void
.end method

.method public setRedMin(FFFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMin:[F

    aput p1, v0, v1

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMid:[F

    aput p2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMax:[F

    aput p3, v0, v1

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutput:[F

    aput p4, v0, v1

    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutput:[F

    aput p5, v0, v1

    .line 114
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->updateUniforms()V

    .line 115
    return-void
.end method

.method public updateUniforms()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinLocation:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMin:[F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setFloatVec3(I[F)V

    .line 92
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMidLocation:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMid:[F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setFloatVec3(I[F)V

    .line 93
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxLocation:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMax:[F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setFloatVec3(I[F)V

    .line 94
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutputLocation:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMinOutput:[F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setFloatVec3(I[F)V

    .line 95
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutputLocation:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->mMaxOutput:[F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setFloatVec3(I[F)V

    .line 96
    return-void
.end method
