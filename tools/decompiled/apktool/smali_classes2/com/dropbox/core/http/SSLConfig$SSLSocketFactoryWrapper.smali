.class final Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLConfig.java"


# instance fields
.field private final mBase:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    .line 217
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 232
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->access$200(Ljavax/net/ssl/SSLSocket;)V

    .line 233
    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 247
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->access$200(Ljavax/net/ssl/SSLSocket;)V

    .line 248
    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 239
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->access$200(Ljavax/net/ssl/SSLSocket;)V

    .line 240
    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 255
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->access$200(Ljavax/net/ssl/SSLSocket;)V

    .line 256
    return-object v1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 262
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->access$200(Ljavax/net/ssl/SSLSocket;)V

    .line 263
    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;->mBase:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
