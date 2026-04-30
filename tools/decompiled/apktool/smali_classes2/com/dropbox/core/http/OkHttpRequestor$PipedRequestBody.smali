.class Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;
.super Lcom/squareup/okhttp/RequestBody;
.source "OkHttpRequestor.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 321
    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    .line 322
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->close()V

    .line 331
    return-void
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 340
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->writeTo(Le/i;)V

    .line 346
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->close()V

    .line 347
    return-void
.end method
