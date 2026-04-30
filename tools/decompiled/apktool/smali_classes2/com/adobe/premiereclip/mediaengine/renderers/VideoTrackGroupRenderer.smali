.class public Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;
.super Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;
.source "VideoTrackGroupRenderer.java"


# instance fields
.field private trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

.field private videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

.field private videoTrackRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    .line 41
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    .line 42
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->width:I

    .line 43
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->height:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/VideoTrack;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getOverlayTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/VideoTrack;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOverlayFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOverlayFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    .line 49
    return-void
.end method


# virtual methods
.method public getFrameAtTime(JJLjava/util/List;)V
    .locals 7
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

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 84
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->getFrameAtTime(JJLjava/util/List;)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->init()V

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 70
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->init()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 74
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->setSecondGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onOutputSizeChanged(II)V

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->init()V

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->addFilterToChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 79
    return-void
.end method

.method public isEnded()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 109
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    move v1, v0

    .line 110
    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 111
    :cond_1
    return v1
.end method

.method public onDisplaySizeChanged()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->width:I

    .line 54
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackGroup:Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->height:I

    .line 55
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->onDisplaySizeChanged()V

    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 57
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->onDisplaySizeChanged()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->setGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 60
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->setSecondGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onOutputSizeChanged(II)V

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->trackGroupFilter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->changeBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 64
    return-void
.end method

.method protected onReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 117
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->onReleased()V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public resetClips()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 95
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->resetClips()V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public resetPosition()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    .line 101
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->resetPosition()V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public setClipRendering(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 89
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->setClipRendering(I)V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->videoTrackRenderers:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->setClipRendering(I)V

    .line 91
    return-void

    :cond_0
    move v1, v2

    .line 90
    goto :goto_0
.end method
