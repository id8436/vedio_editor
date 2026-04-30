.class Lcom/adobe/premiereclip/automode/AudioDecodeTask;
.super Ljava/lang/Object;
.source "AudioDecodeTask.java"

# interfaces
.implements Lcom/adobe/premiereclip/automode/AutoModeManager$Task;


# static fields
.field private static final AUDIO_BUFFER_SIZE:I = 0x10000

.field private static final CHUNKSIZE:I = 0x3a980

.field private static final TAG:Ljava/lang/String; = "AudioDecodeTask"


# instance fields
.field private mChunkTime:J

.field private mContext:Landroid/content/Context;

.field private mDecoder:Lcom/adobe/decoderfactory/IAudioDecoder;

.field private mInfo:Lcom/adobe/decoderfactory/AudioInfo;

.field private mListener:Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTaskThread:Ljava/lang/Thread;

.field private mUri:Ljava/lang/String;

.field private mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/premiereclip/automode/VeloBridge;Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p4, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mListener:Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

    .line 45
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mUri:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    .line 49
    new-instance v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask$1;-><init>(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mRunnable:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Lcom/adobe/decoderfactory/IAudioDecoder;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mDecoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/automode/AudioDecodeTask;Lcom/adobe/decoderfactory/IAudioDecoder;)Lcom/adobe/decoderfactory/IAudioDecoder;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mDecoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->decodeAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/automode/AudioDecodeTask;)Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mListener:Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

    return-object v0
.end method

