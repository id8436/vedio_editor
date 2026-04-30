.class public Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;
.super Lcom/adobe/premiereclip/mediaengine/exporter/EglSurfaceBase;
.source "WindowSurface.java"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/exporter/EglSurfaceBase;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/exporter/EglSurfaceBase;-><init>(Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 46
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 47
    iput-boolean p3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mReleaseSurface:Z

    .line 48
    return-void
.end method


# virtual methods
.method public recreate(Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not yet implemented for SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mEglCore:Lcom/adobe/premiereclip/mediaengine/exporter/EglCore;

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->createWindowSurface(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->releaseEglSurface()V

    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mReleaseSurface:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/exporter/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 72
    :cond_1
    return-void
.end method
