.class public Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;
.super Ljava/lang/Object;
.source "BrowserCompatSpecFactoryHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    .line 70
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    .line 66
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    .line 62
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 76
    const-string/jumbo v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 82
    :goto_0
    new-instance v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    move-object v0, v1

    .line 84
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;->securityLevel:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
