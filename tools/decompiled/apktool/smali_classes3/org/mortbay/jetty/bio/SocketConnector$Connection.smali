.class public Lorg/mortbay/jetty/bio/SocketConnector$Connection;
.super Lorg/mortbay/io/bio/SocketEndPoint;
.source "SocketConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field _connection:Lorg/mortbay/jetty/HttpConnection;

.field _dispatched:Z

.field protected _socket:Ljava/net/Socket;

.field _sotimeout:I

.field private final this$0:Lorg/mortbay/jetty/bio/SocketConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/bio/SocketConnector;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    .line 181
    invoke-direct {p0, p2}, Lorg/mortbay/io/bio/SocketEndPoint;-><init>(Ljava/net/Socket;)V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_dispatched:Z

    .line 182
    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/bio/SocketConnector;->newHttpConnection(Lorg/mortbay/io/EndPoint;)Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 183
    invoke-virtual {p2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    .line 184
    iput-object p2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    .line 185
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mortbay/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    const-string/jumbo v0, "dispatch failed for {}"

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V

    .line 194
    :cond_1
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-super {p0, p1}, Lorg/mortbay/io/bio/SocketEndPoint;->fill(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 199
    if-gez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V

    .line 201
    :cond_0
    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->access$000(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 209
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 211
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getThreadPool()Lorg/mortbay/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-virtual {v0}, Lorg/mortbay/jetty/bio/SocketConnector;->getLowResourceMaxIdleTime()I

    move-result v0

    .line 221
    if-ltz v0, :cond_0

    iget v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    if-eq v1, v0, :cond_0

    .line 223
    iput v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    .line 224
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_socket:Ljava/net/Socket;

    iget v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_sotimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->handle()V
    :try_end_2
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    :try_start_3
    const-string/jumbo v1, "EOF"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 234
    :try_start_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 251
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 254
    :try_start_5
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 257
    :goto_2
    return-void

    .line 212
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Lorg/mortbay/jetty/EofException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 237
    :catch_1
    move-exception v0

    .line 239
    :try_start_8
    const-string/jumbo v1, "BAD"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 240
    :try_start_9
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 251
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 254
    :try_start_a
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 235
    :catch_2
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_1

    .line 251
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v1, v2}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v1, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 254
    :try_start_c
    iget-object v2, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v2, v2, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 251
    throw v0

    .line 241
    :catch_3
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 243
    :catch_4
    move-exception v0

    .line 245
    const-string/jumbo v1, "handle failed"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 246
    :try_start_e
    invoke-virtual {p0}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 251
    :goto_4
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 254
    :try_start_f
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    .line 247
    :catch_5
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_4

    .line 255
    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v0

    .line 251
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/bio/SocketConnector;->access$100(Lorg/mortbay/jetty/bio/SocketConnector;Lorg/mortbay/jetty/HttpConnection;)V

    .line 252
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v1, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    monitor-enter v1

    .line 254
    :try_start_13
    iget-object v0, p0, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->this$0:Lorg/mortbay/jetty/bio/SocketConnector;

    iget-object v0, v0, Lorg/mortbay/jetty/bio/SocketConnector;->_connections:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    monitor-exit v1

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v0
.end method
