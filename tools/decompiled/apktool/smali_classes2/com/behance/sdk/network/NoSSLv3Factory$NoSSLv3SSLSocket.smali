.class Lcom/behance/sdk/network/NoSSLv3Factory$NoSSLv3SSLSocket;
.super Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;
.source "NoSSLv3Factory.java"


# static fields
.field public static final APACHE_SOCKET_IMPL_CLASS_NAME:Ljava/lang/String; = "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

.field private static final PROTOCOL_ID_SSLV3:Ljava/lang/String; = "SSLv3"


# direct methods
.method private constructor <init>(Ljavax/net/ssl/SSLSocket;)V
    .locals 5

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string/jumbo v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_0

    .line 411
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0

    .line 414
    :catch_1
    move-exception v0

    goto :goto_0

    .line 413
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLSocket;Lcom/behance/sdk/network/NoSSLv3Factory$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/behance/sdk/network/NoSSLv3Factory$NoSSLv3SSLSocket;-><init>(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method


# virtual methods
.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 422
    if-eqz p1, :cond_1

    array-length v0, p1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "SSLv3"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/behance/sdk/network/NoSSLv3Factory$NoSSLv3SSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 428
    const-string/jumbo v1, "SSLv3"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    .line 432
    :cond_1
    invoke-super {p0, p1}, Lcom/behance/sdk/network/NoSSLv3Factory$DelegateSSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 433
    return-void
.end method
