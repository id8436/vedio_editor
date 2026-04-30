.class public Lorg/mortbay/jetty/LocalConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "LocalConnector.java"


# instance fields
.field _accepting:Z

.field _endp:Lorg/mortbay/io/ByteArrayEndPoint;

.field _in:Lorg/mortbay/io/ByteArrayBuffer;

.field _keepOpen:Z

.field _out:Lorg/mortbay/io/ByteArrayBuffer;

.field _server:Lorg/mortbay/jetty/Server;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/LocalConnector;->setPort(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected accept(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 161
    move-object v0, v1

    .line 163
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/LocalConnector;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    monitor-enter p0

    .line 169
    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    if-nez v2, :cond_1

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    :try_start_1
    monitor-exit p0

    .line 203
    :cond_0
    return-void

    .line 176
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-nez v0, :cond_5

    .line 182
    :try_start_2
    new-instance v2, Lorg/mortbay/jetty/HttpConnection;

    iget-object v3, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {p0}, Lorg/mortbay/jetty/LocalConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lorg/mortbay/jetty/HttpConnection;-><init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 183
    :try_start_3
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/LocalConnector;->connectionOpened(Lorg/mortbay/jetty/HttpConnection;)V

    .line 185
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 186
    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 190
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    iget-boolean v2, p0, Lorg/mortbay/jetty/LocalConnector;->_keepOpen:Z

    if-nez v2, :cond_2

    .line 192
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/LocalConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    .line 193
    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    .line 196
    :cond_2
    monitor-enter p0

    .line 198
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 190
    throw v0

    .line 176
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 200
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 190
    :cond_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_keepOpen:Z

    if-nez v0, :cond_4

    .line 192
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/LocalConnector;->connectionClosed(Lorg/mortbay/jetty/HttpConnection;)V

    .line 193
    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    move-object v0, v1

    .line 196
    :goto_4
    monitor-enter p0

    .line 198
    const/4 v2, 0x0

    :try_start_7
    iput-boolean v2, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 190
    :catchall_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_4

    :cond_5
    move-object v2, v0

    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 56
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 57
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    return-void
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2000

    .line 75
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    .line 76
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    .line 77
    new-instance v0, Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-direct {v0}, Lorg/mortbay/io/ByteArrayEndPoint;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    .line 78
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 79
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setOut(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 80
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setGrowOutput(Z)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    .line 83
    invoke-super {p0}, Lorg/mortbay/jetty/AbstractConnector;->doStart()V

    .line 84
    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public getResponses(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/LocalConnector;->getResponses(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponses(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v1

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 103
    iget-object v2, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/io/ByteArrayBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 104
    iput-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    .line 105
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v2, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/ByteArrayBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    iput-boolean p2, p0, Lorg/mortbay/jetty/LocalConnector;->_keepOpen:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 115
    :goto_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayEndPoint;->getOut()Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    .line 121
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponses(Lorg/mortbay/io/ByteArrayBuffer;Z)Lorg/mortbay/io/ByteArrayBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->space()I

    move-result v0

    invoke-virtual {p1}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/mortbay/io/ByteArrayBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    .line 131
    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 132
    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    .line 133
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iput-boolean p2, p0, Lorg/mortbay/jetty/LocalConnector;->_keepOpen:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 143
    :goto_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayEndPoint;->getOut()Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    .line 149
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    return-object v0
.end method

.method protected newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public reopen()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 63
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->clear()V

    .line 64
    new-instance v0, Lorg/mortbay/io/ByteArrayEndPoint;

    invoke-direct {v0}, Lorg/mortbay/io/ByteArrayEndPoint;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    .line 65
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_in:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setIn(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 66
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/LocalConnector;->_out:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setOut(Lorg/mortbay/io/ByteArrayBuffer;)V

    .line 67
    iget-object v0, p0, Lorg/mortbay/jetty/LocalConnector;->_endp:Lorg/mortbay/io/ByteArrayEndPoint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/ByteArrayEndPoint;->setGrowOutput(Z)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/LocalConnector;->_accepting:Z

    .line 69
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/mortbay/jetty/AbstractConnector;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 49
    iput-object p1, p0, Lorg/mortbay/jetty/LocalConnector;->_server:Lorg/mortbay/jetty/Server;

    .line 50
    return-void
.end method
