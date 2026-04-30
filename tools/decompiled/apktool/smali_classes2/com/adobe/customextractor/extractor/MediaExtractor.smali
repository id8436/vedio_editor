.class public Lcom/adobe/customextractor/extractor/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# static fields
.field public static final END_OF_STREAM:I = -0x1

.field public static final SAMPLE_NOT_FOUND:I = -0x2

.field public static final SEEK_TO_NEXT_CLOSEST_FRAME:I = 0x3

.field public static final SEEK_TO_NEXT_SYNC:I = 0x2

.field public static final SEEK_TO_PREV_SYNC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaExtractor"


# instance fields
.field private filePath:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;

.field private source:Lcom/adobe/customextractor/extractor/CustomSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-direct {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    .line 32
    return-void
.end method

.method private setDataSourceInternal(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/extractor/CustomSource;->setSource(Landroid/net/Uri;)V

    .line 73
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->prepare(JZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/CustomSource;->advance()V

    .line 138
    return-void
.end method

.method public getNativeTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->getNativeTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    move-result v0

    return v0
.end method

.method public getSampleFlags()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/CustomSource;->getSampleFlags()I

    move-result v0

    return v0
.end method

.method public getSampleTime()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/CustomSource;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/CustomSource;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public hasCacheReachedEndOfStream()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/extractor/CustomSource;->readSampleData(Ljava/nio/ByteBuffer;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string/jumbo v1, "MediaExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not read sample "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    const-string/jumbo v1, "MediaExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not read sample "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/CustomSource;->release()V

    .line 38
    :cond_0
    return-void
.end method

.method public seekTo(JI)V
    .locals 5

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/customextractor/extractor/CustomSource;->seekTo(JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string/jumbo v1, "MediaExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Seek failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->selectTrack(I)V

    .line 92
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-direct {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    .line 47
    invoke-virtual {p0, p2}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSource(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSource(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Landroid/net/Uri;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->fileUri:Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->filePath:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p2}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSourceInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSource(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->filePath:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->fileUri:Landroid/net/Uri;

    .line 62
    invoke-direct {p0, p2}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSourceInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setTrackType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->setTrackType(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public unselectTrack(I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/MediaExtractor;->source:Lcom/adobe/customextractor/extractor/CustomSource;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/CustomSource;->deselectTrack(I)V

    .line 96
    return-void
.end method
