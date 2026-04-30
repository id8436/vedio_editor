.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;
.super Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;
.source "AdobeNetworkHttpMultiPartTask.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field static final L:Z = false

.field private static final T:Ljava/lang/String; = "MultiPartTask"


# instance fields
.field _boundaryID:Ljava/lang/String;

.field multiPartDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;-><init>()V

    return-void
.end method

.method private generateMultiPartMixedData(Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "--%s\r\n"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v0, "Content-Disposition: %s; "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getHttpFormFieldName()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string/jumbo v2, "name=\"%s\""

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    const-string/jumbo v2, "; filename=\"%s\""

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_1
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getContentID()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_3

    .line 178
    const-string/jumbo v2, "cid:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_2
    const-string/jumbo v2, "Content-ID: <%s>\r\n"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 186
    const-string/jumbo v2, "Content-Type: %s\r\n"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_4
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private issueProgressCallback(Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;II)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressCallback:Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData$OnProgressCallback;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->progressHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    return-void
.end method

.method private logNw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->call()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected captureInputStream()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->captureData(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 35
    return-void
.end method

.method public bridge synthetic init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    return-void
.end method

.method public init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->_boundaryID:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->multiPartDataList:Ljava/util/ArrayList;

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTask;->init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 45
    return-void
.end method

.method protected writeToOutputStream()Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->multiPartDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;

    .line 60
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "MultiPartTask"

    const-string/jumbo v5, "thread interrupted or cancelled."

    invoke-static {v0, v2, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->retryEnabled:Z

    move v0, v1

    .line 134
    :goto_1
    return v0

    .line 65
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getSourcePath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 68
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->_boundaryID:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->generateMultiPartMixedData(Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-direct {p0, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->logNw(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 77
    const v6, 0x8000

    new-array v9, v6, [B

    .line 80
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->available()I

    move-result v10

    .line 81
    const/4 v6, 0x0

    const v7, 0x8000

    invoke-virtual {v5, v9, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    move v7, v6

    move v6, v1

    .line 84
    :goto_3
    if-lez v7, :cond_5

    .line 85
    iget-object v11, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->requestHandler:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v11}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 86
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "MultiPartTask"

    const-string/jumbo v4, "thread interrupted or cancelled."

    invoke-static {v0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->retryEnabled:Z

    move v0, v1

    .line 88
    goto :goto_1

    .line 70
    :cond_3
    :try_start_4
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getSourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const v7, 0x8000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Error during io operation"

    invoke-static {v2, v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHasFileError(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->retryEnabled:Z

    move v0, v1

    .line 134
    goto/16 :goto_1

    .line 90
    :cond_4
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v3, v9, v11, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    add-int/2addr v6, v7

    .line 92
    const/4 v7, 0x0

    const v11, 0x8000

    invoke-virtual {v5, v9, v7, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .line 94
    invoke-direct {p0, v0, v6, v10}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->issueProgressCallback(Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;II)V

    goto :goto_3

    .line 124
    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_4

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setBytesSent(I)V

    .line 102
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    :cond_6
    :goto_5
    :try_start_7
    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 124
    :catch_2
    move-exception v0

    goto :goto_4

    .line 105
    :cond_7
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 106
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->_boundaryID:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->generateMultiPartMixedData(Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-direct {p0, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->logNw(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;->getData()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    .line 124
    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_6
    move-object v3, v2

    goto :goto_4

    .line 120
    :cond_8
    const-string/jumbo v0, "--%s--\r\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->_boundaryID:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 122
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->logNw(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 129
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->retryEnabled:Z

    move v0, v2

    .line 123
    goto/16 :goto_1

    .line 129
    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_7
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 130
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 131
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpMultiPartTask;->retryEnabled:Z

    .line 132
    throw v0

    .line 129
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v5

    goto :goto_7

    .line 124
    :catch_4
    move-exception v0

    move-object v3, v4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v3, v4

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v4, v5

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move-object v2, v4

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    goto :goto_6
.end method
