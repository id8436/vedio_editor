.class public final Lcom/dropbox/core/v1/DbxClientV1;
.super Ljava/lang/Object;
.source "DbxClientV1.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ChunkedUploadChunkSize:I = 0x400000

.field private static final ChunkedUploadThreshold:J = 0x800000L

.field private static LatestCursorReader:Lcom/dropbox/core/json/JsonReader; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_AGENT_ID:Ljava/lang/String; = "Dropbox-Java-SDK"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final host:Lcom/dropbox/core/DbxHost;

.field private final requestConfig:Lcom/dropbox/core/DbxRequestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/dropbox/core/v1/DbxClientV1;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/v1/DbxClientV1;->$assertionsDisabled:Z

    .line 1673
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$11;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxClientV1$11;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxClientV1;->LatestCursorReader:Lcom/dropbox/core/json/JsonReader;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v1/DbxClientV1;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'requestConfig\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'accessToken\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'host\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 69
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    .line 71
    return-void
.end method

.method private _getDelta(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1573
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 1574
    const-string/jumbo v2, "1/delta"

    .line 1576
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "cursor"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "path_prefix"

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object p2, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "include_media_info"

    aput-object v5, v3, v0

    const/4 v5, 0x5

    if-eqz p3, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v3, v5

    .line 1582
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$8;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$8;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxDelta;

    return-object v0

    :cond_0
    move-object v0, v4

    .line 1576
    goto :goto_0
.end method

.method private _getDeltaC(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1596
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 1597
    const-string/jumbo v2, "1/delta"

    .line 1599
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "cursor"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "path_prefix"

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object p3, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "include_media_info"

    aput-object v5, v3, v0

    const/4 v5, 0x5

    if-eqz p4, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v3, v5

    .line 1605
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$9;

    invoke-direct {v5, p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$9;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Lcom/dropbox/core/util/Collector;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxDeltaC;

    return-object v0

    :cond_0
    move-object v0, v4

    .line 1599
    goto :goto_0
.end method

.method private _getDeltaLatestCursor(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1656
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 1657
    const-string/jumbo v2, "1/delta/latest_cursor"

    .line 1659
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "path_prefix"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "include_media_info"

    aput-object v5, v3, v0

    const/4 v5, 0x3

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v3, v5

    .line 1664
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$10;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$10;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    move-object v0, v4

    .line 1659
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/dropbox/core/v1/DbxClientV1;)Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v1/DbxClientV1;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/dropbox/core/json/JsonReader;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/v1/DbxClientV1;->LatestCursorReader:Lcom/dropbox/core/json/JsonReader;

    return-object v0
.end method

.method private chunkedUploadCheckForOffsetCorrection(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x190

    .line 973
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    .line 978
    :goto_0
    return-object v0

    .line 975
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->loadErrorBody(Lcom/dropbox/core/http/HttpRequestor$Response;)[B

    move-result-object v1

    .line 978
    :try_start_0
    sget-object v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReader;->readFully([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 980
    :catch_0
    move-exception v0

    .line 982
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    .line 983
    new-instance v2, Lcom/dropbox/core/BadRequestException;

    invoke-static {v0, v3, v1}, Lcom/dropbox/core/DbxRequestUtil;->parseErrorBody(Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private chunkedUploadCommon([Ljava/lang/String;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">([",
            "Ljava/lang/String;",
            "J",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 933
    const-string/jumbo v4, "1/chunked_upload"

    .line 935
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 936
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/octet-stream"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Length"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    const-string/jumbo v2, "Dropbox-Java-SDK"

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v3}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v3

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startPut(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v1

    .line 941
    :try_start_0
    new-instance v0, Lcom/dropbox/core/NoThrowOutputStream;

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dropbox/core/NoThrowOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    :try_start_1
    invoke-virtual {p4, v0}, Lcom/dropbox/core/DbxStreamWriter;->write(Lcom/dropbox/core/NoThrowOutputStream;)V
    :try_end_1
    .catch Lcom/dropbox/core/NoThrowOutputStream$HiddenException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    :try_start_2
    invoke-virtual {v0}, Lcom/dropbox/core/NoThrowOutputStream;->getBytesWritten()J

    move-result-wide v2

    .line 954
    cmp-long v0, v2, p2

    if-eqz v0, :cond_1

    .line 955
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'chunkSize\' is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", but \'writer\' only wrote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    throw v0

    .line 948
    :catch_0
    move-exception v2

    .line 949
    :try_start_3
    iget-object v3, v2, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;->owner:Lcom/dropbox/core/NoThrowOutputStream;

    if-ne v3, v0, :cond_0

    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-virtual {v2}, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 950
    :cond_0
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 959
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 966
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    .line 959
    return-object v0

    .line 961
    :catch_1
    move-exception v0

    .line 962
    :try_start_5
    new-instance v2, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v2, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private chunkedUploadParse200(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/BadResponseException;,
            Lcom/dropbox/core/NetworkIOException;
        }
    .end annotation

    .prologue
    .line 990
    sget-boolean v0, Lcom/dropbox/core/v1/DbxClientV1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 991
    :cond_0
    sget-object v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    return-object v0
.end method

.method private doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    const-string/jumbo v2, "Dropbox-Java-SDK"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/dropbox/core/DbxRequestUtil;->doGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getMetadataWithChildrenBase(Ljava/lang/String;ZLcom/dropbox/core/json/JsonReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/json/JsonReader",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 223
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1/metadata/auto"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "list"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v5, "true"

    aput-object v5, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "file_limit"

    aput-object v5, v3, v0

    const/4 v0, 0x3

    const-string/jumbo v5, "25000"

    aput-object v5, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "include_media_info"

    aput-object v5, v3, v0

    const/4 v5, 0x5

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v3, v5

    .line 234
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$2;

    invoke-direct {v5, p0, p3}, Lcom/dropbox/core/v1/DbxClientV1$2;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Lcom/dropbox/core/json/JsonReader;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v4

    .line 228
    goto :goto_0
.end method

.method private getMetadataWithChildrenIfChangedBase(Ljava/lang/String;ZLjava/lang/String;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/util/Maybe;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TT;>;)",
            "Lcom/dropbox/core/util/Maybe",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 316
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'previousFolderHash\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'previousFolderHash\' must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1/metadata/auto"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "list"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v5, "true"

    aput-object v5, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "file_limit"

    aput-object v5, v3, v0

    const/4 v0, 0x3

    const-string/jumbo v5, "25000"

    aput-object v5, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "hash"

    aput-object v5, v3, v0

    const/4 v0, 0x5

    aput-object p3, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v5, "include_media_info"

    aput-object v5, v3, v0

    const/4 v5, 0x7

    if-eqz p2, :cond_2

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v3, v5

    .line 330
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$3;

    invoke-direct {v5, p0, p4}, Lcom/dropbox/core/v1/DbxClientV1$3;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Lcom/dropbox/core/json/JsonReader;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/util/Maybe;

    return-object v0

    :cond_2
    move-object v0, v4

    .line 323
    goto :goto_0
.end method

.method private startGetSomething(Ljava/lang/String;[Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    invoke-virtual {v1}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v1

    new-instance v2, Lcom/dropbox/core/v1/DbxClientV1$6;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1$6;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    return-object v0
.end method


# virtual methods
.method public chunkedUploadAppend(Ljava/lang/String;JJLcom/dropbox/core/DbxStreamWriter;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)J^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1136
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'uploadId\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'uploadId\' can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'offset\' can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "upload_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "offset"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 1142
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1144
    invoke-direct {p0, v0, p4, p5, p6}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadCommon([Ljava/lang/String;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v2

    .line 1145
    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    :try_start_0
    invoke-direct {p0, v2}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadCheckForOffsetCorrection(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    move-result-object v1

    .line 1148
    add-long v4, p2, p4

    .line 1150
    if-eqz v1, :cond_8

    .line 1151
    iget-object v3, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->uploadId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1152
    new-instance v3, Lcom/dropbox/core/BadResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadId mismatch: us="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", server="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->uploadId:Ljava/lang/String;

    .line 1153
    invoke-static {v1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v0

    .line 1156
    :cond_3
    :try_start_1
    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    cmp-long v3, v6, p2

    if-nez v3, :cond_4

    .line 1157
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corrected offset is same as given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_4
    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    cmp-long v3, v6, p2

    if-gez v3, :cond_5

    .line 1162
    new-instance v3, Lcom/dropbox/core/BadResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "we were at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", server said "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1165
    :cond_5
    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_6

    .line 1167
    new-instance v3, Lcom/dropbox/core/BadResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "we were at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", server said "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1171
    :cond_6
    sget-boolean v0, Lcom/dropbox/core/v1/DbxClientV1;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1173
    :cond_7
    iget-wide v0, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    .line 1183
    :goto_0
    return-wide v0

    .line 1176
    :cond_8
    :try_start_2
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_9

    invoke-static {v2}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 1177
    :cond_9
    invoke-direct {p0, v2}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadParse200(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    move-result-object v1

    .line 1179
    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_a

    .line 1180
    new-instance v3, Lcom/dropbox/core/BadResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes, but returned offset is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1183
    :cond_a
    const-wide/16 v0, -0x1

    .line 1186
    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public chunkedUploadAppend(Ljava/lang/String;J[B)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v5, 0x0

    array-length v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadAppend(Ljava/lang/String;J[BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public chunkedUploadAppend(Ljava/lang/String;J[BII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1106
    int-to-long v4, p6

    new-instance v6, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;

    invoke-direct {v6, p4, p5, p6}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadAppend(Ljava/lang/String;JJLcom/dropbox/core/DbxStreamWriter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public chunkedUploadFinish(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1208
    const-string/jumbo v0, "targetPath"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/commit_chunked_upload/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "upload_id"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 1215
    iget-object v1, p2, Lcom/dropbox/core/v1/DbxWriteMode;->params:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dropbox/core/util/LangUtil;->arrayConcat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1217
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$7;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$7;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    return-object v0
.end method

.method public chunkedUploadFirst(ILcom/dropbox/core/DbxStreamWriter;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(I",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Ljava/lang/String;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1039
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadCommon([Ljava/lang/String;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v1

    .line 1041
    :try_start_0
    invoke-direct {p0, v1}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadCheckForOffsetCorrection(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    move-result-object v0

    .line 1042
    if-eqz v0, :cond_0

    .line 1043
    invoke-static {v1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    const-string/jumbo v3, "Got offset correction response on first chunk."

    invoke-direct {v2, v0, v3}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v0

    .line 1047
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 1048
    invoke-static {v1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    const-string/jumbo v3, "Got a 404, but we didn\'t send an upload_id"

    invoke-direct {v2, v0, v3}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1052
    :cond_1
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    invoke-static {v1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 1053
    :cond_2
    invoke-direct {p0, v1}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadParse200(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    move-result-object v0

    .line 1055
    iget-wide v2, v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1056
    invoke-static {v1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v2

    .line 1057
    new-instance v3, Lcom/dropbox/core/BadResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes, but returned offset is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->offset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 1060
    :cond_3
    iget-object v0, v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;->uploadId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    .line 1060
    return-object v0
.end method

.method public chunkedUploadFirst([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1001
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadFirst([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunkedUploadFirst([BII)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    invoke-virtual {p0, p3, v0}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadFirst(ILcom/dropbox/core/DbxStreamWriter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2070
    const-string/jumbo v0, "fromPath"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string/jumbo v0, "toPath"

    invoke-static {v0, p2}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "root"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "auto"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "from_path"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "to_path"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    aput-object p2, v3, v0

    .line 2079
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1/fileops/copy"

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$19;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$19;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry;

    return-object v0
.end method

.method public copyFromCopyRef(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2100
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'copyRef\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'copyRef\' can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2102
    :cond_1
    const-string/jumbo v0, "toPath"

    invoke-static {v0, p2}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "root"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "auto"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "from_copy_ref"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "to_path"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    aput-object p2, v3, v0

    .line 2110
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1/fileops/copy"

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$20;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$20;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry;

    return-object v0
.end method

.method public createCopyRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1991
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/copy_ref/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1995
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$18;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$18;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public createFolder(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry$Folder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2134
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "root"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "auto"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "path"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 2141
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1/fileops/create_folder"

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$21;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$21;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$Folder;

    return-object v0
.end method

.method public createShareableUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1919
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/shares/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1922
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "short_url"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "false"

    aput-object v1, v3, v0

    .line 1924
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$16;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$16;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public createTemporaryDirectUrl(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxUrlWithExpiration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1951
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/media/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1955
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$17;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$17;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxUrlWithExpiration;

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2159
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "root"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "auto"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "path"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 2166
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1/fileops/delete"

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$22;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$22;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    .line 2175
    return-void
.end method

.method public disableAccessToken()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string/jumbo v2, "1/disable_access_token"

    .line 380
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$5;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$5;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    const-string/jumbo v2, "Dropbox-Java-SDK"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/dropbox/core/DbxRequestUtil;->doPost(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finishUploadFile(Lcom/dropbox/core/v1/DbxClientV1$Uploader;Lcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/dropbox/core/v1/DbxClientV1$Uploader;",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v1, Lcom/dropbox/core/NoThrowOutputStream;

    invoke-virtual {p1}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/NoThrowOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 717
    :try_start_0
    invoke-virtual {p2, v1}, Lcom/dropbox/core/DbxStreamWriter;->write(Lcom/dropbox/core/NoThrowOutputStream;)V

    .line 718
    invoke-virtual {p1}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;->finish()Lcom/dropbox/core/v1/DbxEntry$File;
    :try_end_0
    .catch Lcom/dropbox/core/NoThrowOutputStream$HiddenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 725
    invoke-virtual {p1}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;->close()V

    .line 718
    return-object v0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    :try_start_1
    iget-object v2, v0, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;->owner:Lcom/dropbox/core/NoThrowOutputStream;

    if-ne v2, v1, :cond_0

    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-virtual {v0}, Lcom/dropbox/core/NoThrowOutputStream$HiddenException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;->close()V

    throw v0

    .line 722
    :cond_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountInfo()Lcom/dropbox/core/v1/DbxAccountInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string/jumbo v2, "1/account/info"

    .line 355
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$4;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$4;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxAccountInfo;

    return-object v0
.end method

.method public getDelta(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getDelta(Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;

    move-result-object v0

    return-object v0
.end method

.method public getDelta(Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1482
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/core/v1/DbxClientV1;->_getDelta(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaC(Lcom/dropbox/core/util/Collector;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;TC;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getDeltaC(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaC(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;TC;>;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1502
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/core/v1/DbxClientV1;->_getDeltaC(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaCWithPathPrefix(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getDeltaCWithPathPrefix(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaCWithPathPrefix(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;TC;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1555
    const-string/jumbo v0, "path"

    invoke-static {v0, p3}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->_getDeltaC(Lcom/dropbox/core/util/Collector;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDeltaC;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaLatestCursor()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1629
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dropbox/core/v1/DbxClientV1;->_getDeltaLatestCursor(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaLatestCursor(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1620
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/dropbox/core/v1/DbxClientV1;->_getDeltaLatestCursor(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaLatestCursorWithPathPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getDeltaLatestCursorWithPathPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaLatestCursorWithPathPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1641
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1;->_getDeltaLatestCursor(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaWithPathPrefix(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1542
    const-string/jumbo v0, "path"

    invoke-static {v0, p2}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v1/DbxClientV1;->_getDelta(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaWithPathPrefix(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/dropbox/core/v1/DbxDelta",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1531
    const-string/jumbo v0, "path"

    invoke-static {v0, p2}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v1/DbxClientV1;->_getDelta(Ljava/lang/String;Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxDelta;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v1/DbxClientV1;->startGetFile(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    move-result-object v0

    .line 426
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p3}, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->copyBodyAndClose(Ljava/io/OutputStream;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Lcom/dropbox/core/DbxHost;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    return-object v0
.end method

.method public getLongpollDelta(Ljava/lang/String;I)Lcom/dropbox/core/v1/DbxLongpollDeltaResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1715
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'cursor\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_0
    const/16 v0, 0x1e

    if-lt p2, v0, :cond_1

    const/16 v0, 0x1e0

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'timeout\' must be >=30 and <= 480"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1717
    :cond_2
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "cursor"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p1, v5, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "timeout"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    .line 1719
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1723
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1;->getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    .line 1724
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Dropbox-Java-SDK"

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    .line 1726
    invoke-virtual {v3}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1/longpoll_delta"

    const/4 v6, 0x0

    new-instance v7, Lcom/dropbox/core/v1/DbxClientV1$12;

    invoke-direct {v7, p0}, Lcom/dropbox/core/v1/DbxClientV1$12;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    .line 1722
    invoke-static/range {v0 .. v7}, Lcom/dropbox/core/DbxRequestUtil;->doGet(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxLongpollDeltaResult;

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadata(Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxEntry;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1/metadata/auto"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "list"

    aput-object v5, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v5, "false"

    aput-object v5, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "include_media_info"

    aput-object v5, v3, v0

    const/4 v5, 0x3

    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    aput-object v0, v3, v5

    .line 127
    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$1;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry;

    return-object v0

    :cond_0
    move-object v0, v4

    .line 122
    goto :goto_0
.end method

.method public getMetadataWithChildren(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry$WithChildren;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildren(Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataWithChildren(Ljava/lang/String;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildren;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenBase(Ljava/lang/String;ZLcom/dropbox/core/json/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;

    return-object v0
.end method

.method public getMetadataWithChildrenC(Ljava/lang/String;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenC(Ljava/lang/String;ZLcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataWithChildrenC(Ljava/lang/String;ZLcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;

    invoke-direct {v0, p3}, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;-><init>(Lcom/dropbox/core/util/Collector;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenBase(Ljava/lang/String;ZLcom/dropbox/core/json/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    return-object v0
.end method

.method public getMetadataWithChildrenIfChanged(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/util/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/util/Maybe",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildren;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenIfChanged(Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataWithChildrenIfChanged(Ljava/lang/String;ZLjava/lang/String;)Lcom/dropbox/core/util/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/util/Maybe",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildren;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$WithChildren;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenIfChangedBase(Ljava/lang/String;ZLjava/lang/String;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataWithChildrenIfChangedC(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/util/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/util/Maybe",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenIfChangedC(Ljava/lang/String;ZLjava/lang/String;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataWithChildrenIfChangedC(Ljava/lang/String;ZLjava/lang/String;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/util/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/util/Maybe",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;

    invoke-direct {v0, p4}, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;-><init>(Lcom/dropbox/core/util/Collector;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxClientV1;->getMetadataWithChildrenIfChangedBase(Ljava/lang/String;ZLjava/lang/String;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/util/Maybe;

    move-result-object v0

    return-object v0
.end method

.method public getRequestConfig()Lcom/dropbox/core/DbxRequestConfig;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    return-object v0
.end method

.method public getRevisions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1817
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/revisions/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1821
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$13;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$13;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getThumbnail(Lcom/dropbox/core/v1/DbxThumbnailSize;Lcom/dropbox/core/v1/DbxThumbnailFormat;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1773
    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'target\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1775
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startGetThumbnail(Lcom/dropbox/core/v1/DbxThumbnailSize;Lcom/dropbox/core/v1/DbxThumbnailFormat;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    move-result-object v0

    .line 1776
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1777
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p5}, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->copyBodyAndClose(Ljava/io/OutputStream;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    goto :goto_0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2187
    const-string/jumbo v0, "fromPath"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    const-string/jumbo v0, "toPath"

    invoke-static {v0, p2}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "root"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "auto"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "from_path"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "to_path"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    aput-object p2, v3, v0

    .line 2196
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1/fileops/move"

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$23;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$23;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry;

    return-object v0
.end method

.method public restoreFile(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1851
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'rev\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1853
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'rev\' can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1855
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/restore/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1856
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "rev"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    .line 1860
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$14;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$14;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doGet(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    return-object v0
.end method

.method public searchFileAndFolderNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1885
    const-string/jumbo v0, "basePath"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'query\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1887
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'query\' can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/search/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1890
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "query"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    .line 1892
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Lcom/dropbox/core/v1/DbxClientV1$15;

    invoke-direct {v5, p0}, Lcom/dropbox/core/v1/DbxClientV1$15;-><init>(Lcom/dropbox/core/v1/DbxClientV1;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->doPost(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public startGetFile(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 460
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/files/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "rev"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/dropbox/core/v1/DbxClientV1;->startGetSomething(Ljava/lang/String;[Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    move-result-object v0

    return-object v0
.end method

.method public startGetThumbnail(Lcom/dropbox/core/v1/DbxThumbnailSize;Lcom/dropbox/core/v1/DbxThumbnailFormat;Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1788
    const-string/jumbo v0, "path"

    invoke-static {v0, p3}, Lcom/dropbox/core/v1/DbxPathV1;->checkArgNonRoot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'size\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'format\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1792
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/thumbnails/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1793
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "size"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/dropbox/core/v1/DbxThumbnailSize;->ident:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "format"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/dropbox/core/v1/DbxThumbnailFormat;->ident:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "rev"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p4, v1, v2

    .line 1799
    invoke-direct {p0, v0, v1}, Lcom/dropbox/core/v1/DbxClientV1;->startGetSomething(Ljava/lang/String;[Ljava/lang/String;)Lcom/dropbox/core/v1/DbxClientV1$Downloader;

    move-result-object v0

    return-object v0
.end method

.method public startUploadFile(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 695
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 696
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numBytes must be -1 or greater; given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileChunked(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    .line 708
    :goto_0
    return-object v0

    .line 702
    :cond_1
    const-wide/32 v0, 0x800000

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 704
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileChunked(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    goto :goto_0
.end method

.method public startUploadFileChunked(ILjava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1240
    const-string/jumbo v0, "targetPath"

    invoke-static {v0, p2}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'writeMode\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_0
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;

    new-instance v6, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-direct {v6, p0, p1, v7}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;-><init>(Lcom/dropbox/core/v1/DbxClientV1;ILcom/dropbox/core/v1/DbxClientV1$1;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;Lcom/dropbox/core/v1/DbxClientV1$1;)V

    return-object v0
.end method

.method public startUploadFileChunked(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;
    .locals 7

    .prologue
    .line 1232
    const/high16 v1, 0x400000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileChunked(ILjava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    return-object v0
.end method

.method public startUploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 739
    const-string/jumbo v0, "targetPath"

    invoke-static {v0, p1}, Lcom/dropbox/core/v1/DbxPathV1;->checkArg(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "numBytes must be zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->host:Lcom/dropbox/core/DbxHost;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1/files_put/auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 745
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 746
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/octet-stream"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v1, "Content-Length"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1;->accessToken:Ljava/lang/String;

    const-string/jumbo v2, "Dropbox-Java-SDK"

    iget-object v5, p2, Lcom/dropbox/core/v1/DbxWriteMode;->params:[Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->startPut(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 751
    new-instance v1, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;

    invoke-direct {v1, v0, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;J)V

    return-object v1
.end method

.method public uploadFile(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v1/DbxWriteMode;",
            "J",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFile(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    .line 651
    invoke-virtual {p0, v0, p5}, Lcom/dropbox/core/v1/DbxClientV1;->finishUploadFile(Lcom/dropbox/core/v1/DbxClientV1$Uploader;Lcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLjava/io/InputStream;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    new-instance v6, Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;

    invoke-direct {v6, p5}, Lcom/dropbox/core/DbxStreamWriter$InputStreamCopier;-><init>(Ljava/io/InputStream;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->uploadFile(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method

.method public uploadFileChunked(ILjava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(I",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v1/DbxWriteMode;",
            "J",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1262
    invoke-virtual/range {p0 .. p5}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileChunked(ILjava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    .line 1263
    invoke-virtual {p0, v0, p6}, Lcom/dropbox/core/v1/DbxClientV1;->finishUploadFile(Lcom/dropbox/core/v1/DbxClientV1$Uploader;Lcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method

.method public uploadFileChunked(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v1/DbxWriteMode;",
            "J",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileChunked(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    .line 1253
    invoke-virtual {p0, v0, p5}, Lcom/dropbox/core/v1/DbxClientV1;->finishUploadFile(Lcom/dropbox/core/v1/DbxClientV1$Uploader;Lcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method

.method public uploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v1/DbxWriteMode;",
            "J",
            "Lcom/dropbox/core/DbxStreamWriter",
            "<TE;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$File;",
            "^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v1/DbxClientV1;->startUploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;J)Lcom/dropbox/core/v1/DbxClientV1$Uploader;

    move-result-object v0

    .line 758
    invoke-virtual {p0, v0, p5}, Lcom/dropbox/core/v1/DbxClientV1;->finishUploadFile(Lcom/dropbox/core/v1/DbxClientV1$Uploader;Lcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method
