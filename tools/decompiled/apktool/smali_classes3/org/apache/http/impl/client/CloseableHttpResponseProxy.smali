.class Lorg/apache/http/impl/client/CloseableHttpResponseProxy;
.super Ljava/lang/Object;
.source "CloseableHttpResponseProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final original:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;->original:Lorg/apache/http/HttpResponse;

    .line 53
    return-void
.end method

.method public static newProxy(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 4

    .prologue
    .line 81
    const-class v0, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/http/client/methods/CloseableHttpResponse;

    aput-object v3, v1, v2

    new-instance v2, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;

    invoke-direct {v2, p0}, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/CloseableHttpResponse;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;->original:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 58
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;->close()V

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/CloseableHttpResponseProxy;->original:Lorg/apache/http/HttpResponse;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    throw v1

    .line 74
    :cond_1
    throw v0
.end method
