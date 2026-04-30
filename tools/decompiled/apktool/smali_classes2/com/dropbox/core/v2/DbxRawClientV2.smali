.class public abstract Lcom/dropbox/core/v2/DbxRawClientV2;
.super Ljava/lang/Object;
.source "DbxRawClientV2.java"


# static fields
.field private static final JSON:Lcom/d/a/a/d;

.field private static final RAND:Ljava/util/Random;

.field public static final USER_AGENT_ID:Ljava/lang/String; = "OfficialDropboxJavaSDKv2"


# instance fields
.field private final host:Lcom/dropbox/core/DbxHost;

.field private final requestConfig:Lcom/dropbox/core/DbxRequestConfig;

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/d/a/a/d;

    invoke-direct {v0}, Lcom/d/a/a/d;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->JSON:Lcom/d/a/a/d;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->RAND:Ljava/util/Random;

    return-void
.end method

.method protected constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxHost;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestConfig"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 70
    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    .line 71
    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method private static executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_1
    :try_start_0
    invoke-interface {p1}, Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    if-ge v0, p0, :cond_1

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 294
    invoke-virtual {v1}, Lcom/dropbox/core/RetryException;->getBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dropbox/core/v2/DbxRawClientV2;->sleepQuietlyWithJitter(J)V

    goto :goto_1

    .line 296
    :cond_1
    throw v1
.end method

.method private static headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 211
    :try_start_0
    sget-object v1, Lcom/dropbox/core/v2/DbxRawClientV2;->JSON:Lcom/d/a/a/d;

    invoke-virtual {v1, v0}, Lcom/d/a/a/d;->a(Ljava/io/Writer;)Lcom/d/a/a/g;

    move-result-object v1

    .line 214
    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Lcom/d/a/a/g;->a(I)Lcom/d/a/a/g;

    .line 215
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 216
    invoke-virtual {v1}, Lcom/d/a/a/g;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string/jumbo v1, "Impossible"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static sleepQuietlyWithJitter(J)V
    .locals 4

    .prologue
    .line 305
    sget-object v0, Lcom/dropbox/core/v2/DbxRawClientV2;->RAND:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 306
    add-long/2addr v0, p0

    .line 308
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private static writeAsBytes(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;TT;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string/jumbo v1, "Impossible"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected abstract addAuthHeaders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TErrT;>;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<TResT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    if-nez p4, :cond_0

    .line 144
    invoke-virtual {p0, v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v5, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 147
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Dropbox-API-Arg"

    invoke-static {p6, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v0, 0x0

    new-array v4, v0, [B

    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v8

    new-instance v0, Lcom/dropbox/core/v2/DbxRawClientV2$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2$2;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    .line 195
    invoke-static {v0, v1}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->access$200(Lcom/dropbox/core/v2/DbxRawClientV2$2;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    .line 152
    invoke-static {v8, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxDownloader;

    return-object v0
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    return-object v0
.end method

.method public getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            "ResT:",
            "Ljava/lang/Object;",
            "ErrT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TArgT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TResT;>;",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TErrT;>;)TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p5, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->writeAsBytes(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)[B

    move-result-object v4

    .line 91
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 92
    if-nez p4, :cond_0

    .line 93
    invoke-virtual {p0, v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v5, v0}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 100
    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/json; charset=utf-8"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v8

    new-instance v0, Lcom/dropbox/core/v2/DbxRawClientV2$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2$1;-><init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V

    iget-object v1, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->userId:Ljava/lang/String;

    .line 129
    invoke-static {v0, v1}, Lcom/dropbox/core/v2/DbxRawClientV2$1;->access$100(Lcom/dropbox/core/v2/DbxRawClientV2$1;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    .line 102
    invoke-static {v8, v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->executeRetriable(ILcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ArgT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TArgT;Z",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TArgT;>;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    if-nez p4, :cond_0

    .line 233
    invoke-virtual {p0, v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->addAuthHeaders(Ljava/util/List;)V

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-static {v1, v2}, Lcom/dropbox/core/DbxRequestUtil;->addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;

    .line 236
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/octet-stream"

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    const-string/jumbo v3, "OfficialDropboxJavaSDKv2"

    invoke-static {v1, v2, v3}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 238
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v3, "Dropbox-API-Arg"

    invoke-static {p5, p3}, Lcom/dropbox/core/v2/DbxRawClientV2;->headerSafeJson(Lcom/dropbox/core/stone/StoneSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dropbox/core/http/HttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
