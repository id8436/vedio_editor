.class public Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;
.super Ljava/lang/Object;
.source "AudioSourcePrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field TAG:Ljava/lang/String;

.field private audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

.field private cancel:Z

.field private currentPrefetchSamplePosition:J

.field private eofReached:Z

.field private maxPrefetchedAudio:I

.field private readSampleQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/adobe/audiomixer/VideoTime;",
            ">;"
        }
    .end annotation
.end field

.field private syncObjectForPrefetchDataUpdate:Ljava/lang/Object;

.field private syncObjectForPrefetchUpdate:Ljava/lang/Object;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/adobe/audiomixer/IAudioSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "AudioSourcePrefetcher"

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchDataUpdate:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchUpdate:Ljava/lang/Object;

    .line 81
    const/16 v0, 0x28

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->maxPrefetchedAudio:I

    .line 84
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->readSampleQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 87
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->cancel:Z

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->currentPrefetchSamplePosition:J

    .line 89
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->eofReached:Z

    .line 90
    return-void
.end method


# virtual methods
.method public getNextAudioData()Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->eofReached:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;-><init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;I)V

    .line 107
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchDataUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;

    .line 104
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchDataUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Starting Async sample reader thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->cancel:Z

    if-nez v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->maxPrefetchedAudio:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->eofReached:Z

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    const-wide/16 v0, 0x5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_1
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    invoke-interface {v2}, Lcom/adobe/audiomixer/IAudioSequence;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;-><init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;I)V

    .line 158
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    new-instance v3, Lcom/adobe/audiomixer/VideoTime;

    iget-wide v4, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->currentPrefetchSamplePosition:J

    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioSequence:Lcom/adobe/audiomixer/IAudioSequence;

    .line 159
    invoke-interface {v6}, Lcom/adobe/audiomixer/IAudioSequence;->getSampleRate()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/adobe/audiomixer/VideoTime;-><init>(JJ)V

    .line 160
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->getAudioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 158
    invoke-interface {v2, v3, v4}, Lcom/adobe/audiomixer/IAudioSequence;->readSamples(Lcom/adobe/audiomixer/VideoTime;Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    .line 162
    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->setNumberOfSamples(J)V

    .line 163
    iget-wide v4, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->currentPrefetchSamplePosition:J

    invoke-virtual {v0, v4, v5}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher$AudioData;->setStartSampleNumber(J)V

    .line 165
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 166
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->eofReached:Z

    .line 171
    :goto_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchDataUpdate:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 168
    :cond_2
    :try_start_4
    iget-wide v4, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->currentPrefetchSamplePosition:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->currentPrefetchSamplePosition:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 173
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exiting from Async sample reader thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public seek(J)V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->syncObjectForPrefetchUpdate:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->currentPrefetchSamplePosition:J

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->audioPrefetchedData:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->eofReached:Z

    .line 135
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->cancel:Z

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->workerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->workerThread:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->cancel:Z

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->workerThread:Ljava/lang/Thread;

    .line 128
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSourcePrefetcher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ERROR"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
