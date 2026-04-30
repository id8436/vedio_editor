.class public Lcom/adobe/customextractor/extractor/CustomSource;
.super Ljava/lang/Object;
.source "CustomSource.java"

# interfaces
.implements Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;
.implements Lcom/adobe/customextractor/extractor/ExtractorOutput;


# static fields
.field private static final BUFFER_FRAGMENT_LENGTH:I = 0x40000

.field private static NO_RESET_PENDING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CustomSource"

.field private static requestedBufferSize:I


# instance fields
.field private allocator:Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;

.field private context:Landroid/content/Context;

.field private dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

.field private loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

.field private parser:Lcom/adobe/customextractor/extractor/Parser;

.field private prepared:Z

.field private sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

.field private sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/adobe/customextractor/Tracks/CustomTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTrackIndex:I

.field private sourcePath:Ljava/lang/String;

.field private sourceUri:Landroid/net/Uri;

.field private trackType:Ljava/lang/String;

.field private tracksBuilt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/high16 v0, 0x6400000

    sput v0, Lcom/adobe/customextractor/extractor/CustomSource;->requestedBufferSize:I

    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/adobe/customextractor/extractor/CustomSource;->NO_RESET_PENDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->context:Landroid/content/Context;

    .line 55
    const-string/jumbo v0, "Video"

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->trackType:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private clearSamples()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->clear()V

    .line 260
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method private haveFormatForAllTracks()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->hasFormat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :goto_1
    return v2

    .line 191
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private resetAtPositionUs(JI)V
    .locals 5

    .prologue
    .line 247
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/Parser;->seek()V

    .line 248
    invoke-direct {p0}, Lcom/adobe/customextractor/extractor/CustomSource;->clearSamples()V

    .line 249
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/customextractor/extractor/Parser;->getPosition(JI)J

    move-result-wide v0

    .line 250
    iget-object v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    iget v3, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->startLoadingAtOffset(JI)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Reset:LoaderDoesNotExist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSourceInternal()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string/jumbo v0, "CustomSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetSourceInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->trackType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/adobe/customextractor/DataSource/CustomDataSource;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->context:Landroid/content/Context;

    const-string/jumbo v2, "CustomSource"

    invoke-direct {v0, v1, v2}, Lcom/adobe/customextractor/DataSource/CustomDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

    .line 85
    new-instance v0, Lcom/adobe/customextractor/extractor/Parser;

    invoke-direct {v0}, Lcom/adobe/customextractor/extractor/Parser;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    .line 86
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    invoke-virtual {v0, p0}, Lcom/adobe/customextractor/extractor/Parser;->setExtractorOutput(Lcom/adobe/customextractor/extractor/ExtractorOutput;)V

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->allocator:Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;

    .line 89
    iput-boolean v3, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 90
    iput-boolean v3, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    .line 91
    new-instance v0, Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-direct {v0, v3}, Lcom/adobe/customextractor/Util/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    .line 92
    new-instance v0, Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    iget-object v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

    iget-object v3, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourceUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/adobe/customextractor/extractor/CustomSource;->allocator:Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;

    iget-object v5, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    iget-object v6, p0, Lcom/adobe/customextractor/extractor/CustomSource;->trackType:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;-><init>(Lcom/adobe/customextractor/SampleLoader/SampleLoader$LoaderCallback;Lcom/adobe/customextractor/DataSource/DataSource;Landroid/net/Uri;Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;Lcom/adobe/customextractor/extractor/Parser;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    .line 93
    return-void
.end method

.method private throwSourceException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public advance()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public builtTracks()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    .line 298
    return-void
.end method

.method public deselectTrack(I)V
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    if-ne p1, v0, :cond_0

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    .line 160
    :cond_0
    return-void
.end method

.method public getNativeTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->getFormat()Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/SampleHolder;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/CryptoInfo;->getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleFlags()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->flags:I

    return v0
.end method

.method public getSampleTime()J
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->timeUs:J

    return-wide v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 167
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 169
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->getFormat()Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackOutput(I)Lcom/adobe/customextractor/Tracks/TrackOutput;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->allocator:Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;-><init>(Lcom/adobe/customextractor/Util/Allocate/Allocator;)V

    .line 290
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    :cond_0
    return-object v0
.end method

.method public onLoaderRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "onLoaderRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/adobe/customextractor/extractor/CustomSource;->clearSamples()V

    .line 279
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->allocator:Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->trim(I)V

    .line 280
    iput-boolean v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 281
    iput-boolean v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    .line 282
    return-void
.end method

.method public prepare(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/customextractor/extractor/CustomSource;->prepare(JZ)Z

    move-result v0

    return v0
.end method

.method public prepare(JZ)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 101
    iget-boolean v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return v0

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/Parser;->seek()V

    .line 108
    :cond_1
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Opening data source"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/adobe/customextractor/extractor/CustomSource;->dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

    new-instance v0, Lcom/adobe/customextractor/DataSource/DataSpec;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourceUri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/adobe/customextractor/DataSource/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/adobe/customextractor/DataSource/CustomDataSource;->open(Lcom/adobe/customextractor/DataSource/DataSpec;)J

    move-result-wide v4

    .line 110
    cmp-long v0, v4, v10

    if-eqz v0, :cond_2

    .line 111
    add-long/2addr v4, p1

    .line 113
    :cond_2
    new-instance v0, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/customextractor/extractor/Input/CustomExtractorInput;-><init>(Lcom/adobe/customextractor/DataSource/DataSource;JJ)V

    .line 114
    const-string/jumbo v1, "CustomSource"

    const-string/jumbo v2, "Start Preparing parser"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    iget-object v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

    iget-object v3, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v3}, Lcom/adobe/customextractor/extractor/Parser;->prepare(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;Lcom/adobe/customextractor/DataSource/DataSource;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Prepared parser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 118
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->dataSource:Lcom/adobe/customextractor/DataSource/CustomDataSource;

    invoke-virtual {v0}, Lcom/adobe/customextractor/DataSource/CustomDataSource;->close()V

    .line 119
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Close data source"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->parser:Lcom/adobe/customextractor/extractor/Parser;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/adobe/customextractor/extractor/Parser;->getPosition(JI)J

    move-result-wide v0

    .line 123
    iget-object v2, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    iget v3, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->startLoadingAtOffset(JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    if-nez v0, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/adobe/customextractor/extractor/CustomSource;->throwSourceException()V

    .line 147
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    goto :goto_0

    .line 127
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 128
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Could not prepare parser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    iput-boolean v8, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 133
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Could not open datasource"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    .line 136
    iput-boolean v8, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 137
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Could not prepare parser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :catch_2
    move-exception v0

    .line 140
    iput-boolean v8, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    .line 141
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    if-nez v0, :cond_1

    .line 218
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/customextractor/extractor/CustomSource;->prepare(J)Z

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iput-object p1, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    .line 221
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 222
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    iget v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->getSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleHolder:Lcom/adobe/customextractor/Util/SampleHolder;

    iget v0, v0, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    .line 230
    :goto_0
    return v0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->isLoadingFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "ReadNextSample loader is Finished, eos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, -0x1

    goto :goto_0

    .line 229
    :cond_3
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "ReadNextSample: loader not finished, snf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->release()V

    .line 66
    :cond_0
    return-void
.end method

.method public seekTo(JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v0, "CustomSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Seek To "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->prepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->tracksBuilt:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sampleQueues:Landroid/util/SparseArray;

    iget v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/Tracks/CustomTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->loader:Lcom/adobe/customextractor/SampleLoader/SampleLoader;

    invoke-virtual {v0}, Lcom/adobe/customextractor/SampleLoader/SampleLoader;->stopLoading()V

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/customextractor/extractor/CustomSource;->resetAtPositionUs(JI)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string/jumbo v0, "CustomSource"

    const-string/jumbo v1, "Seek:Skipped to key frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->selectedTrackIndex:I

    .line 154
    return-void
.end method

.method public setSource(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourceUri:Landroid/net/Uri;

    .line 71
    iget-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourcePath:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/adobe/customextractor/extractor/CustomSource;->setSourceInternal()V

    .line 73
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourcePath:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourcePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/extractor/CustomSource;->sourceUri:Landroid/net/Uri;

    .line 79
    invoke-direct {p0}, Lcom/adobe/customextractor/extractor/CustomSource;->setSourceInternal()V

    .line 80
    return-void
.end method

.method public setTrackType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/CustomSource;->trackType:Ljava/lang/String;

    .line 60
    return-void
.end method
