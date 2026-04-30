.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactoryHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;-><init>([Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 65
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 67
    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 69
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 71
    :goto_0
    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 73
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
