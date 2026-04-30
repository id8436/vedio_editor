.class final Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;
.super Ljava/io/OutputStream;
.source "DbxClientV1.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chunk:[B

.field private chunkPos:I

.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;

.field private uploadId:Ljava/lang/String;

.field private uploadOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1332
    const-class v0, Lcom/dropbox/core/v1/DbxClientV1;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1340
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1335
    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    .line 1341
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    .line 1342
    iput v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    .line 1343
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;ILcom/dropbox/core/v1/DbxClientV1$1;)V
    .locals 0

    .prologue
    .line 1332
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;-><init>(Lcom/dropbox/core/v1/DbxClientV1;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)I
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    return v0
.end method

.method static synthetic access$600(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)[B
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunk()V

    return-void
.end method

.method static synthetic access$800(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)J
    .locals 2

    .prologue
    .line 1332
    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    return-wide v0
.end method

.method private finishChunk()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    .line 1370
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    if-nez v0, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1376
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V

    invoke-static {v10, v0}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    .line 1381
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    .line 1405
    :goto_1
    iput v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    goto :goto_0

    .line 1383
    :cond_1
    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadId:Ljava/lang/String;

    move v1, v2

    .line 1388
    :goto_2
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;

    invoke-direct {v0, p0, v3, v1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;-><init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;Ljava/lang/String;I)V

    invoke-static {v10, v0}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1393
    iget-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 1394
    const-wide/16 v8, -0x1

    cmp-long v0, v4, v8

    if-nez v0, :cond_2

    .line 1396
    iput-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    goto :goto_1

    .line 1400
    :cond_2
    iget-wide v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->uploadOffset:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 1401
    add-int/2addr v0, v1

    move v1, v0

    .line 1403
    goto :goto_2
.end method

.method private finishChunkIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1361
    sget-boolean v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1362
    :cond_0
    iget v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 1363
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunk()V

    .line 1365
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1434
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    iget v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1351
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunkIfNecessary()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    return-void

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    new-instance v1, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw v1
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1412
    add-int v0, p2, p3

    .line 1414
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    array-length v1, v1

    iget v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    sub-int/2addr v1, v2

    .line 1416
    sub-int v2, v0, p2

    .line 1417
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1418
    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunk:[B

    iget v3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    iget v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->chunkPos:I

    .line 1420
    add-int/2addr p2, v1

    .line 1422
    :try_start_0
    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->finishChunkIfNecessary()V
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    new-instance v1, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v1/DbxClientV1$IODbxException;-><init>(Lcom/dropbox/core/DbxException;)V

    throw v1

    .line 1428
    :cond_0
    return-void
.end method
