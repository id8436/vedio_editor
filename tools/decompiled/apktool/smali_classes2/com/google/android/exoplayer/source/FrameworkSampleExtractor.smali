.class public final Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;
.super Ljava/lang/Object;
.source "FrameworkSampleExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/source/SampleExtractor;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private final fileDescriptorLength:J

.field private final fileDescriptorOffset:J

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaExtractor:Landroid/media/MediaExtractor;

.field private trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 68
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->context:Landroid/content/Context;

    .line 69
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->uri:Landroid/net/Uri;

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->headers:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 73
    iput-wide v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptorOffset:J

    .line 74
    iput-wide v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptorLength:J

    .line 76
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 77
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 90
    iput-object v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->context:Landroid/content/Context;

    .line 91
    iput-object v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->uri:Landroid/net/Uri;

    .line 92
    iput-object v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->headers:Ljava/util/Map;

    .line 94
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 95
    iput-wide p2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptorOffset:J

    .line 96
    iput-wide p4, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptorLength:J

    .line 98
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 99
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPsshInfoV18()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 135
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 139
    iget-object v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getCachedDuration()J

    move-result-wide v2

    .line 140
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 144
    :goto_0
    return-wide v0

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 144
    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x3

    goto :goto_0

    :cond_1
    add-long v0, v4, v2

    goto :goto_0
.end method

.method public getTrackInfos()[Lcom/google/android/exoplayer/TrackInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

    return-object v0
.end method

.method public getTrackMediaFormat(ILcom/google/android/exoplayer/MediaFormatHolder;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 156
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer/MediaFormat;->createFromFrameworkMediaFormatV16(Landroid/media/MediaFormat;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->format:Lcom/google/android/exoplayer/MediaFormat;

    .line 157
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->getPsshInfoV18()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Lcom/google/android/exoplayer/MediaFormatHolder;->drmInitData:Ljava/util/Map;

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 110
    new-array v0, v3, [Lcom/google/android/exoplayer/TrackInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

    .line 111
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 113
    const-string/jumbo v0, "durationUs"

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "durationUs"

    .line 114
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 115
    :goto_2
    const-string/jumbo v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->trackInfos:[Lcom/google/android/exoplayer/TrackInfo;

    new-instance v6, Lcom/google/android/exoplayer/TrackInfo;

    invoke-direct {v6, v4, v0, v1}, Lcom/google/android/exoplayer/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v6, v5, v2

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptorOffset:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->fileDescriptorLength:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 114
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 119
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public readSample(ILcom/google/android/exoplayer/SampleHolder;)I
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 163
    if-eq v0, p1, :cond_1

    .line 164
    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 182
    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v2, p2, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, p2, Lcom/google/android/exoplayer/SampleHolder;->size:I

    .line 170
    iget-object v1, p2, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v2, p2, Lcom/google/android/exoplayer/SampleHolder;->size:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, p2, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    .line 176
    iget v0, p2, Lcom/google/android/exoplayer/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p2, Lcom/google/android/exoplayer/SampleHolder;->cryptoInfo:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/CryptoInfo;->setFromExtractorV16(Landroid/media/MediaExtractor;)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 182
    const/4 v0, -0x3

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x0

    iput v0, p2, Lcom/google/android/exoplayer/SampleHolder;->size:I

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 188
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 151
    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer/source/FrameworkSampleExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 130
    return-void
.end method
