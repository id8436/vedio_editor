.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 222
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 223
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

    .line 225
    :cond_0
    return-void
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 203
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    return-object v0
.end method

.method public static createBuffer([S)Ljava/nio/ShortBuffer;
    .locals 2

    .prologue
    .line 212
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 213
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 214
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    return-object v0
.end method

.method public static getGLBitmap([III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 236
    mul-int v0, p1, p2

    new-array v3, v0, [I

    move v2, v1

    .line 240
    :goto_0
    if-ge v2, p2, :cond_1

    move v0, v1

    .line 241
    :goto_1
    if-ge v0, p1, :cond_0

    .line 242
    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aget v4, p0, v4

    .line 243
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 244
    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    .line 245
    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    .line 246
    sub-int v5, p2, v2

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v0

    aput v4, v3, v5

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 249
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method public static getGLBitmapNonAlpha(II)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 254
    mul-int v9, p0, p1

    .line 255
    mul-int/lit8 v1, v9, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 256
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 261
    new-array v2, v9, [I

    .line 262
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    move v1, v0

    .line 263
    :goto_0
    if-ge v1, v9, :cond_0

    .line 264
    aget v3, v2, v1

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v3

    aput v3, v2, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 269
    sub-int v3, v9, p0

    neg-int v4, p0

    move v5, v0

    move v6, v0

    move v7, p0

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 273
    new-array v2, v9, [S

    .line 274
    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 275
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 279
    :goto_1
    if-ge v0, v9, :cond_1

    .line 280
    aget-short v4, v2, v0

    .line 281
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

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 284
    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 285
    return-object v1
.end method

.method public static getGLBuffer(II)[I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 228
    mul-int v1, p0, p1

    new-array v7, v1, [I

    .line 229
    invoke-static {v7}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 230
    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    move v2, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 232
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

    .line 69
    new-array v0, v1, [I

    .line 71
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 74
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 76
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 78
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 80
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 82
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 85
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

    .line 41
    new-array v9, v11, [I

    .line 42
    new-array v10, v11, [I

    .line 44
    invoke-static {v11, v9, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 45
    invoke-static {v11, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 46
    aget v2, v10, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 47
    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p0

    move v4, p1

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 49
    const/16 v2, 0x2800

    invoke-static {v0, v2, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 51
    const/16 v2, 0x2801

    invoke-static {v0, v2, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 53
    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 55
    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 58
    aget v2, v9, v1

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 59
    const v2, 0x8ce0

    aget v3, v10, v1

    invoke-static {v12, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 62
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 63
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 65
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

    .line 166
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 167
    const v1, 0x8b31

    invoke-static {p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v3

    .line 168
    if-nez v3, :cond_0

    .line 169
    const-string/jumbo v1, "Load Program"

    const-string/jumbo v2, "Vertex Shader Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return v0

    .line 172
    :cond_0
    const v1, 0x8b30

    invoke-static {p1, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v4

    .line 173
    if-nez v4, :cond_1

    .line 174
    const-string/jumbo v1, "Load Program"

    const-string/jumbo v2, "Fragment Shader Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 180
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 181
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 183
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 185
    const v5, 0x8b82

    invoke-static {v1, v5, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 186
    aget v2, v2, v0

    if-gtz v2, :cond_2

    .line 187
    const-string/jumbo v1, "Load Program"

    const-string/jumbo v2, "Linking Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 191
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public static loadShader(Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 150
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 151
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 152
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 153
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 154
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 155
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 156
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

    .line 159
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

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

    .line 89
    new-array v0, v6, [I

    .line 90
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 91
    invoke-static {v6, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 92
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 95
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 97
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 99
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 102
    if-eqz p0, :cond_0

    .line 103
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 113
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_1
    aget v0, v0, v2

    return v0

    .line 107
    :cond_2
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 108
    if-eqz p0, :cond_3

    .line 109
    invoke-static {v3, v2, v2, v2, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 111
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

    .line 120
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 121
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 122
    const/4 v3, 0x1

    invoke-static {v3, v12, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 123
    aget v3, v12, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 124
    const/16 v3, 0x2800

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 126
    const/16 v3, 0x2801

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 128
    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 130
    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 132
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 140
    :goto_0
    aget v0, v12, v1

    return v0

    .line 135
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 136
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

    .line 138
    aput p2, v12, v1

    goto :goto_0
.end method

.method public static loadTextureAsBitmap(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 4

    .prologue
    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    invoke-static {v0, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public static rnd(FF)F
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    .line 197
    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method
