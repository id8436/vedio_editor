.class public Lcom/google/android/exoplayer/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field public static final REJECT_PAYWALL_TYPES:Lcom/google/android/exoplayer/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HttpDataSource"


# instance fields
.field private bytesRead:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;

.field private final contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataLength:J

.field private dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/google/android/exoplayer/upstream/TransferListener;

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/exoplayer/upstream/HttpDataSource$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/upstream/HttpDataSource$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Lcom/google/android/exoplayer/util/Predicate;

    .line 130
    const-string/jumbo v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer/upstream/TransferListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f40

    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/HttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;II)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/util/Predicate",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer/upstream/TransferListener;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->userAgent:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    .line 186
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    .line 188
    iput p4, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connectTimeoutMillis:I

    .line 189
    iput p5, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->readTimeoutMillis:I

    .line 190
    return-void
.end method

.method private closeConnection()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    .line 352
    :cond_0
    return-void
.end method

.method private getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 9

    .prologue
    .line 415
    const-wide/16 v0, -0x1

    .line 416
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 424
    :cond_0
    :goto_0
    const-string/jumbo v2, "Content-Range"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    sget-object v2, Lcom/google/android/exoplayer/upstream/HttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    const/4 v3, 0x2

    .line 430
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    sub-long v2, v6, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 431
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    move-wide v0, v2

    .line 449
    :cond_1
    :goto_1
    return-wide v0

    .line 420
    :catch_0
    move-exception v2

    .line 421
    const-string/jumbo v2, "HttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected Content-Length ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_2
    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 440
    :try_start_2
    const-string/jumbo v6, "HttpDataSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Inconsistent headers ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "] ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 444
    :catch_1
    move-exception v2

    .line 445
    const-string/jumbo v2, "HttpDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected Content-Range ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeConnection(Lcom/google/android/exoplayer/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 388
    iget v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 389
    iget v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 390
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 391
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v3

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 393
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->setRangeHeader(Ljava/net/HttpURLConnection;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    .line 397
    const-string/jumbo v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 399
    return-object v0
.end method

.method private setRangeHeader(Ljava/net/HttpURLConnection;Lcom/google/android/exoplayer/upstream/DataSpec;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 403
    iget-wide v0, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-wide v2, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    iget-wide v4, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_1
    const-string/jumbo v1, "Range"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 4

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public clearAllRequestProperties()V
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 330
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 338
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->opened:Z

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->closeConnection()V

    .line 345
    :cond_2
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    :try_start_3
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->opened:Z

    if-eqz v1, :cond_4

    .line 338
    iput-boolean v3, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->opened:Z

    .line 339
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_3

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferEnd()V

    .line 342
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->closeConnection()V

    .line 344
    :cond_4
    throw v0
.end method

.method protected final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 244
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->makeConnection(Lcom/google/android/exoplayer/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 261
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_1

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 263
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->closeConnection()V

    .line 264
    new-instance v2, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer/util/Predicate;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->closeConnection()V

    .line 271
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    .line 275
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    .line 277
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->closeConnection()V

    .line 282
    new-instance v0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v1, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;

    iget-wide v4, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;-><init>(JJ)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v0

    .line 275
    :cond_3
    iget-wide v0, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    goto :goto_0

    .line 287
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->opened:Z

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onTransferStart()V

    .line 298
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    return-wide v0

    .line 288
    :catch_2
    move-exception v0

    .line 289
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->closeConnection()V

    .line 290
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .prologue
    .line 303
    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 310
    if-lez v0, :cond_1

    .line 311
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    .line 312
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->listener:Lcom/google/android/exoplayer/upstream/TransferListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    .line 322
    :cond_0
    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v1

    .line 315
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 318
    new-instance v0, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v1, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataLength:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->bytesRead:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;-><init>(JJ)V

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/HttpDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
