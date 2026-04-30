.class public abstract Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;
.super Ljava/lang/Object;
.source "ComponentRenderer.java"


# static fields
.field protected static final STATE_RELEASED:I = -0x2

.field protected static final STATE_UNPREPARED:I


# instance fields
.field protected currentTimeStampUs:J

.field protected duration:J

.field protected frameRate:F

.field protected glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field protected height:I

.field protected isEnded:Z

.field protected outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field protected renderedTimeStampUs:J

.field private state:I

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->state:I

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string/jumbo v1, "glView not assigned!!"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 58
    return-void
.end method


# virtual methods
.method protected createOutputFrameBuffer()V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDestroy()V

    .line 73
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->height:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 74
    return-void
.end method

.method public abstract getFrameAtTime(JJLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public getGlView()Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    return-object v0
.end method

.method public getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->createOutputFrameBuffer()V

    .line 67
    return-void
.end method

.method public abstract isEnded()Z
.end method

.method public onDisplaySizeChanged()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->createOutputFrameBuffer()V

    .line 78
    return-void
.end method

.method protected abstract onReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x2

    .line 89
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->state:I

    if-ne v0, v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->state:I

    .line 93
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->onReleased()V

    goto :goto_0
.end method
