.class public Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;
.super Ljava/lang/Object;
.source "PublicSuffixFilterHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# instance fields
.field private exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CookieAttributeHandler;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    .line 57
    return-void
.end method

.method private isForPublicSuffix(Lorg/apache/http/cookie/Cookie;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string/jumbo v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    invoke-static {v0}, Lorg/apache/http/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v3, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->exceptions:Ljava/util/Set;

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->exceptions:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->suffixes:Ljava/util/Set;

    if-nez v3, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 116
    :cond_2
    iget-object v3, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->suffixes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 117
    goto :goto_0

    .line 120
    :cond_3
    const-string/jumbo v3, "*."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 121
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_4
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 124
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    :goto_1
    move v0, v1

    .line 130
    goto :goto_0

    .line 127
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_1
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->isForPublicSuffix(Lorg/apache/http/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->exceptions:Ljava/util/Set;

    .line 76
    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->suffixes:Ljava/util/Set;

    .line 67
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilterHC4;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 94
    return-void
.end method
