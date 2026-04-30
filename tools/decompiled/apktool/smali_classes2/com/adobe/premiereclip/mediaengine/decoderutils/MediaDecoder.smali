.class abstract Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;
.super Ljava/lang/Object;
.source "MediaDecoder.java"


# instance fields
.field protected clipIndex:I

.field protected currentTimeStampUs:J

.field private enabled:Z

.field private volatile gettingFrame:Z

.field private hash:Ljava/lang/String;

.field protected mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

.field protected volatile newFrameRequest:Z

.field private released:Z

.field private renderedOneFrame:Z

.field protected renderedTimeStampUs:J

.field protected resetPosition:Z

.field protected sourceDuration:J

.field protected sourcePath:Ljava/lang/String;

.field protected sourceUri:Landroid/net/Uri;

.field protected trackIndex:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->sourcePath:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->trackIndex:I

    .line 54
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    .line 55
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->sourcePath:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->trackIndex:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->calculateHash(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->hash:Ljava/lang/String;

    .line 57
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enabled:Z

    .line 58
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->released:Z

    .line 59
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->resetPosition:Z

    .line 61
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    .line 62
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->newFrameRequest:Z

    .line 63
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedOneFrame:Z

    .line 64
    return-void
.end method

.method static calculateHash(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private disable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enabled:Z

    if-nez v0, :cond_0

    .line 132
    monitor-exit p0

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enabled:Z

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->resetPosition:Z

    .line 137
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->onDisabled()V

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->stop()V

    .line 139
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private waitForCurrentGetFrame(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    move v0, v1

    .line 87
    :goto_0
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    if-eqz p1, :cond_2

    .line 88
    :cond_0
    if-nez v0, :cond_1

    .line 89
    const-string/jumbo v2, "VideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initing with forced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    const-wide/16 v2, 0xf

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_2
    const-string/jumbo v0, "VideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initing finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method final enable(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enabled:Z

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->resetPosition:Z

    .line 121
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->currentTimeStampUs:J

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedTimeStampUs:J

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->onEnabled(J)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enabled:Z

    goto :goto_0
.end method

.method protected final getFrameAtTime(JLcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    const-string/jumbo v4, "CustomVideoDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GetFrameAtTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->released:Z

    if-eqz v4, :cond_1

    .line 163
    monitor-exit p0

    .line 204
    :cond_0
    :goto_0
    return-wide v2

    .line 165
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->newFrameRequest:Z

    .line 167
    sget-boolean v4, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    if-nez v4, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->waitForCurrentGetFrame(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 168
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed as initing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedOneFrame:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->currentTimeStampUs:J

    :goto_2
    move-wide v2, v0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 167
    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 169
    goto :goto_2

    .line 171
    :cond_4
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->newFrameRequest:Z

    .line 172
    monitor-enter p0

    .line 173
    :try_start_2
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getting frame "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    .line 175
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enable(J)V

    .line 179
    invoke-virtual {p0, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->setSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)V

    .line 181
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->resetPosition:Z

    if-eqz v0, :cond_5

    .line 182
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v1, "seeking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->seekTo(J)V

    .line 186
    :cond_5
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getFrameAtTimeInternal(JJ)Z

    move-result v0

    .line 187
    const-string/jumbo v1, "CustomVideoDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GotFrame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz v0, :cond_6

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedOneFrame:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 199
    :cond_6
    monitor-enter p0

    .line 200
    :try_start_4
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getting frame done "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    .line 202
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 204
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedOneFrame:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->currentTimeStampUs:J

    goto/16 :goto_0

    .line 175
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    monitor-enter p0

    .line 193
    :try_start_6
    const-string/jumbo v1, "VideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting frame done with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    .line 195
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 196
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 202
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method protected abstract getFrameAtTimeInternal(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->hash:Ljava/lang/String;

    return-object v0
.end method

.method protected getSurface()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    return-object v0
.end method

.method protected final isEnabled()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->enabled:Z

    return v0
.end method

.method final isGettingFrame()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->gettingFrame:Z

    return v0
.end method

.method protected final isReleased()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->released:Z

    return v0
.end method

.method protected abstract onDisabled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract onEnabled(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract onReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected abstract onSurfaceSet()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->released:Z

    if-eqz v0, :cond_0

    .line 212
    monitor-exit p0

    .line 220
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->released:Z

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->waitForCurrentGetFrame(Z)Z

    .line 218
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->disable()V

    .line 219
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->onReleased()V

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->resetPosition:Z

    .line 150
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->currentTimeStampUs:J

    .line 151
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedTimeStampUs:J

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->seekToInternal(J)V

    .line 153
    return-void
.end method

.method protected abstract seekToInternal(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method final setSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    if-ne v0, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "VideoRend"

    const-string/jumbo v1, "New Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->renderedOneFrame:Z

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->connect()V

    .line 82
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->onSurfaceSet()V

    goto :goto_0
.end method
