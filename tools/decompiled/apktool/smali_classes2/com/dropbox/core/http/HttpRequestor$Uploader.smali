.class public abstract Lcom/dropbox/core/http/HttpRequestor$Uploader;
.super Ljava/lang/Object;
.source "HttpRequestor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract close()V
.end method

.method public abstract finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBody()Ljava/io/OutputStream;
.end method

.method public upload(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$ReadException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$WriteException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public upload(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 98
    :try_start_0
    invoke-static {p1, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method public upload(Ljava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1, p2, p3}, Lcom/dropbox/core/util/IOUtil;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload(Ljava/io/InputStream;)V

    .line 93
    return-void
.end method

.method public upload([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 107
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method
