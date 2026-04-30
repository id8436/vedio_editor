.class public Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandlerHC4.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [I

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 72
    aget v3, v2, v0

    if-gez v3, :cond_0

    .line 73
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v1, "Invalid Port attribute."

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Port attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    return-object v2
.end method

.method private static portMatch(I[I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 94
    .line 95
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 96
    if-ne p0, v3, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 101
    :cond_0
    return v0

    .line 95
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v2

    .line 147
    instance-of v0, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string/jumbo v3, "port"

    invoke-interface {v0, v3}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v0

    invoke-static {v2, v0}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;->portMatch(I[I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x1

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
    .line 109
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lorg/apache/http/cookie/SetCookie2;

    .line 112
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object v0

    .line 114
    invoke-interface {p1, v0}, Lorg/apache/http/cookie/SetCookie2;->setPorts([I)V

    .line 117
    :cond_0
    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 125
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v1

    .line 128
    instance-of v0, p1, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string/jumbo v2, "port"

    invoke-interface {v0, v2}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;->portMatch(I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lorg/apache/http/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method
