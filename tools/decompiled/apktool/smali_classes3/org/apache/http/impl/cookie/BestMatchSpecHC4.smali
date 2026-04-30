.class public Lorg/apache/http/impl/cookie/BestMatchSpecHC4;
.super Ljava/lang/Object;
.source "BestMatchSpecHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

.field private final oneHeader:Z

.field private strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;-><init>([Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    .line 67
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    return-object v0
.end method

.method private getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    return-object v0
.end method

.method private getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const v1, 0x7fffffff

    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 176
    instance-of v4, v0, Lorg/apache/http/cookie/SetCookie2;

    if-nez v4, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 180
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    .line 183
    :cond_1
    if-lez v2, :cond_3

    .line 184
    if-eqz v1, :cond_2

    .line 185
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 190
    :goto_2
    return-object v0

    .line 187
    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 190
    :cond_3
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    .prologue
    .line 158
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
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
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 97
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v5

    .line 102
    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 103
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_0

    move v0, v1

    .line 106
    :cond_0
    const-string/jumbo v8, "expires"

    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    move v2, v1

    .line 102
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_2
    if-nez v2, :cond_3

    if-nez v0, :cond_6

    .line 113
    :cond_3
    sget-object v3, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    .line 116
    instance-of v0, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 117
    check-cast v0, Lorg/apache/http/FormattedHeader;

    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v2

    .line 118
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 130
    :goto_1
    new-array v1, v1, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 131
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 136
    :goto_2
    return-object v0

    .line 122
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v0, :cond_5

    .line 124
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_5
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 127
    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_1

    .line 133
    :cond_6
    const-string/jumbo v0, "Set-Cookie2"

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 134
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 136
    :cond_7
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string/jumbo v0, "best-match"

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
    .line 144
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 147
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0
.end method
