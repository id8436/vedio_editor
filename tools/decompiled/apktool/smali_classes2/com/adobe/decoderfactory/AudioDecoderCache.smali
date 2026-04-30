.class public Lcom/adobe/decoderfactory/AudioDecoderCache;
.super Ljava/lang/Object;
.source "AudioDecoderCache.java"


# static fields
.field private static MAX_OPEN_MEDIA_COUNT:I

.field private static sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;


# instance fields
.field private mSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->MAX_OPEN_MEDIA_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    .line 49
    return-void
.end method

.method public static Instance()Lcom/adobe/decoderfactory/AudioDecoderCache;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->initialize()V

    .line 164
    :cond_0
    sget-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    return-object v0
.end method

.method private declared-synchronized addDecoderToList(ILcom/adobe/decoderfactory/IAudioDecoder;)V
    .locals 3

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;

    invoke-direct {v2, p0, p1, p2}, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;-><init>(Lcom/adobe/decoderfactory/AudioDecoderCache;ILcom/adobe/decoderfactory/IAudioDecoder;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDecoderInfo(I)Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    if-nez p0, :cond_0

    .line 96
    const-string/jumbo v0, ""

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/adobe/decoderfactory/AudioDecoderCache;

    invoke-direct {v0}, Lcom/adobe/decoderfactory/AudioDecoderCache;-><init>()V

    sput-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    .line 38
    :cond_0
    return-void
.end method

.method private declared-synchronized removeAndPutAtBegining(I)V
    .locals 3

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getDecoderInfo(I)Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static terminate()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->release()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/decoderfactory/AudioDecoderCache;->sInstance:Lcom/adobe/decoderfactory/AudioDecoderCache;

    .line 45
    :cond_0
    return-void
.end method

.method private declared-synchronized updateList()V
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/adobe/decoderfactory/AudioDecoderCache;->MAX_OPEN_MEDIA_COUNT:I

    if-le v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 152
    if-nez v1, :cond_1

    .line 158
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;

    .line 156
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public createDecoder(Ljava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;
    .locals 2

    .prologue
    .line 104
    invoke-static {p1}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "MOV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    new-instance v0, Lcom/adobe/decoderfactory/CustomAudioDecoder;

    invoke-direct {v0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->hasError()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    new-instance v0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-direct {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_3
    new-instance v0, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;

    invoke-direct {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;-><init>()V

    .line 118
    invoke-virtual {v0, p1}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/SystemDefaultAudioDecoder;->hasError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :cond_4
    new-instance v0, Lcom/adobe/decoderfactory/CustomAudioDecoder;

    invoke-direct {v0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;-><init>()V

    .line 122
    invoke-virtual {v0, p1}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/CustomAudioDecoder;->hasError()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method protected finalyze()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->release()V

    .line 53
    return-void
.end method

.method public declared-synchronized getDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;
    .locals 3

    .prologue
    .line 61
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 91
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 64
    :cond_2
    if-gez p1, :cond_3

    .line 66
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/adobe/decoderfactory/AudioDecoderCache;->createDecoder(Ljava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 71
    invoke-direct {p0, v0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getDecoderInfo(I)Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->getSequenceId()I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->decoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    .line 73
    invoke-interface {v2}, Lcom/adobe/decoderfactory/IAudioDecoder;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-direct {p0, v0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->removeAndPutAtBegining(I)V

    .line 78
    iget-object v0, v1, Lcom/adobe/decoderfactory/AudioDecoderCache$DecoderInfo;->decoder:Lcom/adobe/decoderfactory/IAudioDecoder;

    goto :goto_0

    .line 70
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p0, p2}, Lcom/adobe/decoderfactory/AudioDecoderCache;->createDecoder(Ljava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->addDecoderToList(ILcom/adobe/decoderfactory/IAudioDecoder;)V

    .line 88
    invoke-direct {p0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->updateList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/decoderfactory/AudioDecoderCache;->mSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    return-void
.end method
