.class public Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;
.super Ljava/lang/Object;
.source "RFC2109SpecFactoryHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;-><init>([Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;->oneHeader:Z

    .line 57
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 67
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 73
    :goto_0
    const-string/jumbo v1, "http.protocol.single-cookie-header"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 76
    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    move-object v0, v1

    .line 78
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
