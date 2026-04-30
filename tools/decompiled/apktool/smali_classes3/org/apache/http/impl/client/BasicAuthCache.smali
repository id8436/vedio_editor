.class public Lorg/apache/http/impl/client/BasicAuthCache;
.super Ljava/lang/Object;
.source "BasicAuthCache.java"

# interfaces
.implements Lorg/apache/http/client/AuthCache;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/auth/AuthScheme;",
            ">;"
        }
    .end annotation
.end field

.field private final schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/BasicAuthCache;-><init>(Lorg/apache/http/conn/SchemePortResolver;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/SchemePortResolver;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->map:Ljava/util/HashMap;

    .line 59
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/client/BasicAuthCache;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    .line 61
    return-void

    .line 59
    :cond_0
    sget-object p1, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    return-void
.end method

.method public get(Lorg/apache/http/HttpHost;)Lorg/apache/http/auth/AuthScheme;
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->map:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/BasicAuthCache;->getKey(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/auth/AuthScheme;

    return-object v0
.end method

.method protected getKey(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gtz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/SchemePortResolver;->resolve(Lorg/apache/http/HttpHost;)I
    :try_end_0
    .catch Lorg/apache/http/conn/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    .line 77
    :cond_0
    :goto_0
    return-object p1

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;)V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->map:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/BasicAuthCache;->getKey(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public remove(Lorg/apache/http/HttpHost;)V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->map:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/BasicAuthCache;->getKey(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicAuthCache;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
