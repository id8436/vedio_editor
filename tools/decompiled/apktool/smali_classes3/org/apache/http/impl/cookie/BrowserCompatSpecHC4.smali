.class public Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;
.super Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;
.source "BrowserCompatSpecHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    .line 124
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    .line 119
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 90
    :goto_0
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$2;->$SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactoryHC4$SecurityLevel:[I

    invoke-virtual {p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unknown security level"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->datepatterns:[Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_0
    const-string/jumbo v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 107
    :goto_1
    const-string/jumbo v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicDomainHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicDomainHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 108
    const-string/jumbo v0, "max-age"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 109
    const-string/jumbo v0, "secure"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 110
    const-string/jumbo v0, "comment"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 111
    const-string/jumbo v0, "expires"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 113
    const-string/jumbo v0, "version"

    new-instance v1, Lorg/apache/http/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 114
    return-void

    .line 95
    :pswitch_1
    const-string/jumbo v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$1;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$1;-><init>(Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    goto :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isQuoteEnclosed(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 172
    if-eqz p0, :cond_0

    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 7
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
    const/4 v2, 0x0

    .line 176
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 177
    new-instance v3, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v3, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 178
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    move v1, v2

    .line 180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 181
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 182
    if-lez v1, :cond_0

    .line 183
    const-string/jumbo v4, "; "

    invoke-virtual {v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v5}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->isQuoteEnclosed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    sget-object v0, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    new-instance v6, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6, v2}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 180
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "="

    invoke-virtual {v3, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 196
    if-eqz v5, :cond_1

    .line 197
    invoke-virtual {v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v3}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
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

    const/4 v5, 0x0

    .line 128
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string/jumbo v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
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

    .line 135
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 138
    array-length v6, v3

    move v4, v5

    move v2, v5

    move v0, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v7, v3, v4

    .line 139
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_1

    move v0, v1

    .line 142
    :cond_1
    const-string/jumbo v8, "expires"

    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_2

    move v2, v1

    .line 138
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_3
    if-nez v2, :cond_4

    if-nez v0, :cond_7

    .line 149
    :cond_4
    sget-object v3, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    .line 152
    instance-of v0, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 153
    check-cast v0, Lorg/apache/http/FormattedHeader;

    invoke-interface {v0}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v2

    .line 154
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-direct {v0, v4, v6}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 166
    :goto_1
    new-array v1, v1, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v3, v2, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    .line 168
    :goto_2
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 158
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 159
    if-nez v0, :cond_6

    .line 160
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v1, "Header value is null"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_6
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 163
    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v0, v5, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_1

    :cond_7
    move-object v0, v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string/jumbo v0, "compatibility"

    return-object v0
.end method
