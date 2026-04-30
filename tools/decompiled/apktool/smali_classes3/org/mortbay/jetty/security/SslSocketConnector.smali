.class public Lorg/mortbay/jetty/security/SslSocketConnector;
.super Lorg/mortbay/jetty/bio/SocketConnector;
.source "SslSocketConnector.java"


# static fields
.field static final CACHED_INFO_ATTR:Ljava/lang/String;

.field public static final DEFAULT_KEYSTORE:Ljava/lang/String;

.field public static final KEYPASSWORD_PROPERTY:Ljava/lang/String; = "jetty.ssl.keypassword"

.field public static final PASSWORD_PROPERTY:Ljava/lang/String; = "jetty.ssl.password"

.field static class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;


# instance fields
.field private _allowRenegotiate:Z

.field private _excludeCipherSuites:[Ljava/lang/String;

.field private _handshakeTimeout:I

.field private transient _keyPassword:Lorg/mortbay/jetty/security/Password;

.field private _keystore:Ljava/lang/String;

.field private _keystoreType:Ljava/lang/String;

.field private _needClientAuth:Z

.field private transient _password:Lorg/mortbay/jetty/security/Password;

.field private _protocol:Ljava/lang/String;

.field private _provider:Ljava/lang/String;

.field private _secureRandomAlgorithm:Ljava/lang/String;

.field private _sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

.field private _sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

.field private transient _trustPassword:Lorg/mortbay/jetty/security/Password;

.field private _truststore:Ljava/lang/String;

.field private _truststoreType:Ljava/lang/String;

.field private _wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.security.SslSocketConnector$CachedInfo"

    invoke-static {v0}, Lorg/mortbay/jetty/security/SslSocketConnector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->CACHED_INFO_ATTR:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ".keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->DEFAULT_KEYSTORE:Ljava/lang/String;

    return-void

    .line 76
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->class$org$mortbay$jetty$security$SslSocketConnector$CachedInfo:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    .line 136
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->DEFAULT_KEYSTORE:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "JKS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    .line 140
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    .line 144
    const-string/jumbo v0, "TLS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SunX509"

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SunX509"

    :goto_1
    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "JKS"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    .line 154
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    .line 155
    iput v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_handshakeTimeout:I

    .line 157
    iput-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    .line 166
    return-void

    .line 147
    :cond_0
    const-string/jumbo v0, "ssl.KeyManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v0, "ssl.TrustManagerFactory.algorithm"

    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static access$100(Lorg/mortbay/jetty/security/SslSocketConnector;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 76
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private static getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 104
    if-eqz v4, :cond_0

    array-length v0, v4

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 127
    :goto_0
    return-object v0

    .line 107
    :cond_1
    array-length v5, v4

    .line 108
    new-array v1, v5, [Ljava/security/cert/X509Certificate;

    .line 110
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 111
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_2

    .line 113
    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 114
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 118
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 122
    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    .line 126
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/security/SslSocketConnector;->configure(Ljava/net/Socket;)V

    .line 200
    new-instance v1, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    invoke-direct {v1, p0, v0}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/net/Socket;)V

    .line 201
    invoke-virtual {v1}, Lorg/mortbay/jetty/bio/SocketConnector$Connection;->dispatch()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 208
    :try_start_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 212
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-super {p0, p1}, Lorg/mortbay/jetty/bio/SocketConnector;->configure(Ljava/net/Socket;)V

    .line 223
    return-void
.end method

.method protected createFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    .line 240
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 245
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 246
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_password:Lorg/mortbay/jetty/security/Password;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 250
    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 257
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keyPassword:Lorg/mortbay/jetty/security/Password;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v3, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 258
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 266
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 268
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 270
    :goto_3
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 271
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_trustPassword:Lorg/mortbay/jetty/security/Password;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_4
    invoke-virtual {v4, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 275
    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 281
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 282
    invoke-virtual {v0, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 283
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 286
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 288
    :goto_5
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 290
    :goto_6
    invoke-virtual {v0, v3, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 292
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0

    .line 246
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_password:Lorg/mortbay/jetty/security/Password;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v1, :cond_4

    .line 252
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 250
    :cond_4
    throw v0

    .line 257
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keyPassword:Lorg/mortbay/jetty/security/Password;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_2

    .line 271
    :cond_6
    :try_start_5
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_trustPassword:Lorg/mortbay/jetty/security/Password;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/Password;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    goto :goto_4

    .line 275
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v1, :cond_7

    .line 277
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 275
    :cond_7
    throw v0

    .line 286
    :cond_8
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_5

    .line 288
    :cond_9
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    iget-object v4, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    invoke-static {v0, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_6

    .line 275
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_8

    .line 250
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :cond_a
    move-object v2, v1

    goto :goto_3

    :cond_b
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-super {p0, p1, p2}, Lorg/mortbay/jetty/bio/SocketConnector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    .line 318
    const-string/jumbo v0, "https"

    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Request;->setScheme(Ljava/lang/String;)V

    .line 320
    check-cast p1, Lorg/mortbay/io/bio/SocketEndPoint;

    .line 321
    invoke-virtual {p1}, Lorg/mortbay/io/bio/SocketEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 325
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 326
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 330
    sget-object v0, Lorg/mortbay/jetty/security/SslSocketConnector;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;

    .line 331
    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->getKeySize()Ljava/lang/Integer;

    move-result-object v1

    .line 334
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;->getCerts()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 344
    :goto_0
    if-eqz v0, :cond_2

    .line 345
    const-string/jumbo v2, "javax.servlet.request.X509Certificate"

    invoke-virtual {p2, v2, v0}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    :cond_0
    const-string/jumbo v0, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, v0, v3}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    const-string/jumbo v0, "javax.servlet.request.key_size"

    invoke-virtual {p2, v0, v1}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    :goto_1
    return-void

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-static {v3}, Lorg/mortbay/jetty/security/ServletSSL;->deduceKeyLength(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 339
    invoke-static {v2}, Lorg/mortbay/jetty/security/SslSocketConnector;->getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 340
    new-instance v4, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;

    invoke-direct {v4, p0, v1, v0}, Lorg/mortbay/jetty/security/SslSocketConnector$CachedInfo;-><init>(Lorg/mortbay/jetty/security/SslSocketConnector;Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;)V

    .line 341
    sget-object v5, Lorg/mortbay/jetty/security/SslSocketConnector;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 354
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 346
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no client auth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getHandshakeTimeout()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_handshakeTimeout:I

    return v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    return v0
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->getConfidentialPort()I

    move-result v0

    .line 439
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->getIntegralPort()I

    move-result v0

    .line 453
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newServerSocket(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    .line 476
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SslSocketConnector;->createFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    .line 478
    if-nez p1, :cond_3

    invoke-virtual {v0, p2, p3}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(II)Ljava/net/ServerSocket;

    move-result-object v0

    :goto_0
    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    .line 482
    iget-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    if-eqz v1, :cond_0

    .line 483
    iget-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    .line 484
    :cond_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    if-eqz v1, :cond_1

    .line 485
    iget-boolean v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 487
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 489
    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 490
    invoke-virtual {v0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 491
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 494
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 508
    :catch_0
    move-exception v0

    .line 510
    throw v0

    .line 478
    :cond_3
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    goto :goto_0

    .line 502
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 504
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    :cond_5
    return-object v0

    .line 512
    :catch_1
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 515
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 516
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "!JsseListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAllowRenegotiate(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_allowRenegotiate:Z

    .line 189
    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_excludeCipherSuites:[Ljava/lang/String;

    .line 527
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0

    .prologue
    .line 634
    iput p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_handshakeTimeout:I

    .line 635
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 532
    const-string/jumbo v0, "jetty.ssl.keypassword"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keyPassword:Lorg/mortbay/jetty/security/Password;

    .line 533
    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystore:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_keystoreType:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    .prologue
    .line 558
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_needClientAuth:Z

    .line 559
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 564
    const-string/jumbo v0, "jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_password:Lorg/mortbay/jetty/security/Password;

    .line 565
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_protocol:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_provider:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_secureRandomAlgorithm:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslKeyManagerFactoryAlgorithm:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_sslTrustManagerFactoryAlgorithm:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 570
    const-string/jumbo v0, "jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/mortbay/jetty/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_trustPassword:Lorg/mortbay/jetty/security/Password;

    .line 571
    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststore:Ljava/lang/String;

    .line 606
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_truststoreType:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    .prologue
    .line 624
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector;->_wantClientAuth:Z

    .line 625
    return-void
.end method
