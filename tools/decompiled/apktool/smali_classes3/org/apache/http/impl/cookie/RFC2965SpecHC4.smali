.class public Lorg/apache/http/impl/cookie/RFC2965SpecHC4;
.super Lorg/apache/http/impl/cookie/RFC2109SpecHC4;
.source "RFC2965SpecHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;-><init>([Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 68
    const-string/jumbo v0, "port"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 69
    const-string/jumbo v0, "commenturl"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 70
    const-string/jumbo v0, "discard"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 71
    const-string/jumbo v0, "version"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 72
    return-void
.end method

.method private static adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 198
    const/4 v2, 0x1

    move v0, v1

    .line 199
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 201
    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_2

    .line 206
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v0, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->isSecure()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object p0, v0

    .line 214
    :cond_1
    return-object p0

    .line 199
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private createCookies([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v0, p1, v1

    .line 100
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 102
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance v7, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;

    invoke-direct {v7, v5, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->setPath(Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->setDomain(Ljava/lang/String;)V

    .line 109
    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->setPorts([I)V

    .line 111
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v5

    .line 115
    new-instance v6, Ljava/util/HashMap;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 118
    aget-object v8, v5, v0

    .line 119
    invoke-interface {v8}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 121
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 123
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v6}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_3

    .line 129
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 134
    :cond_5
    return-object v3
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    .line 160
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 162
    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    const-string/jumbo v1, "; $Port"

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "=\""

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v1

    .line 168
    if-eqz v1, :cond_1

    .line 169
    array-length v2, v1

    .line 170
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 171
    if-lez v0, :cond_0

    .line 172
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 174
    :cond_0
    aget v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const-string/jumbo v0, "\""

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 181
    :cond_2
    return-void
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 226
    const-string/jumbo v1, "Cookie2"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "$Version="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 230
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Set-Cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized cookie header \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 85
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->createCookies([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->createCookies([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string/jumbo v0, "rfc2965"

    return-object v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 143
    return-void
.end method
