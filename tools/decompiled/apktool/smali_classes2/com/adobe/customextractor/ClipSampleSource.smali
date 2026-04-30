.class public final Lcom/adobe/customextractor/ClipSampleSource;
.super Ljava/lang/Object;
.source "ClipSampleSource.java"


# static fields
.field public static final DISCONTINUITY_READ:I = -0x5

.field public static final END_OF_STREAM:I = -0x1

.field public static final FORMAT_READ:I = -0x4

.field public static final NOTHING_READ:I = -0x2

.field public static final SAMPLE_READ:I = -0x3

.field private static final TAG:Ljava/lang/String; = "ClipSampleSource"


# instance fields
.field private clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

.field private context:Landroid/content/Context;

.field private downstreamRendererCount:I

.field private formatRead:Z

.field private pendingDiscontinuityRead:[Z

.field private prepared:Z

.field private sampleCountRead:I

.field private sourceUri:Landroid/net/Uri;

.field private trackInfos:[Lcom/adobe/customextractor/Tracks/TrackInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/adobe/customextractor/ClipSampleSource;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/adobe/customextractor/ClipSampleSource;->sourceUri:Landroid/net/Uri;

    .line 42
    iput p3, p0, Lcom/adobe/customextractor/ClipSampleSource;->downstreamRendererCount:I

    .line 43
    new-instance v0, Lcom/adobe/customextractor/ClipExtractor;

    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/ClipExtractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->formatRead:Z

    .line 45
    return-void
.end method

.method private readSampleData(Lcom/adobe/customextractor/Util/SampleHolder;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v5, 0x0

    .line 152
    iget-object v2, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    .line 153
    iget-object v2, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 155
    iget-object v3, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    iget-object v4, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v2}, Lcom/adobe/customextractor/ClipExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 157
    if-ltz v3, :cond_1

    .line 158
    iput v3, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    .line 159
    iget-object v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v1, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->sampleCountRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->sampleCountRead:I

    .line 161
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    .line 163
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->getSampleFlags()I

    move-result v0

    iput v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    .line 164
    iget v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/CryptoInfo;->setFromExtractorV16(Lcom/adobe/customextractor/ClipExtractor;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->advance()V

    .line 168
    const/4 v0, -0x3

    .line 181
    :goto_0
    return v0

    .line 170
    :cond_1
    if-ne v3, v0, :cond_2

    .line 171
    iput v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    goto :goto_0

    .line 175
    :cond_2
    iput v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    move v0, v1

    .line 176
    goto :goto_0

    .line 180
    :cond_3
    iput v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    move v0, v1

    .line 181
    goto :goto_0
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
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public disable(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/ClipExtractor;->unselectTrack(I)V

    move v0, v1

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/customextractor/ClipSampleSource;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/adobe/customextractor/ClipSampleSource;->pendingDiscontinuityRead:[Z

    aput-boolean v1, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public enable(IJ)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/ClipExtractor;->selectTrack(I)V

    .line 112
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p2, p3}, Lcom/adobe/customextractor/ClipExtractor;->seekTo(J)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->sampleCountRead:I

    .line 114
    return-void
.end method

.method public getNativeTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/ClipExtractor;->getNativeTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/ClipExtractor;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo(I)Lcom/adobe/customextractor/Tracks/TrackInfo;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->trackInfos:[Lcom/adobe/customextractor/Tracks/TrackInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/customextractor/ClipSampleSource;->getTrackCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->trackInfos:[Lcom/adobe/customextractor/Tracks/TrackInfo;

    aget-object v0, v0, p1

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-boolean v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->prepared:Z

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    iget-object v2, p0, Lcom/adobe/customextractor/ClipSampleSource;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/customextractor/ClipExtractor;->setDataSource(Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->prepared:Z

    .line 53
    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v1}, Lcom/adobe/customextractor/ClipExtractor;->getTrackCount()I

    move-result v5

    .line 54
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->pendingDiscontinuityRead:[Z

    .line 55
    new-array v1, v5, [Lcom/adobe/customextractor/Tracks/TrackInfo;

    iput-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->trackInfos:[Lcom/adobe/customextractor/Tracks/TrackInfo;

    move v4, v0

    .line 56
    :goto_1
    if-ge v4, v5, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, v4}, Lcom/adobe/customextractor/ClipExtractor;->getNativeTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 58
    const-wide/16 v2, 0x0

    .line 59
    const-string/jumbo v0, ""

    .line 60
    if-eqz v6, :cond_3

    .line 61
    const-string/jumbo v0, "durationUs"

    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "durationUs"

    .line 62
    invoke-virtual {v6, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 63
    :goto_2
    const-string/jumbo v2, "mime"

    invoke-virtual {v6, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move-wide v2, v0

    move-object v0, v8

    .line 68
    :goto_3
    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->trackInfos:[Lcom/adobe/customextractor/Tracks/TrackInfo;

    new-instance v6, Lcom/adobe/customextractor/Tracks/TrackInfo;

    invoke-direct {v6, v0, v2, v3}, Lcom/adobe/customextractor/Tracks/TrackInfo;-><init>(Ljava/lang/String;J)V

    aput-object v6, v1, v4

    .line 56
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 62
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 66
    :cond_3
    const-string/jumbo v1, "ClipSampleSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Track format not found for index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 72
    :cond_4
    iput-boolean v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->prepared:Z

    goto :goto_0
.end method

.method public readData(IJLcom/adobe/customextractor/Util/Media/MediaFormatHolder;Lcom/adobe/customextractor/Util/SampleHolder;Z)I
    .locals 2

    .prologue
    const/4 v0, -0x2

    .line 132
    iget-boolean v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->prepared:Z

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->pendingDiscontinuityRead:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->pendingDiscontinuityRead:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 135
    const/4 v0, -0x5

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    if-nez p6, :cond_0

    .line 140
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->formatRead:Z

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/ClipExtractor;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    .line 142
    iput-object v0, p4, Lcom/adobe/customextractor/Util/Media/MediaFormatHolder;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->formatRead:Z

    .line 144
    const/4 v0, -0x4

    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0, p5}, Lcom/adobe/customextractor/ClipSampleSource;->readSampleData(Lcom/adobe/customextractor/Util/SampleHolder;)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->downstreamRendererCount:I

    if-lez v0, :cond_0

    .line 82
    iget v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->downstreamRendererCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->downstreamRendererCount:I

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/ClipExtractor;->release()V

    .line 86
    :cond_0
    return-void
.end method

.method public seekToUs(J)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/customextractor/ClipSampleSource;->clipExtractor:Lcom/adobe/customextractor/ClipExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/ClipExtractor;->seekTo(J)V

    .line 126
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/customextractor/ClipSampleSource;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/adobe/customextractor/ClipSampleSource;->pendingDiscontinuityRead:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
