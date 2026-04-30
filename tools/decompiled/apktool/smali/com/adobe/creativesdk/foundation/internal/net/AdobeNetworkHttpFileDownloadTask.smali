.class Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;
.super Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;
.source "AdobeNetworkHttpFileDownloadTask.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static T:Ljava/lang/String;


# instance fields
.field _destinationPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->T:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->_destinationPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected captureInputStream()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 51
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_5

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 57
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 59
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->_destinationPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->_destinationPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkFileUtils;->touch(Ljava/lang/String;)Z

    .line 68
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->_destinationPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const v6, 0x8000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 72
    const v1, 0x8000

    :try_start_2
    new-array v5, v1, [B

    move v1, v3

    .line 73
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 74
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 76
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 102
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 106
    :goto_1
    return-void

    .line 79
    :cond_1
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v2, v5, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    add-int/2addr v1, v3

    .line 81
    int-to-float v3, v1

    int-to-float v6, v4

    div-float/2addr v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->onProgressUpdate(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 89
    :goto_2
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "No space left on device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->_destinationPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 94
    :cond_2
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setNoStorageSpaceError(Z)V

    .line 95
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->T:Ljava/lang/String;

    const-string/jumbo v5, "No space left on device"

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :goto_3
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 84
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setBytesReceived(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v1, v2

    .line 102
    :goto_4
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 98
    :cond_4
    :try_start_6
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHasFileError(Z)V

    .line 99
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->T:Ljava/lang/String;

    const-string/jumbo v5, "Error during io operation"

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 102
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 103
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 104
    throw v0

    .line 102
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    .line 88
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method public init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 0

    .prologue
    .line 45
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileDownloadTask;->_destinationPath:Ljava/lang/String;

    .line 46
    invoke-super {p0, p1, p2, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 47
    return-void
.end method
