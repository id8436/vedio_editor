.class Lorg/apache/http/impl/execchain/ConnectionHolder;
.super Ljava/lang/Object;
.source "ConnectionHolder.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/apache/http/concurrent/Cancellable;
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final managedConn:Lorg/apache/http/HttpClientConnection;

.field private final manager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private volatile released:Z

.field private volatile reusable:Z

.field private volatile state:Ljava/lang/Object;

.field private volatile tunit:Ljava/util/concurrent/TimeUnit;

.field private volatile validDuration:J


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 65
    iput-object p2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    .line 66
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 8

    .prologue
    .line 119
    iget-object v7, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    monitor-enter v7

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->released:Z

    if-eqz v0, :cond_0

    .line 121
    monitor-exit v7

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->shutdown()V

    .line 126
    const-string/jumbo v0, "HttpClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const-string/jumbo v0, "HttpClient"

    const-string/jumbo v1, "Connection discarded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 137
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :try_start_3
    const-string/jumbo v1, "HttpClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const-string/jumbo v1, "HttpClient"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :cond_2
    :try_start_4
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public cancel()Z
    .locals 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->released:Z

    .line 142
    const-string/jumbo v1, "HttpClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "HttpClient"

    const-string/jumbo v2, "Cancelling request execution"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 146
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 155
    return-void
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->released:Z

    return v0
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->reusable:Z

    return v0
.end method

.method public markNonReusable()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->reusable:Z

    .line 78
    return-void
.end method

.method public markReusable()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->reusable:Z

    .line 74
    return-void
.end method

.method public releaseConnection()V
    .locals 8

    .prologue
    .line 92
    iget-object v7, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    monitor-enter v7

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->released:Z

    if-eqz v0, :cond_0

    .line 94
    monitor-exit v7

    .line 116
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->released:Z

    .line 97
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->reusable:Z

    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    iget-object v3, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->state:Ljava/lang/Object;

    iget-wide v4, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->validDuration:J

    iget-object v6, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->tunit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 115
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 102
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 103
    const-string/jumbo v0, "HttpClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string/jumbo v0, "HttpClient"

    const-string/jumbo v1, "Connection discarded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_3
    const-string/jumbo v1, "HttpClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    const-string/jumbo v1, "HttpClient"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :cond_3
    :try_start_4
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->manager:Lorg/apache/http/conn/HttpClientConnectionManager;

    iget-object v2, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/HttpClientConnectionManager;->releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->state:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public setValidFor(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->managedConn:Lorg/apache/http/HttpClientConnection;

    monitor-enter v1

    .line 86
    :try_start_0
    iput-wide p1, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->validDuration:J

    .line 87
    iput-object p3, p0, Lorg/apache/http/impl/execchain/ConnectionHolder;->tunit:Ljava/util/concurrent/TimeUnit;

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
