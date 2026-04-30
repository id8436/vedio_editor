.class Lorg/apache/http/impl/conn/HttpClientConnectionOperator;
.super Ljava/lang/Object;
.source "HttpClientConnectionOperator.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field static final SOCKET_FACTORY_REGISTRY:Ljava/lang/String; = "http.socket-factory-registry"

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final dnsResolver:Lorg/apache/http/conn/DnsResolver;

.field private final schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

.field private final socketFactoryRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, "Socket factory registry"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->socketFactoryRegistry:Lorg/apache/http/config/Lookup;

    .line 73
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    .line 75
    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    .line 77
    return-void

    .line 73
    :cond_0
    sget-object p2, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    goto :goto_0

    .line 75
    :cond_1
    sget-object p3, Lorg/apache/http/impl/conn/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/http/impl/conn/SystemDefaultDnsResolver;

    goto :goto_1
.end method

.method private static varargs getConnectTimeoutMessage(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "remote host"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, " timed out"

    goto :goto_2
.end method

.method private getSocketFactoryRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v0, "http.socket-factory-registry"

    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/config/Lookup;

    .line 83
    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->socketFactoryRegistry:Lorg/apache/http/config/Lookup;

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public connect(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/protocol/HttpContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getSocketFactoryRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/config/Lookup;

    move-result-object v1

    .line 110
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/socket/ConnectionSocketFactory;

    .line 111
    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " protocol is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 116
    iget-object v2, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    invoke-interface {v2, p2}, Lorg/apache/http/conn/SchemePortResolver;->resolve(Lorg/apache/http/HttpHost;)I

    move-result v11

    .line 117
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    array-length v2, v10

    if-ge v8, v2, :cond_3

    .line 118
    aget-object v4, v10, v8

    .line 119
    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_4

    const/4 v2, 0x1

    move v9, v2

    .line 121
    :goto_1
    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Lorg/apache/http/conn/socket/ConnectionSocketFactory;->createSocket(Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v3

    .line 122
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->isSoReuseAddress()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 123
    invoke-interface {p1, v3}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 125
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v4, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 126
    const-string/jumbo v2, "HttpClient"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string/jumbo v2, "HttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Connecting to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->getSoTimeout()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    move/from16 v2, p4

    move-object v4, p2

    move-object v6, p3

    move-object/from16 v7, p6

    .line 131
    invoke-interface/range {v1 .. v7}, Lorg/apache/http/conn/socket/ConnectionSocketFactory;->connectSocket(ILjava/net/Socket;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v3

    .line 133
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->isTcpNoDelay()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 134
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->isSoKeepAlive()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 135
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/config/SocketConfig;->getSoLinger()I

    move-result v4

    .line 136
    if-ltz v4, :cond_2

    .line 137
    if-lez v4, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 139
    :cond_2
    invoke-interface {p1, v3}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 140
    const-string/jumbo v2, "HttpClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    const-string/jumbo v2, "HttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connection established "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :cond_3
    return-void

    .line 119
    :cond_4
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_1

    .line 137
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 144
    :catch_0
    move-exception v2

    .line 145
    if-eqz v9, :cond_6

    .line 146
    new-instance v3, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-static {v2, p2, v10}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getConnectTimeoutMessage(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3, v2}, Lorg/apache/http/conn/ConnectTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 163
    :cond_6
    const-string/jumbo v2, "HttpClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 164
    const-string/jumbo v2, "HttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " timed out. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Connection will be retried using another IP address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_7
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    .line 150
    :catch_1
    move-exception v2

    .line 151
    if-eqz v9, :cond_6

    .line 152
    invoke-virtual {v2}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string/jumbo v3, "Connection timed out"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 154
    new-instance v1, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-static {v2, p2, v10}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getConnectTimeoutMessage(Ljava/io/IOException;Lorg/apache/http/HttpHost;[Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/ConnectTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 157
    throw v1

    .line 159
    :cond_8
    new-instance v1, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v1, p2, v2}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v1
.end method

.method public upgrade(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->getSocketFactoryRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    .line 176
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/socket/ConnectionSocketFactory;

    .line 177
    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " protocol is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    instance-of v1, v0, Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    if-nez v1, :cond_1

    .line 182
    new-instance v0, Lorg/apache/http/conn/UnsupportedSchemeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " protocol does not support connection upgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/conn/UnsupportedSchemeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    check-cast v0, Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    .line 186
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    invoke-interface {v2, p2}, Lorg/apache/http/conn/SchemePortResolver;->resolve(Lorg/apache/http/HttpHost;)I

    move-result v2

    .line 188
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2, p3}, Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/http/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    .line 189
    invoke-interface {p1, v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 190
    return-void
.end method
