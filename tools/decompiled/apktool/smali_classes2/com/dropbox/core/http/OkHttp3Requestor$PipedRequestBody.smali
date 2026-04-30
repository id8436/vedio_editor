.class Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;
.super Ld/az;
.source "OkHttp3Requestor.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Ld/az;-><init>()V

    .line 334
    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    .line 335
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->close()V

    .line 344
    return-void
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 353
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Ld/an;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

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
    .line 358
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->writeTo(Le/i;)V

    .line 359
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->close()V

    .line 360
    return-void
.end method
