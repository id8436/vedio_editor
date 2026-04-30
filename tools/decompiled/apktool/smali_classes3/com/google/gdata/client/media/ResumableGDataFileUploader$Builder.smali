.class public Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;
.super Ljava/lang/Object;
.source "ResumableGDataFileUploader.java"


# instance fields
.field private chunkSize:J

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/google/gdata/client/uploader/ProgressListener;

.field private mediaEntry:Lcom/google/gdata/data/IEntry;

.field private mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

.field private mediaService:Lcom/google/gdata/client/media/MediaService;

.field private mediaTitle:Ljava/lang/String;

.field private mediaUrl:Ljava/net/URL;

.field private progressInterval:J

.field requestType:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/media/MediaService;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/data/IEntry;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-wide v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->DEFAULT_MAX_CHUNK_SIZE:J

    iput-wide v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->chunkSize:J

    .line 128
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->executor:Ljava/util/concurrent/ExecutorService;

    .line 134
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->progressInterval:J

    .line 137
    sget-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->INSERT:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    iput-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->requestType:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    .line 164
    iput-object p3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    .line 165
    iput-object p2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    .line 166
    iput-object p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/client/media/MediaService;Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/data/IEntry;)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-wide v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->DEFAULT_MAX_CHUNK_SIZE:J

    iput-wide v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->chunkSize:J

    .line 128
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->executor:Ljava/util/concurrent/ExecutorService;

    .line 134
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->progressInterval:J

    .line 137
    sget-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->INSERT:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    iput-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->requestType:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    .line 149
    iput-object p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    .line 150
    iput-object p2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaUrl:Ljava/net/URL;

    .line 151
    iput-object p3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    .line 152
    iput-object p4, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    .line 153
    return-void
.end method


# virtual methods
.method public build()Lcom/google/gdata/client/media/ResumableGDataFileUploader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaUrl:Ljava/net/URL;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(Z)V

    .line 239
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    invoke-static {v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    invoke-static {v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$1;->$SwitchMap$com$google$gdata$client$media$ResumableGDataFileUploader$RequestType:[I

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->requestType:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    invoke-virtual {v3}, Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v1, v10

    .line 269
    :goto_1
    new-instance v0, Lcom/google/gdata/client/media/ResumableGDataFileUploader;

    iget-object v2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    iget-wide v4, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->chunkSize:J

    iget-object v6, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->listener:Lcom/google/gdata/client/uploader/ProgressListener;

    iget-wide v8, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->progressInterval:J

    invoke-direct/range {v0 .. v10}, Lcom/google/gdata/client/media/ResumableGDataFileUploader;-><init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;JLcom/google/gdata/client/media/ResumableGDataFileUploader$1;)V

    .line 274
    const-string/jumbo v1, "Content-Type"

    iget-object v2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    invoke-virtual {v2}, Lcom/google/gdata/data/media/MediaFileSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    return-object v0

    :cond_1
    move v0, v1

    .line 238
    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    iget-object v1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaUrl:Ljava/net/URL;

    iget-object v2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/client/media/MediaService;->createResumableUploadSession(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaFileSource;)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    iget-object v1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaUrl:Ljava/net/URL;

    iget-object v2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/gdata/client/media/MediaService;->createResumableUploadSession(Ljava/net/URL;Ljava/lang/String;Lcom/google/gdata/data/media/MediaFileSource;)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    invoke-interface {v3}, Lcom/google/gdata/data/IEntry;->getResumableEditMediaLink()Lcom/google/gdata/data/ILink;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/gdata/data/ILink;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    iget-object v4, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/gdata/client/media/MediaService;->createResumableUpdateSession(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaFileSource;Z)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    .line 260
    :pswitch_2
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    if-eqz v0, :cond_3

    .line 261
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    invoke-interface {v1}, Lcom/google/gdata/data/IEntry;->getResumableEditMediaLink()Lcom/google/gdata/data/ILink;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/gdata/data/ILink;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaUrl:Ljava/net/URL;

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaService:Lcom/google/gdata/client/media/MediaService;

    iget-object v1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaUrl:Ljava/net/URL;

    iget-object v3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaEntry:Lcom/google/gdata/data/IEntry;

    iget-object v4, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaFile:Lcom/google/gdata/data/media/MediaFileSource;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/gdata/client/media/MediaService;->createResumableUpdateSession(Ljava/net/URL;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/media/MediaFileSource;Z)Ljava/net/URL;

    move-result-object v1

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public chunkSize(J)Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;
    .locals 1

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->chunkSize:J

    .line 189
    return-object p0
.end method

.method public executor(Ljava/util/concurrent/ExecutorService;)Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->executor:Ljava/util/concurrent/ExecutorService;

    .line 200
    return-object p0
.end method

.method public requestType(Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;)Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->requestType:Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;

    .line 226
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->mediaTitle:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public trackProgress(Lcom/google/gdata/client/uploader/ProgressListener;J)Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->listener:Lcom/google/gdata/client/uploader/ProgressListener;

    .line 214
    iput-wide p2, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;->progressInterval:J

    .line 215
    return-object p0
.end method
