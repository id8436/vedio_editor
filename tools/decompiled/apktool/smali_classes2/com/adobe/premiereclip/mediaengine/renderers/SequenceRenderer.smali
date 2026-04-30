.class public Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;
.super Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;
.source "SequenceRenderer.java"


# instance fields
.field private initialized:Z

.field private isReady:Z

.field private final sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

.field private videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    .line 41
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 42
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSize()[I

    move-result-object v0

    .line 43
    aget v1, v0, v2

    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->width:I

    .line 44
    aget v0, v0, v3

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->height:I

    .line 45
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->setSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 46
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->releaseAllDecoders()V

    .line 47
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    .line 48
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isReady:Z

    .line 49
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->initialized:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameAtTime(JJLjava/util/List;)V
    .locals 9
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
    .line 115
    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    monitor-enter v7

    .line 116
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isReady:Z

    .line 117
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->getFrameAtTime(JJLjava/util/List;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isReady:Z

    .line 119
    monitor-exit v7

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    return-object v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->initialized:Z

    if-eqz v0, :cond_0

    .line 77
    monitor-exit p0

    .line 90
    :goto_0
    return-void

    .line 79
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->init()V

    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 87
    monitor-enter p0

    .line 88
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->initialized:Z

    .line 89
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 79
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->isEnded()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->initialized:Z

    monitor-exit p0

    return v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isReady:Z

    return v0
.end method

.method public onDisplaySizeChanged()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSize()[I

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->width:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->height:I

    if-eq v0, v1, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->onDisplaySizeChanged()V

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 71
    :cond_1
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
    .line 129
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->onReleased()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->initialized:Z

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetClips()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->resetClips()V

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->resetAllDecoderPositions()V

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->resetPosition()V

    .line 111
    return-void
.end method

.method public setClipRendering(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->videoTrackGroupRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackGroupRenderer;->setClipRendering(I)V

    .line 100
    return-void
.end method
