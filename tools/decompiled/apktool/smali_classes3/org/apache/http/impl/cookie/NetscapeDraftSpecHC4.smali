.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;
.super Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;
.source "NetscapeDraftSpecHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field protected static final EXPIRES_PATTERN:Ljava/lang/String; = "EEE, dd-MMM-yy HH:mm:ss z"


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;-><init>([Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 70
    :goto_0
    const-string/jumbo v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 71
    const-string/jumbo v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/NetscapeDomainHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/NetscapeDomainHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 72
    const-string/jumbo v0, "max-age"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 73
    const-string/jumbo v0, "secure"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 74
    const-string/jumbo v0, "comment"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 75
    const-string/jumbo v0, "expires"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 77
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->datepatterns:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 137
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 138
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 139
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, ": "

    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 143
    if-lez v1, :cond_0

    .line 144
    const-string/jumbo v3, "; "

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 141
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 6
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
    const/4 v5, 0x0

    .line 110
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
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

    .line 116
    :cond_0
    sget-object v2, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    .line 119
    instance-of v0, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 120
    check-cast v0, Lorg/apache/http/FormattedHeader;

    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 121
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 133
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v3, p2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-nez v0, :cond_2

    .line 127
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 130
    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    invoke-direct {v0, v5, v3}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string/jumbo v0, "netscape"

    return-object v0
.end method
