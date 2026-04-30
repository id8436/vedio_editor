.class public Lorg/apache/http/impl/cookie/RFC2109SpecHC4;
.super Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;
.source "RFC2109SpecHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final DATE_PATTERNS:[Ljava/lang/String;

.field private static final PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/apache/http/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    .line 63
    const/4 v0, 0x3

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

    sput-object v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;-><init>()V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->datepatterns:[Ljava/lang/String;

    .line 80
    :goto_0
    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->oneHeader:Z

    .line 81
    const-string/jumbo v0, "version"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109VersionHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2109VersionHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 82
    const-string/jumbo v0, "path"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 83
    const-string/jumbo v0, "domain"

    new-instance v1, Lorg/apache/http/impl/cookie/RFC2109DomainHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/RFC2109DomainHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 84
    const-string/jumbo v0, "max-age"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 85
    const-string/jumbo v0, "secure"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 86
    const-string/jumbo v0, "comment"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 87
    const-string/jumbo v0, "expires"

    new-instance v1, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 89
    return-void

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->DATE_PATTERNS:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->datepatterns:[Ljava/lang/String;

    goto :goto_0
.end method

.method private doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 165
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    .line 166
    new-instance v4, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v5, 0x28

    invoke-direct {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 167
    const-string/jumbo v5, "Cookie: "

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v5, "$Version="

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 169
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v5, "; "

    invoke-virtual {v4, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v4, v0, v3}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    .line 172
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, v4}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    return-object v1
.end method

.method private doFormatOneHeader(Ljava/util/List;)Ljava/util/List;
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
    .line 140
    const v0, 0x7fffffff

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 143
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 144
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-direct {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 148
    const-string/jumbo v0, "Cookie"

    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v0, ": "

    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "$Version="

    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 153
    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    goto :goto_2

    .line 157
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 2

    .prologue
    .line 210
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string/jumbo v1, "path"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string/jumbo v0, "; "

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v0, "$Path"

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    :cond_0
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    instance-of v0, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/apache/http/cookie/ClientCookie;

    const-string/jumbo v1, "domain"

    invoke-interface {v0, v1}, Lorg/apache/http/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string/jumbo v0, "; "

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "$Domain"

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    :cond_1
    return-void
.end method

.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 2
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
    .line 123
    const-string/jumbo v0, "List of cookies"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    sget-object v1, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->PATH_COMPARATOR:Lorg/apache/http/cookie/CookiePathComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p1, v0

    .line 132
    :cond_0
    iget-boolean v0, p0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->oneHeader:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->doFormatOneHeader(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->doFormatManyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected formatParamAsVer(Lorg/apache/http/util/CharArrayBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/16 v1, 0x22

    .line 188
    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 190
    if-eqz p3, :cond_0

    .line 191
    if-lez p4, :cond_1

    .line 192
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 193
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p1, p3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
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
    .line 98
    const-string/jumbo v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
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

    .line 104
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 105
    invoke-virtual {p0, v0, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string/jumbo v0, "rfc2109"

    return-object v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 111
    const-string/jumbo v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    .line 113
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 114
    new-instance v0, Lorg/apache/http/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Cookie name may not contain blanks"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lorg/apache/http/cookie/CookieRestrictionViolationException;

    const-string/jumbo v1, "Cookie name may not start with $"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 120
    return-void
.end method
