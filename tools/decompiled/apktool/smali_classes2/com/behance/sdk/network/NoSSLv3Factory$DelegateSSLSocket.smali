.class Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "NoSSLv3Factory.java"


# instance fields
.field protected final delegate:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    .line 85
    return-void
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 125
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 180
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 190
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 195
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoTimeout()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 130
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->sendUrgentData(I)V

    .line 315
    return-void
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 170
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    .line 320
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 150
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setOOBInline(Z)V

    .line 325
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    .line 330
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    .line 340
    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 360
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    .line 350
    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    .line 365
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    .line 370
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 140
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 155
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    .line 375
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    .line 380
    return-void
.end method

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
