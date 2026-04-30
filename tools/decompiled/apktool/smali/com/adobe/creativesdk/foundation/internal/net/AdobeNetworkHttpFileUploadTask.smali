.class Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;
.super Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;
.source "AdobeNetworkHttpFileUploadTask.java"


# static fields
.field protected static final BUFFER_SIZE:I = 0x8000

.field private static T:Ljava/lang/String;


# instance fields
.field private _sourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->T:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->_sourcePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected captureInputStream()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->captureData(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 142
    return-void
.end method

.method public init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 0

    .prologue
    .line 46
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->_sourcePath:Ljava/lang/String;

    .line 47
    invoke-super {p0, p1, p2, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 48
    return-void
.end method

.method protected writeToOutputStream()Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 57
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 58
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->_sourcePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 60
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    long-to-int v4, v6

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 66
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "Content-Transfer-Encoding"

    const-string/jumbo v5, "binary"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v4, "Content-Length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 89
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->_sourcePath:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v8, 0x8000

    invoke-direct {v4, v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    const v2, 0x8000

    :try_start_2
    new-array v8, v2, [B

    .line 94
    const/4 v2, 0x0

    const v5, 0x8000

    invoke-virtual {v4, v8, v2, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    move v5, v2

    move v2, v0

    .line 97
    :goto_0
    if-lez v5, :cond_2

    .line 98
    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 101
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 133
    :goto_1
    return v0

    .line 104
    :cond_1
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v3, v8, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 105
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 106
    add-int/2addr v2, v5

    .line 107
    const/4 v5, 0x0

    const v9, 0x8000

    invoke-virtual {v4, v8, v5, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 108
    int-to-float v9, v2

    long-to-float v10, v6

    div-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->onProgressUpdate(Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    .line 118
    :goto_2
    :try_start_4
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error during io operation"

    invoke-static {v4, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHasFileError(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 129
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 114
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v5, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setBytesSent(I)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move v0, v1

    .line 115
    goto :goto_1

    .line 121
    :catch_1
    move-exception v1

    move-object v4, v2

    .line 122
    :goto_3
    :try_start_6
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error during io operation"

    invoke-static {v3, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHasFileError(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 124
    :catch_2
    move-exception v1

    move-object v4, v2

    .line 125
    :goto_4
    :try_start_7
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error during io operation"

    invoke-static {v3, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpFileUploadTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHasFileError(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 129
    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_5
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    throw v0

    .line 129
    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 124
    :catch_3
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_4

    .line 121
    :catch_5
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_3

    .line 117
    :catch_7
    move-exception v1

    move-object v3, v2

    goto/16 :goto_2

    :catch_8
    move-exception v1

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_2
.end method
