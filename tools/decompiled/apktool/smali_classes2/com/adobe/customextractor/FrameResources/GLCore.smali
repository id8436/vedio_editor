.class public Lcom/adobe/customextractor/FrameResources/GLCore;
.super Ljava/lang/Object;
.source "GLCore.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GLCore"


# instance fields
.field private eglSurface:Landroid/opengl/EGLSurface;

.field private frameAvailable:Z

.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

.field private mGlVersion:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHandle:I

.field private syncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 25
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->syncObject:Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/GLCore;->initDisplay()V

    .line 42
    invoke-direct {p0}, Lcom/adobe/customextractor/FrameResources/GLCore;->createEglContext()V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/customextractor/FrameResources/GLCore;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->frameAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/customextractor/FrameResources/GLCore;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->syncObject:Ljava/lang/Object;

    return-object v0
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 213
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

    .line 215
    :cond_0
    return-void
.end method

.method private createEglContext()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 153
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v1, :cond_1

    .line 154
    invoke-direct {p0, v5}, Lcom/adobe/customextractor/FrameResources/GLCore;->getConfig(I)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unable to find a suitable EGLConfig"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 162
    iget-object v2, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v1, v4}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "eglCreateContext"

    invoke-direct {p0, v2}, Lcom/adobe/customextractor/FrameResources/GLCore;->checkEglError(Ljava/lang/String;)V

    .line 165
    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 166
    iput-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 167
    iput v5, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mGlVersion:I

    .line 169
    :cond_1
    return-void

    .line 158
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private getConfig(I)Landroid/opengl/EGLConfig;
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 172
    .line 173
    if-lt p1, v8, :cond_1

    .line 174
    const/16 v0, 0x44

    .line 182
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

    const/16 v3, 0x3142

    aput v3, v1, v0

    const/16 v0, 0xf

    aput v7, v1, v0

    const/16 v0, 0x10

    const/16 v3, 0x3038

    aput v3, v1, v0

    .line 201
    new-array v3, v7, [Landroid/opengl/EGLConfig;

    .line 202
    new-array v6, v7, [I

    .line 203
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "GLCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to find RGB8888 / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " EGLConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_1
    return-object v0

    :cond_0
    aget-object v0, v3, v2

    goto :goto_1

    :cond_1
    move v0, v3

    goto/16 :goto_0
.end method

.method private initDisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 137
    const-string/jumbo v0, "eglGetDisplay"

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->checkEglError(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 143
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x1

    invoke-static {v1, v0, v3, v0, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const-string/jumbo v0, "eglInitialize"

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->checkEglError(Ljava/lang/String;)V

    .line 145
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    return-void
.end method


# virtual methods
.method public createMemSurface(II)Landroid/opengl/EGLSurface;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
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

    .line 75
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->eglSurface:Landroid/opengl/EGLSurface;

    .line 77
    const-string/jumbo v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->checkEglError(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->eglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->eglSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public createSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/adobe/customextractor/FrameResources/OpenGl;->loadExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mTextureHandle:I

    .line 93
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mTextureHandle:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 94
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/adobe/customextractor/FrameResources/GLCore$1;

    invoke-direct {v1, p0}, Lcom/adobe/customextractor/FrameResources/GLCore$1;-><init>(Lcom/adobe/customextractor/FrameResources/GLCore;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->frameAvailable:Z

    .line 104
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurface:Landroid/view/Surface;

    .line 105
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public drawFrame(IIIIIII)Ljava/nio/IntBuffer;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 123
    new-instance v0, Lcom/adobe/customextractor/FrameResources/Filter;

    invoke-direct {v0}, Lcom/adobe/customextractor/FrameResources/Filter;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

    .line 124
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/customextractor/FrameResources/Filter;->onInit(IIIII)V

    .line 125
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

    iget v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mTextureHandle:I

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/FrameResources/Filter;->draw(I)V

    .line 127
    mul-int v0, p1, p2

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 128
    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, v7

    move v1, v7

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 130
    const-string/jumbo v0, "readPixels"

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->checkEglError(Ljava/lang/String;)V

    .line 131
    return-object v6
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "makeCurrent"

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/FrameResources/GLCore;->checkEglError(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 48
    iput-object v2, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 52
    iput-object v2, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurface:Landroid/view/Surface;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->eglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 56
    iput-object v2, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->eglSurface:Landroid/opengl/EGLSurface;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_3

    .line 59
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 60
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 62
    :cond_3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 63
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

    invoke-virtual {v0}, Lcom/adobe/customextractor/FrameResources/Filter;->destroy()V

    .line 65
    iput-object v2, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mFilter:Lcom/adobe/customextractor/FrameResources/Filter;

    .line 67
    :cond_4
    return-void
.end method

.method public waitForFrame()V
    .locals 5

    .prologue
    .line 109
    iget-object v1, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->frameAvailable:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->syncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    const-string/jumbo v2, "MediaTexture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Interrupt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    return-void

    .line 114
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/adobe/customextractor/FrameResources/GLCore;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
