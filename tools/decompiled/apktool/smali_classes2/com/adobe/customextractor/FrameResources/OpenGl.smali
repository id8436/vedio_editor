.class public Lcom/adobe/customextractor/FrameResources/OpenGl;
.super Ljava/lang/Object;
.source "OpenGl.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    return-void
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 189
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 190
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    return-object v0
.end method

.method public static createBuffer([S)Ljava/nio/ShortBuffer;
    .locals 2

    .prologue
    .line 198
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    return-object v0
.end method

.method public static getGLBitmap([III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 222
    mul-int v0, p1, p2

    new-array v3, v0, [I

    move v2, v1

    .line 226
    :goto_0
    if-ge v2, p2, :cond_1

    move v0, v1

    .line 227
    :goto_1
    if-ge v0, p1, :cond_0

    .line 228
    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aget v4, p0, v4

    .line 229
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 230
    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    .line 231
    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    .line 232
    sub-int v5, p2, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    aput v4, v3, v5

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method public static getGLBitmapNonAlpha(II)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 240
    mul-int v9, p0, p1

    .line 241
    mul-int/lit8 v1, v9, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 242
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 243
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 247
    new-array v2, v9, [I

    .line 248
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    move v1, v0

    .line 249
    :goto_0
    if-ge v1, v9, :cond_0

    .line 250
    aget v3, v2, v1

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v3

    aput v3, v2, v1

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    sub-int v3, v9, p0

    neg-int v4, p0

    move v5, v0

    move v6, v0

    move v7, p0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 259
    new-array v2, v9, [S

    .line 260
    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 261
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 265
    :goto_1
    if-ge v0, v9, :cond_1

    .line 266
    aget-short v4, v2, v0

    .line 267
    and-int/lit8 v5, v4, 0x1f

    shl-int/lit8 v5, v5, 0xb

    and-int/lit16 v6, v4, 0x7e0

    or-int/2addr v5, v6

    const v6, 0xf800

    and-int/2addr v4, v6

    shr-int/lit8 v4, v4, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 270
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 271
    return-object v1
.end method

.method public static getGLBuffer(II)[I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 214
    mul-int v1, p0, p1

    new-array v7, v1, [I

    .line 215
    invoke-static {v7}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 216
    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 218
    return-object v7
.end method

.method public static loadExternalTexture()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 55
    new-array v0, v1, [I

    .line 57
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 60
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 64
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 66
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 68
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 71
    aget v0, v0, v3

    return v0
.end method

.method public static loadFrameBuffer(II)[I
    .locals 14

    .prologue
    const v13, 0x46180400    # 9729.0f

    const v12, 0x8d40

    const/4 v11, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 27
    new-array v9, v11, [I

    .line 28
    new-array v10, v11, [I

    .line 30
    invoke-static {v11, v9, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 31
    invoke-static {v11, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 32
    aget v2, v10, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 33
    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p0

    move v4, p1

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 35
    const/16 v2, 0x2800

    invoke-static {v0, v2, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 37
    const/16 v2, 0x2801

    invoke-static {v0, v2, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 39
    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 41
    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 44
    aget v2, v9, v1

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 45
    const v2, 0x8ce0

    aget v3, v10, v1

    invoke-static {v12, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 48
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 49
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    aget v2, v10, v1

    aput v2, v0, v1

    aget v1, v9, v1

    aput v1, v0, v11

    return-object v0
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 152
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 153
    const v1, 0x8b31

    invoke-static {p0, v1}, Lcom/adobe/customextractor/FrameResources/OpenGl;->loadShader(Ljava/lang/String;I)I

    move-result v3

    .line 154
    if-nez v3, :cond_0

    .line 155
    const-string/jumbo v1, "Load Program"

    const-string/jumbo v2, "Vertex Shader Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return v0

    .line 158
    :cond_0
    const v1, 0x8b30

    invoke-static {p1, v1}, Lcom/adobe/customextractor/FrameResources/OpenGl;->loadShader(Ljava/lang/String;I)I

    move-result v4

    .line 159
    if-nez v4, :cond_1

    .line 160
    const-string/jumbo v1, "Load Program"

    const-string/jumbo v2, "Fragment Shader Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 166
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 167
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 169
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 171
    const v5, 0x8b82

    invoke-static {v1, v5, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 172
    aget v2, v2, v0

    if-gtz v2, :cond_2

    .line 173
    const-string/jumbo v1, "Load Program"

    const-string/jumbo v2, "Linking Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 177
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    .line 178
    goto :goto_0
.end method

.method public static loadShader(Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 136
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 137
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 138
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 139
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 140
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 141
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 142
    const-string/jumbo v2, "Load Shader Failed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Compilation\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/adobe/customextractor/FrameResources/OpenGl;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    return v0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 75
    new-array v0, v6, [I

    .line 76
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 77
    invoke-static {v6, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 78
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 81
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 83
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 85
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 88
    if-eqz p0, :cond_0

    .line 89
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 99
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    :cond_1
    aget v0, v0, v2

    return v0

    .line 93
    :cond_2
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    if-eqz p0, :cond_3

    .line 95
    invoke-static {v3, v2, v2, v2, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 97
    :cond_3
    aput p1, v0, v2

    goto :goto_0
.end method

.method public static loadTexture(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 13

    .prologue
    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/16 v2, 0x1908

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 106
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 107
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 108
    const/4 v3, 0x1

    invoke-static {v3, v12, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 109
    aget v3, v12, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 110
    const/16 v3, 0x2800

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 112
    const/16 v3, 0x2801

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 114
    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 116
    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 118
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 126
    :goto_0
    aget v0, v12, v1

    return v0

    .line 121
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    iget v7, p1, Landroid/hardware/Camera$Size;->width:I

    iget v8, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x1401

    move v3, v0

    move v4, v1

    move v5, v1

    move v6, v1

    move v9, v2

    move-object v11, p0

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 124
    aput p2, v12, v1

    goto :goto_0
.end method

.method public static loadTextureAsBitmap(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 4

    .prologue
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    invoke-static {v0, p2}, Lcom/adobe/customextractor/FrameResources/OpenGl;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static rnd(FF)F
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    .line 183
    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method
