.class public final Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "test"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 66
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 67
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mGlVersion:I

    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EGL already set up"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    if-nez p1, :cond_1

    .line 92
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 95
    :cond_1
    invoke-static {v4}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 96
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_2

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    new-array v0, v6, [I

    .line 100
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v4, v0, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_4

    .line 108
    invoke-direct {p0, p2, v5}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 114
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, p1, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 117
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_4

    .line 119
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 120
    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 121
    iput v5, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mGlVersion:I

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_6

    .line 127
    invoke-direct {p0, p2, v6}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 128
    if-nez v0, :cond_5

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_5
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    .line 135
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, p1, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "eglCreateContext"

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 138
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 139
    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 140
    iput v6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mGlVersion:I

    .line 144
    :cond_6
    new-array v0, v7, [I

    .line 145
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/16 v3, 0x3098

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 147
    const-string/jumbo v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EGLContext created, client version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 110
    nop

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    .line 131
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 389
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_0
    return-void
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 158
    .line 159
    if-lt p2, v8, :cond_2

    .line 160
    const/16 v0, 0x44

    .line 166
    :goto_0
    const/16 v1, 0x11

    new-array v1, v1, [I

    const/16 v4, 0x3024

    aput v4, v1, v2

    aput v6, v1, v7

    const/4 v4, 0x2

    const/16 v5, 0x3023

    aput v5, v1, v4

    aput v6, v1, v8

    const/16 v4, 0x3022

    aput v4, v1, v3

    const/4 v3, 0x5

    aput v6, v1, v3

    const/4 v3, 0x6

    const/16 v4, 0x3021

    aput v4, v1, v3

    const/4 v3, 0x7

    aput v6, v1, v3

    const/16 v3, 0x3025

    aput v3, v1, v6

    const/16 v3, 0x9

    const/16 v4, 0x10

    aput v4, v1, v3

    const/16 v3, 0xa

    const/16 v4, 0x3026

    aput v4, v1, v3

    const/16 v3, 0xb

    aput v6, v1, v3

    const/16 v3, 0xc

    const/16 v4, 0x3040

    aput v4, v1, v3

    const/16 v3, 0xd

    aput v0, v1, v3

    const/16 v0, 0xe

    const/16 v3, 0x3038

    aput v3, v1, v0

    const/16 v0, 0xf

    aput v2, v1, v0

    const/16 v0, 0x10

    const/16 v3, 0x3038

    aput v3, v1, v0

    .line 178
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 179
    array-length v0, v1

    add-int/lit8 v0, v0, -0x3

    const/16 v3, 0x3142

    aput v3, v1, v0

    .line 180
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aput v7, v1, v0

    .line 182
    :cond_0
    new-array v3, v7, [Landroid/opengl/EGLConfig;

    .line 183
    new-array v6, v7, [I

    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const-string/jumbo v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to find RGB8888 / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " EGLConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_1
    return-object v0

    :cond_1
    aget-object v0, v3, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto/16 :goto_0
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 376
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 377
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 378
    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 379
    const-string/jumbo v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current EGL ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", context="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v3

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 272
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 275
    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    return-object v0
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    aput v1, v0, v3

    .line 254
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    .line 256
    const-string/jumbo v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 257
    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 222
    const-string/jumbo v0, "test"

    const-string/jumbo v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 228
    return-void

    .line 226
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 227
    throw v0
.end method

.method public getGlVersion()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mGlVersion:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    .line 341
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 288
    const-string/jumbo v0, "test"

    const-string/jumbo v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    return-void
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 302
    const-string/jumbo v0, "test"

    const-string/jumbo v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent(draw,read) failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    return-void
.end method

.method public makeNothingCurrent()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    return-void
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 349
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 350
    aget v0, v0, v2

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 205
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 209
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 210
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 212
    return-void
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 236
    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 334
    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
