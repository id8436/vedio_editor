.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.super Ljava/lang/Object;
.source "GPUMediaFilter.java"


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"


# instance fields
.field private mFragmentShader:Ljava/lang/String;

.field protected mGLAttribPosition:I

.field protected mGLAttribTextureCoordinate:I

.field protected mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field protected mGLProgId:I

.field protected mGLUniformTexture:I

.field protected mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private mIsInitialized:Z

.field protected final mMVPMatrix:[F

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field protected final mProjectionMatrix:[F

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mVertexShader:Ljava/lang/String;

.field protected final mViewMatrix:[F

.field protected muMVPMatrixHandle:I

.field protected scale:F

.field protected textureHeight:I

.field protected textureWidth:I

.field protected xOffset:F

.field protected yOffset:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mMVPMatrix:[F

    .line 72
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mProjectionMatrix:[F

    .line 73
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mViewMatrix:[F

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getFinalVertexShader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mVertexShader:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    .line 89
    const/16 v0, -0x64

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    .line 90
    iput v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureWidth:I

    .line 91
    iput v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureHeight:I

    .line 93
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    .line 98
    iput v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    .line 99
    iput v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    .line 100
    return-void
.end method

.method private common()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 245
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 246
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputWidth:I

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 248
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureWidth:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureHeight:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onSizeChanged()V

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runPendingOnDrawTasks()V

    .line 254
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mIsInitialized:Z

    if-nez v0, :cond_2

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mViewMatrix:[F

    const/high16 v4, -0x3fc00000    # -3.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mViewMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribPosition:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 266
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_0
.end method

.method private getFinalVertexShader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uniform mat4 uMVPMatrix;\nattribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvec4 pos;\nvec2 uv;\n \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "void main()\n{\n"

    const-string/jumbo v2, "void main()\n{\n    pos = position * uMVPMatrix;\n    uv = inputTextureCoordinate.xy;\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method private onSizeChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureWidth:I

    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureHeight:I

    .line 218
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureHeight:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 219
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputHeight:I

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 222
    cmpg-float v0, v1, v2

    if-gtz v0, :cond_1

    .line 223
    const/16 v0, 0x8

    new-array v0, v0, [F

    neg-float v2, v1

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v5

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    neg-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v6

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v7

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    neg-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v8

    neg-float v2, v1

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v9

    const/4 v2, 0x5

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v1, v3

    aput v1, v0, v2

    const/4 v1, 0x7

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    move-object v1, v0

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 231
    :cond_1
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v0, v2

    div-float v1, v0, v1

    .line 232
    const/16 v0, 0x8

    new-array v0, v0, [F

    neg-float v3, v2

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v3, v4

    aput v3, v0, v5

    neg-float v3, v1

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v3, v4

    aput v3, v0, v6

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v3, v4

    aput v3, v0, v7

    neg-float v3, v1

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v3, v4

    aput v3, v0, v8

    neg-float v3, v2

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v3, v4

    aput v3, v0, v9

    const/4 v3, 0x5

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float v4, v1, v4

    aput v4, v0, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    sub-float/2addr v2, v4

    aput v2, v0, v3

    const/4 v2, 0x7

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    sub-float/2addr v1, v3

    aput v1, v0, v2

    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mIsInitialized:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 179
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    if-eq v0, v1, :cond_0

    .line 180
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 181
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDestroy()V

    .line 184
    return-void
.end method

.method protected getFragmentShaderExternalOES()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    const-string/jumbo v0, "#extension GL_OES_EGL_image_external : require\n"

    .line 167
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    const-string/jumbo v2, "uniform sampler2D inputImageTexture;"

    const-string/jumbo v3, "uniform samplerExternalOES inputImageTexture;"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    .line 170
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGPUMediaTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method public getOutputHeight()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputHeight:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputWidth:I

    return v0
.end method

.method public getProgram()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    return v0
.end method

.method public final init()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->isExternalOES()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getFragmentShaderExternalOES()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mIsInitialized:Z

    .line 128
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInitialized()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    goto :goto_1
.end method

.method protected isExternalOES()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mIsInitialized:Z

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->common()V

    .line 286
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureDraw()V

    .line 288
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mMVPMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 290
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDrawArraysPre()V

    .line 292
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 293
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 294
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 296
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDrawArraysPost()V

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->getTextureTarget()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method public onDraw(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 303
    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->bindFrameBuffer()V

    .line 307
    :cond_0
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 308
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 309
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDraw()V

    .line 311
    if-eqz p1, :cond_1

    .line 312
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 314
    :cond_1
    return-void
.end method

.method protected onDrawArraysPost()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    .line 153
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribPosition:I

    .line 154
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    const-string/jumbo v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLUniformTexture:I

    .line 155
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    const-string/jumbo v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribTextureCoordinate:I

    .line 158
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLProgId:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->muMVPMatrixHandle:I

    .line 159
    return-void
.end method

.method protected onInitialized()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 8

    .prologue
    .line 190
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputWidth:I

    .line 195
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mOutputHeight:I

    .line 199
    int-to-float v0, p1

    if-nez p2, :cond_2

    const/4 p2, 0x1

    :cond_2
    int-to-float v1, p2

    div-float v3, v0, v1

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mProjectionMatrix:[F

    const/4 v1, 0x0

    neg-float v2, v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 201
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onSizeChanged()V

    goto :goto_0
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 450
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runPendingOnDrawTasks()V
    .locals 2

    .prologue
    .line 321
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 322
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    return-void
.end method

.method protected setFloat(IF)V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$2;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;IF)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method protected setFloatArray(I[F)V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$6;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method protected setFloatVec2(I[F)V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$3;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method protected setFloatVec3(I[F)V
    .locals 1

    .prologue
    .line 390
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$4;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method protected setFloatVec4(I[F)V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$5;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method

.method public setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 163
    return-void
.end method

.method protected setInteger(II)V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;II)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method protected setPoint(ILandroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$7;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public setTextureScale(F)V
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->scale:F

    .line 209
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onSizeChanged()V

    goto :goto_0
.end method

.method public setTextureXOffset(F)V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->xOffset:F

    .line 136
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onSizeChanged()V

    goto :goto_0
.end method

.method public setTextureYOffset(F)V
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->yOffset:F

    .line 144
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onSizeChanged()V

    goto :goto_0
.end method

.method protected setUniformMatrix3f(I[F)V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$8;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method protected setUniformMatrix4f(I[F)V
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter$9;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;I[F)V

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->runOnDraw(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method protected textureDraw()V
    .locals 2

    .prologue
    .line 276
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 277
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLAttribTextureCoordinate:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDraw(I)V

    .line 278
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGLUniformTexture:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 279
    return-void
.end method

.method public updateSurface()V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->isExternalOES()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->mGPUMediaTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->update()V

    .line 273
    :cond_0
    return-void
.end method
