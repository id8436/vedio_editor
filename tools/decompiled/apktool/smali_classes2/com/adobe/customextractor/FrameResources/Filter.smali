.class public Lcom/adobe/customextractor/FrameResources/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field public static final NO_FILTER_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nuniform highp float crop_bottom;\nuniform highp float height;\nuniform highp float crop_right;\nuniform highp float width;\nvoid main()\n{\n       //gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n       gl_FragColor = texture2D(inputImageTexture, vec2(textureCoordinate.x * crop_right / width, textureCoordinate.y * crop_bottom / height));\n}"

.field public static final NO_FILTER_VERTEX_SHADER:Ljava/lang/String; = "varying vec2 textureCoordinate;\nattribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate;\n}"


# instance fields
.field private crop_bottom:F

.field private crop_right:F

.field private height:F

.field protected mGLAttribPosition:I

.field protected mGLAttribTextureCoordinate:I

.field protected mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLProgId:I

.field protected final mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLUniformCropBottomLocation:I

.field private mGLUniformCropRightLocation:I

.field private mGLUniformHeightLocation:I

.field protected mGLUniformTexture:I

.field private mGLUniformWidthLocation:I

.field private textureHandle:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, -0x64

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    .line 62
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 65
    sget-object v0, Lcom/adobe/customextractor/FrameResources/Filter$TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 69
    return-void
.end method

.method private onDraw()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 111
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 112
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribPosition:I

    iget-object v5, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 114
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 116
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/Filter;->setCrop()V

    .line 117
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/Filter;->setSize()V

    .line 119
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 120
    const v0, 0x8d65

    iget v4, p0, Lcom/adobe/customextractor/FrameResources/Filter;->textureHandle:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 121
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribTextureCoordinate:I

    iget-object v5, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 123
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 124
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 127
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 128
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 129
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 130
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 131
    return-void
.end method

.method private setCrop()V
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting bcrop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/Filter;->crop_bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rcrop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/Filter;->crop_right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformCropBottomLocation:I

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/Filter;->crop_bottom:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 101
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformCropRightLocation:I

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/Filter;->crop_right:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 102
    return-void
.end method

.method private setCubeBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 149
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    return-void

    .line 142
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setSize()V
    .locals 3

    .prologue
    .line 105
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/Filter;->height:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/customextractor/FrameResources/Filter;->width:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformHeightLocation:I

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/Filter;->height:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 107
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformWidthLocation:I

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/Filter;->width:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 108
    return-void
.end method

.method private setTextureBuffer(Lcom/adobe/customextractor/FrameResources/Filter$Rotation;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    sget-object v0, Lcom/adobe/customextractor/FrameResources/Filter$Rotation;->NORMAL:Lcom/adobe/customextractor/FrameResources/Filter$Rotation;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/adobe/customextractor/FrameResources/Filter$Rotation;->ROTATION_180:Lcom/adobe/customextractor/FrameResources/Filter$Rotation;

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v2

    .line 154
    :goto_0
    sget-object v3, Lcom/adobe/customextractor/FrameResources/Filter$Rotation;->ROTATION_90:Lcom/adobe/customextractor/FrameResources/Filter$Rotation;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/adobe/customextractor/FrameResources/Filter$Rotation;->ROTATION_270:Lcom/adobe/customextractor/FrameResources/Filter$Rotation;

    if-ne p1, v3, :cond_3

    .line 155
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static {p1, v2, v0}, Lcom/adobe/customextractor/FrameResources/Filter$TextureRotationUtil;->getRotation(Lcom/adobe/customextractor/FrameResources/Filter$Rotation;ZZ)[F

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    return-void

    :cond_2
    move v0, v1

    .line 153
    goto :goto_0

    :cond_3
    move v2, v1

    .line 154
    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 134
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    if-eq v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 136
    iput v1, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    .line 138
    :cond_0
    return-void
.end method

.method public draw(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    iput p1, p0, Lcom/adobe/customextractor/FrameResources/Filter;->textureHandle:I

    .line 93
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 94
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 95
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/Filter;->onDraw()V

    .line 96
    return-void
.end method

.method public onInit(IIIII)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "varying vec2 textureCoordinate;\nattribute vec4 position;\nattribute vec2 inputTextureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate;\n}"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\nuniform highp float crop_bottom;\nuniform highp float height;\nuniform highp float crop_right;\nuniform highp float width;\nvoid main()\n{\n       //gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n       gl_FragColor = texture2D(inputImageTexture, vec2(textureCoordinate.x * crop_right / width, textureCoordinate.y * crop_bottom / height));\n}"

    invoke-static {v0, v1}, Lcom/adobe/customextractor/FrameResources/OpenGl;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    .line 73
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribPosition:I

    .line 74
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformTexture:I

    .line 75
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLAttribTextureCoordinate:I

    .line 77
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformWidthLocation:I

    .line 78
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "crop_right"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformCropRightLocation:I

    .line 79
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "crop_bottom"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformCropBottomLocation:I

    .line 80
    iget v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLProgId:I

    const-string/jumbo v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->mGLUniformHeightLocation:I

    .line 82
    int-to-float v0, p1

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->width:F

    .line 83
    int-to-float v0, p2

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->height:F

    .line 84
    int-to-float v0, p3

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->crop_right:F

    .line 85
    int-to-float v0, p4

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/Filter;->crop_bottom:F

    .line 87
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/Filter;->setCubeBuffer()V

    .line 88
    invoke-static {p5}, Lcom/adobe/customextractor/FrameResources/Filter$Rotation;->fromInt(I)Lcom/adobe/customextractor/FrameResources/Filter$Rotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/Filter;->setTextureBuffer(Lcom/adobe/customextractor/FrameResources/Filter$Rotation;)V

    .line 89
    return-void
.end method
