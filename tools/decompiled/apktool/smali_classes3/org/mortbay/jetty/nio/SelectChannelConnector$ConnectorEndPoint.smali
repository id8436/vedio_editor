.class public Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;
.super Lorg/mortbay/io/nio/SelectChannelEndPoint;
.source "SelectChannelConnector.java"


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V

    .line 349
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->scheduleIdle()V

    .line 350
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    .line 355
    instance-of v0, v0, Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;

    .line 358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->reset()V

    .line 362
    :cond_0
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V

    .line 363
    return-void
.end method

.method public undispatch()V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    .line 369
    instance-of v0, v0, Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;

    .line 373
    if-eqz v0, :cond_1

    .line 376
    const-string/jumbo v1, "continuation {}"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->undispatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    .line 386
    :cond_2
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0
.end method
