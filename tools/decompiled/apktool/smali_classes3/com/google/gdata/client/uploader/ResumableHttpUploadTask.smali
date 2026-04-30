.class Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;
.super Ljava/lang/Object;
.source "ResumableHttpUploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_LENGTH_HEADER_NAME:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_RANGE_HEADER_NAME:Ljava/lang/String; = "Content-Range"


# instance fields
.field private final resume:Z

.field private final uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

.field private final urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/uploader/UrlConnectionFactory;Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    .line 75
    iput-object p2, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    .line 76
    iput-boolean p3, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->resume:Z

    .line 77
    return-void
.end method

.method private getNextByteIndexFromRangeHeader(Ljava/lang/String;)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 119
    if-eqz p1, :cond_0

    const/16 v2, 0x2d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-wide v0

    .line 125
    :cond_1
    const-string/jumbo v2, "[0-9]+-[0-9]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 138
    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    .line 143
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 144
    iget-object v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    add-long v6, v2, v8

    invoke-virtual {v4, v6, v7}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setNumBytesUploaded(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-long v0, v2, v8

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getNextStartByteFromServer()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gdata/client/uploader/UrlConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getHttpRequestMethod()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "Content-Length"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x134

    if-eq v1, v2, :cond_0

    .line 103
    const-wide/16 v0, 0x0

    .line 106
    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v1, "Range"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextByteIndexFromRangeHeader(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setHeaders(Ljava/net/HttpURLConnection;JJ)V
    .locals 8

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getData()Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/client/uploader/UploadData;->length()J

    move-result-wide v0

    .line 162
    const-string/jumbo v2, "Content-Length"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    const-string/jumbo v0, "*/0"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "Content-Range"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-long v4, p2, p4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method

.method private upload()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 192
    iget-boolean v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->resume:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextStartByteFromServer()J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 194
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUploadState()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getData()Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/client/uploader/UploadData;->length()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getChunkSize()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 201
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/gdata/client/uploader/UrlConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 204
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 205
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getHttpRequestMethod()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object v0, p0

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->setHeaders(Ljava/net/HttpURLConnection;JJ)V

    .line 207
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object v7, p0

    move-wide v8, v2

    move-wide v10, v4

    .line 213
    :try_start_0
    invoke-virtual/range {v7 .. v12}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->writeSlice(JJLjava/io/OutputStream;)V

    .line 214
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 218
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 265
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    sget-object v4, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->COMPLETE:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    .line 266
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->sendCompletionNotification()V

    .line 267
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/client/uploader/BackoffPolicy;->reset()V

    .line 268
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;-><init>(ILjava/io/InputStream;)V

    .line 285
    :goto_2
    return-object v0

    .line 192
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 222
    :sswitch_0
    const-string/jumbo v0, "Range"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_4

    .line 224
    invoke-direct {p0, v0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextByteIndexFromRangeHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 230
    :goto_3
    const-string/jumbo v0, "Location"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_2

    .line 232
    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUrl(Ljava/net/URL;)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/client/uploader/BackoffPolicy;->reset()V
    :try_end_0
    .catch Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 271
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 274
    iget-object v2, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->isPaused()Z

    move-result v2

    if-nez v2, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextStartByteFromServer()J

    move-result-wide v0

    :cond_3
    move-wide v2, v0

    .line 281
    goto/16 :goto_1

    .line 226
    :cond_4
    add-long/2addr v2, v4

    goto :goto_3

    .line 240
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextStartByteFromServer()J

    move-result-wide v2

    .line 244
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    neg-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->addNumBytesUploaded(J)V
    :try_end_1
    .catch Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    :try_start_2
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/gdata/client/uploader/BackoffPolicy;->getNextBackoffMs()J

    move-result-wide v0

    .line 250
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 251
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->pause()V

    goto/16 :goto_1

    .line 255
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 253
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 277
    :catch_2
    move-exception v0

    .line 280
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    goto/16 :goto_1

    .line 285
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x134 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public call()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->upload()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->call()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method writeSlice(JJLjava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 307
    .line 315
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    .line 318
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getData()Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v2

    .line 319
    invoke-interface {v2, p1, p2}, Lcom/google/gdata/client/uploader/UploadData;->setPosition(J)V

    .line 321
    monitor-enter v2

    .line 322
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    array-length v0, v1

    int-to-long v4, v0

    cmp-long v0, p3, v4

    if-gez v0, :cond_2

    .line 326
    const/4 v0, 0x0

    long-to-int v3, p3

    invoke-interface {v2, v1, v0, v3}, Lcom/google/gdata/client/uploader/UploadData;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 333
    :goto_0
    if-gez v0, :cond_3

    .line 337
    cmp-long v0, p3, v6

    if-lez v0, :cond_1

    .line 338
    :try_start_1
    invoke-virtual {p5}, Ljava/io/OutputStream;->flush()V

    .line 339
    iget-object v0, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    .line 359
    return-void

    .line 328
    :cond_2
    const/4 v0, 0x0

    array-length v3, v1

    invoke-interface {v2, v1, v0, v3}, Lcom/google/gdata/client/uploader/UploadData;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 345
    :cond_3
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p5, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 346
    invoke-virtual {p5}, Ljava/io/OutputStream;->flush()V

    .line 347
    int-to-long v4, v0

    sub-long/2addr p3, v4

    .line 348
    iget-object v3, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->addNumBytesUploaded(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    :try_start_4
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;

    invoke-direct {v0, p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;)V

    throw v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
