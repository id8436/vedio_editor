.class Lorg/apache/http/impl/conn/CPoolEntry;
.super Lorg/apache/http/pool/PoolEntry;
.source "CPoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/PoolEntry",
        "<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private volatile routeComplete:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lorg/apache/http/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->closeConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string/jumbo v1, "HttpClient"

    const-string/jumbo v2, "I/O error closing connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 68
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 69
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 88
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired(J)Z
    .locals 7

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lorg/apache/http/pool/PoolEntry;->isExpired(J)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_0

    const-string/jumbo v1, "HttpClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "HttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " expired @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->getExpiry()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return v0
.end method

.method public isRouteComplete()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/CPoolEntry;->routeComplete:Z

    return v0
.end method

.method public markRouteComplete()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/CPoolEntry;->routeComplete:Z

    .line 60
    return-void
.end method

.method public shutdownConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpClientConnection;

    .line 73
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->shutdown()V

    .line 74
    return-void
.end method