.method private decodeAudio()Z
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "deprecation"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 112
    const-wide/16 v8, 0x0

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mVelo:Lcom/adobe/premiereclip/automode/VeloBridge;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/automode/VeloBridge;->GetSamplesPerSpectrogramBin()I

    move-result v2

    .line 114
    const/high16 v3, 0x10000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 115
    new-instance v11, Lcom/adobe/decoderfactory/AudioReadData;

    invoke-direct {v11, v3}, Lcom/adobe/decoderfactory/AudioReadData;-><init>(Ljava/nio/ByteBuffer;)V

    .line 116
    const v3, 0x3a980

    div-int/2addr v3, v2

    mul-int v10, v3, v2

    .line 117
    const/4 v4, 0x0

    .line 119
    new-instance v14, Lcom/adobe/premiereclip/automode/AudioSamples;

    invoke-direct {v14}, Lcom/adobe/premiereclip/automode/AudioSamples;-><init>()V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v2}, Lcom/adobe/decoderfactory/AudioInfo;->getChannels()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    move v3, v10

    .line 122
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mDecoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    invoke-interface {v5}, Lcom/adobe/decoderfactory/IAudioDecoder;->isEOF()Z

    move-result v5

    if-nez v5, :cond_8

    .line 123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mDecoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    invoke-interface {v5, v11}, Lcom/adobe/decoderfactory/IAudioDecoder;->readNextSamples(Lcom/adobe/decoderfactory/AudioReadData;)V

    .line 124
    invoke-virtual {v11}, Lcom/adobe/decoderfactory/AudioReadData;->getNoOfSamples()J

    move-result-wide v16

    .line 125
    const-wide/16 v6, 0x0

    cmp-long v5, v16, v6

    if-lez v5, :cond_a

    .line 128
    invoke-virtual {v11}, Lcom/adobe/decoderfactory/AudioReadData;->getData()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 129
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    .line 130
    if-eqz v2, :cond_3

    .line 131
    const/4 v5, 0x0

    :goto_2
    int-to-long v6, v5

    cmp-long v6, v6, v16

    if-gez v6, :cond_7

    .line 132
    if-ne v3, v10, :cond_1

    .line 133
    if-eqz v4, :cond_0

    .line 134
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->processSampleBuffer([FLcom/adobe/premiereclip/automode/AudioSamples;)V

    .line 136
    :cond_0
    const/4 v3, 0x0

    .line 137
    new-array v4, v10, [F

    .line 139
    :cond_1
    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    move-result v6

    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x47000000    # 32768.0f

    div-float/2addr v6, v7

    aput v6, v4, v3

    .line 140
    add-int/lit8 v6, v3, 0x1

    .line 131
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_2

    .line 120
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :cond_3
    const/4 v5, 0x0

    move v7, v5

    :goto_3
    int-to-long v0, v7

    move-wide/from16 v18, v0

    cmp-long v5, v18, v16

    if-gez v5, :cond_7

    .line 145
    if-ne v3, v10, :cond_5

    .line 146
    if-eqz v4, :cond_4

    .line 147
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->processSampleBuffer([FLcom/adobe/premiereclip/automode/AudioSamples;)V

    .line 149
    :cond_4
    const/4 v3, 0x0

    .line 150
    new-array v4, v10, [F

    .line 152
    :cond_5
    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    move-result v5

    int-to-float v6, v5

    .line 153
    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mInfo:Lcom/adobe/decoderfactory/AudioInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/decoderfactory/AudioInfo;->getChannels()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    .line 154
    invoke-virtual {v15}, Ljava/nio/ShortBuffer;->get()S

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v6, v6, v18

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 156
    :cond_6
    const/high16 v5, 0x47000000    # 32768.0f

    div-float v5, v6, v5

    aput v5, v4, v3

    .line 157
    add-int/lit8 v5, v3, 0x1

    .line 144
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v3, v5

    goto :goto_3

    .line 160
    :cond_7
    add-long v6, v8, v16

    :goto_5
    move-wide v8, v6

    .line 162
    goto/16 :goto_1

    .line 163
    :cond_8
    if-eqz v4, :cond_9

    if-lez v3, :cond_9

    .line 165
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->processSampleBuffer([FLcom/adobe/premiereclip/automode/AudioSamples;)V

    .line 167
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 168
    const-string/jumbo v4, "AudioDecodeTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Decoded  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " samples in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v2, 0x1

    return v2

    :cond_a
    move-wide v6, v8

    goto :goto_5
.end method

.method private processSampleBuffer([FLcom/adobe/premiereclip/automode/AudioSamples;)V
    .locals 6

    .prologue
    .line 174
    array-length v0, p1

    .line 175
    iput-object p1, p2, Lcom/adobe/premiereclip/automode/AudioSamples;->samples:[F

    .line 176
    const/4 v1, 0x0

    iput v1, p2, Lcom/adobe/premiereclip/automode/AudioSamples;->offset:I

    .line 177
    iput v0, p2, Lcom/adobe/premiereclip/automode/AudioSamples;->count:I

    .line 178
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mListener:Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

    invoke-virtual {p2}, Lcom/adobe/premiereclip/automode/AudioSamples;->clone()Lcom/adobe/premiereclip/automode/AudioSamples;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;->onProgress(Lcom/adobe/premiereclip/automode/AudioSamples;)V

    .line 179
    iget-wide v2, p2, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/adobe/premiereclip/automode/AudioSamples;->position:J

    .line 180
    iget-wide v2, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mChunkTime:J

    long-to-double v2, v2

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mChunkTime:J

    .line 182
    const-string/jumbo v1, "AudioDecodeTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Decoded  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " samples in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mChunkTime:J

    long-to-double v4, v4

    sub-double v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method


# virtual methods
.method public getInfo()V
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mDecoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    invoke-interface {v0}, Lcom/adobe/decoderfactory/IAudioDecoder;->getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mInfo:Lcom/adobe/decoderfactory/AudioInfo;

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->hasAudio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mListener:Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

    const-string/jumbo v1, "Data source does not contain audio"

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;->onError(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->getSampleRate()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mInfo:Lcom/adobe/decoderfactory/AudioInfo;

    invoke-virtual {v1}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v2

    .line 88
    iget-object v1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mListener:Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcom/adobe/premiereclip/automode/AudioDecodeTask$Listener;->onInfo(II)V

    goto :goto_0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getTaskThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mTaskThread:Ljava/lang/Thread;

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTaskThread(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_0
    iput-object p1, p0, Lcom/adobe/premiereclip/automode/AudioDecodeTask;->mTaskThread:Ljava/lang/Thread;

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
