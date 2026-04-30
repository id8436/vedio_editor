.class public final Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;
.super Ljava/lang/Object;
.source "OkHttp3Requestor.java"

# interfaces
.implements Ld/i;


# instance fields
.field private body:Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

.field private error:Ljava/io/IOException;

.field private response:Ld/bd;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->body:Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    .line 297
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->error:Ljava/io/IOException;

    .line 298
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->response:Ld/bd;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;Lcom/dropbox/core/http/OkHttp3Requestor$1;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getResponse()Ld/bd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->error:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->response:Ld/bd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 304
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 307
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->error:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->error:Ljava/io/IOException;

    throw v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->response:Ld/bd;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized onFailure(Ld/g;Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->error:Ljava/io/IOException;

    .line 319
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->body:Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->close()V

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ld/g;Ld/bd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->response:Ld/bd;

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
