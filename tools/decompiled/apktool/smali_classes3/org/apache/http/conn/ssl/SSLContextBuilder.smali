.class public Lorg/apache/http/conn/ssl/SSLContextBuilder;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field static final SSL:Ljava/lang/String; = "SSL"

.field static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private keymanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Ljava/lang/String;

.field private secureRandom:Ljava/security/SecureRandom;

.field private trustmanagers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    .line 76
    return-void
.end method


# virtual methods
.method public build()Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 164
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    :goto_2
    iget-object v2, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 168
    return-object v3

    .line 162
    :cond_0
    const-string/jumbo v0, "TLS"

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 164
    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[C)Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[CLorg/apache/http/conn/ssl/PrivateKeyStrategy;)Lorg/apache/http/conn/ssl/SSLContextBuilder;

    .line 132
    return-object p0
.end method

.method public loadKeyMaterial(Ljava/security/KeyStore;[CLorg/apache/http/conn/ssl/PrivateKeyStrategy;)Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 143
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_2

    .line 145
    if-eqz p3, :cond_1

    move v1, v2

    .line 146
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 147
    aget-object v0, v3, v1

    .line 148
    instance-of v4, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_0

    .line 149
    new-instance v4, Lorg/apache/http/conn/ssl/SSLContextBuilder$KeyManagerDelegate;

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v4, v0, p3}, Lorg/apache/http/conn/ssl/SSLContextBuilder$KeyManagerDelegate;-><init>(Ljavax/net/ssl/X509KeyManager;Lorg/apache/http/conn/ssl/PrivateKeyStrategy;)V

    aput-object v4, v3, v1

    .line 146
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_1
    array-length v0, v3

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    .line 155
    iget-object v4, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->keymanagers:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    :cond_2
    return-object p0
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;)Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/http/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/conn/ssl/TrustStrategy;)Lorg/apache/http/conn/ssl/SSLContextBuilder;

    move-result-object v0

    return-object v0
.end method

.method public loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/conn/ssl/TrustStrategy;)Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 104
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 105
    if-eqz v3, :cond_2

    .line 106
    if-eqz p2, :cond_1

    move v1, v2

    .line 107
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 108
    aget-object v0, v3, v1

    .line 109
    instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 110
    new-instance v4, Lorg/apache/http/conn/ssl/SSLContextBuilder$TrustManagerDelegate;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v4, v0, p2}, Lorg/apache/http/conn/ssl/SSLContextBuilder$TrustManagerDelegate;-><init>(Ljavax/net/ssl/X509TrustManager;Lorg/apache/http/conn/ssl/TrustStrategy;)V

    aput-object v4, v3, v1

    .line 107
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 115
    :cond_1
    array-length v0, v3

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    .line 116
    iget-object v4, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->trustmanagers:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_2
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->secureRandom:Ljava/security/SecureRandom;

    .line 95
    return-object p0
.end method

.method public useProtocol(Ljava/lang/String;)Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public useSSL()Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "SSL"

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public useTLS()Lorg/apache/http/conn/ssl/SSLContextBuilder;
    .locals 1

    .prologue
    .line 79
    const-string/jumbo v0, "TLS"

    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLContextBuilder;->protocol:Ljava/lang/String;

    .line 80
    return-object p0
.end method
