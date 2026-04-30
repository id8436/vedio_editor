.class public Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;
.super Ljava/lang/Object;
.source "AudioSequenceSampleSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/SampleSource;


# static fields
.field private static final TRACK_STATE_DISABLED:I = 0x0

.field private static final TRACK_STATE_ENABLED:I = 0x1

.field private static final TRACK_STATE_FORMAT_SENT:I = 0x2


# instance fields
.field private audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

.field private audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

.field private clipPlaybackIndex:I

.field private context:Landroid/content/Context;

.field private currentSampleTime:J

.field private enableBackgroundMusic:Z

.field private pendingDiscontinuities:Z

.field private prepared:Z

.field private sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

.field private trackInfo:Lcom/google/android/exoplayer/TrackInfo;

.field private trackState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->context:Landroid/content/Context;

    .line 62
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->clipPlaybackIndex:I

    .line 63
    invoke-virtual {p0, p2, v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->resetSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;I)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->enableBackgroundMusic:Z

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z

    .line 67
    return-void
.end method

.method private mayBeConvertToClipTime(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 229
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->clipPlaybackIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 230
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->clipPlaybackIndex:I

    invoke-virtual {v2, v3, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->clipTimeFromSequenceTime(IJ)J

    move-result-wide p1

    .line 231
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 235
    :cond_0
    return-wide p1
.end method

.method private declared-synchronized seekToUsInternal(JZ)V
    .locals 9

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v0}, Lcom/adobe/audiomixer/IAudioSequence;->getSampleRate()I

    move-result v0

    .line 280
    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    long-to-float v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v2, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    .line 281
    if-nez p3, :cond_0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    long-to-double v2, p1

    div-double/2addr v2, v6

    int-to-double v0, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->seek(J)V

    .line 286
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    if-eqz v0, :cond_1

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->pendingDiscontinuities:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_1
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public continueBuffering(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->hasData()Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 157
    const-string/jumbo v0, "clip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Track state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    .line 160
    return-void

    :cond_0
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 145
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 148
    iput v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    .line 149
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->mayBeConvertToClipTime(J)J

    move-result-wide v4

    .line 151
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, v4, v5, v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->seekToUsInternal(JZ)V

    .line 152
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 151
    goto :goto_1
.end method

.method public enableBackgroundMusic(Z)V
    .locals 2

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->enableBackgroundMusic:Z

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/adobe/audiomixer/IAudioSequence;->setBackgroundMusicMute(Z)V

    .line 274
    :cond_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 248
    new-instance v0, Lcom/adobe/audiomixer/VideoTime;

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v1}, Lcom/adobe/audiomixer/IAudioSequence;->getSampleRate()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    .line 249
    invoke-virtual {v0}, Lcom/adobe/audiomixer/VideoTime;->getTimeInMS()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v2}, Lcom/adobe/audiomixer/IAudioSequence;->getDuration()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/audiomixer/VideoTime;->getTimeInMS()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 250
    const-wide/16 v0, -0x3

    .line 252
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepare()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 137
    if-nez p1, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    if-eqz v0, :cond_1

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 137
    goto :goto_1

    :cond_1
    move v1, v2

    .line 138
    goto :goto_2
.end method

.method public declared-synchronized prepare()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 117
    :goto_0
    monitor-exit p0

    return v0

    .line 108
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v0}, Lcom/adobe/audiomixer/IAudioSequence;->prepare()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->start()V

    .line 114
    new-instance v0, Lcom/google/android/exoplayer/TrackInfo;

    const-string/jumbo v1, "audio/raw"

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v2}, Lcom/adobe/audiomixer/IAudioSequence;->getDuration()Lcom/adobe/audiomixer/VideoTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/audiomixer/VideoTime;->getTimeInMS()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackInfo:Lcom/google/android/exoplayer/TrackInfo;

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    .line 117
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepare()Z

    .line 177
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 178
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 179
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 181
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->pendingDiscontinuities:Z

    if-eqz v0, :cond_2

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->pendingDiscontinuities:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    const/4 v0, -0x5

    .line 225
    :goto_2
    monitor-exit p0

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 186
    :cond_2
    if-eqz p6, :cond_3

    .line 187
    const/4 v0, -0x2

    goto :goto_2

    .line 190
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 191
    const-string/jumbo v0, "audio/raw"

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 193
    invoke-interface {v1}, Lcom/adobe/audiomixer/IAudioSequence;->getBufferSize()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 194
    invoke-interface {v2}, Lcom/adobe/audiomixer/IAudioSequence;->getChannels()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 195
    invoke-interface {v3}, Lcom/adobe/audiomixer/IAudioSequence;->getSampleRate()I

    move-result v3

    const/4 v4, 0x0

    .line 192
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;IIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 198
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->trackState:I

    .line 199
    const/4 v0, -0x4

    goto :goto_2

    .line 202
    :cond_4
    iget-object v0, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    const-string/jumbo v0, "audiomixer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initial position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v0}, Lcom/adobe/audiomixer/IAudioSequence;->getChannels()I

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v0}, Lcom/adobe/audiomixer/IAudioSequence;->getSampleRate()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->getNextAudioData()Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;

    move-result-object v1

    .line 210
    if-nez v1, :cond_6

    .line 211
    const/4 v0, -0x2

    goto :goto_2

    .line 212
    :cond_6
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getNumberOfSamples()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 213
    const/4 v0, -0x1

    goto :goto_2

    .line 215
    :cond_7
    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getNumberOfSamples()J

    move-result-wide v4

    long-to-int v3, v4

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v4}, Lcom/adobe/audiomixer/IAudioSequence;->getChannels()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p5, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 216
    iget-object v2, p5, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getAudioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 217
    const/4 v2, 0x1

    iput v2, p5, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 218
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getStartSampleNumber()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getNumberOfSamples()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    .line 220
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getNumberOfSamples()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 221
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getStartSampleNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    .line 223
    :cond_8
    iget-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->currentSampleTime:J

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    int-to-double v0, v0

    div-double v0, v2, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    const/4 v0, -0x3

    goto/16 :goto_2

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->stop()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v0}, Lcom/adobe/audiomixer/IAudioSequence;->release()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 71
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->clipPlaybackIndex:I

    .line 72
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->clipPlaybackIndex:I

    if-eq v0, v4, :cond_1

    .line 73
    new-instance p1, Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-direct {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->photoMotionApplied()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setPhotoMotion(Z)V

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->addClipToAudioTrack(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSampleRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setSampleRate(I)V

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getChannel()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setChannel(I)V

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioDuckApplied()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioDuckApplied(Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->stop()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->context:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSampleRate()I

    move-result v2

    .line 93
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getChannel()I

    move-result v3

    .line 90
    invoke-static {v0, p1, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->convertSequenceToAudioSequence(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/Sequence;II)Lcom/adobe/audiomixer/IAudioSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 95
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->clipPlaybackIndex:I

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->enableBackgroundMusic(Z)V

    .line 97
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;-><init>(Lcom/adobe/audiomixer/IAudioSequence;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->audioPrefetcher:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    .line 95
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekToUs(J)V
    .locals 3

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->mayBeConvertToClipTime(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->seekToUsInternal(JZ)V

    .line 242
    return-void
.end method
