.class Lorg/apache/http/impl/execchain/Proxies;
.super Ljava/lang/Object;
.source "Proxies.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enhanceEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 5

    .prologue
    .line 48
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/http/impl/execchain/Proxies;->isEnhanced(Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-class v1, Lorg/apache/http/HttpEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/apache/http/HttpEntity;

    aput-object v4, v2, v3

    new-instance v3, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpEntity;

    .line 54
    invoke-interface {p0, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static enhanceResponse(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 4

    .prologue
    .line 87
    const-class v0, Lorg/apache/http/impl/execchain/ResponseProxyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/http/client/methods/CloseableHttpResponse;

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/http/impl/execchain/ResponseProxyHandler;

    invoke-direct {v2, p0, p1}, Lorg/apache/http/impl/execchain/ResponseProxyHandler;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/CloseableHttpResponse;

    return-object v0
.end method

.method static isEnhanced(Lorg/apache/http/HttpEntity;)Z
    .locals 1

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 61
    instance-of v0, v0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isRepeatable(Lorg/apache/http/HttpRequest;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 68
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    .line 69
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    invoke-static {v2}, Lorg/apache/http/impl/execchain/Proxies;->isEnhanced(Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;

    .line 74
    invoke-virtual {v0}, Lorg/apache/http/impl/execchain/RequestEntityExecHandler;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0
.end method
