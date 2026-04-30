.class public abstract Lorg/apache/http/conn/ssl/AbstractVerifierHC4;
.super Ljava/lang/Object;
.source "AbstractVerifierHC4.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 79
    sget-object v0, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static acceptableCountryWildcard(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 240
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 241
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static countDots(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 366
    move v1, v0

    .line 367
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 369
    add-int/lit8 v1, v1, 0x1

    .line 367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_1
    return v1
.end method

.method public static getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 256
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 280
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ",+"

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 285
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CN="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 292
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 295
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDNSSubjectAlts(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->isIPAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x7

    move v2, v0

    .line 316
    :goto_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 319
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    :goto_1
    if-eqz v0, :cond_2

    .line 324
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 326
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 327
    if-ne v1, v2, :cond_0

    .line 328
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 313
    :cond_1
    const/4 v0, 0x2

    move v2, v0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 335
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    :goto_3
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_3
.end method

.method private static isIPAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 376
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normaliseIPv6Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-object p1

    .line 389
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    const-string/jumbo v1, "HttpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected error converting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method validCountryWildcard(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 248
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p2}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->getCNs(Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {p2, p1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->getSubjectAlts(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host to verify is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 95
    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 119
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 120
    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 127
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 131
    :cond_1
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 133
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 134
    return-void
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 165
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    aget-object v0, p2, v1

    if-eqz v0, :cond_0

    .line 166
    aget-object v0, p2, v1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    if-eqz p3, :cond_2

    .line 169
    array-length v4, p3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, p3, v0

    .line 170
    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Certificate for <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "> doesn\'t contain CN or DNS subjectAlt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->normaliseIPv6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 193
    const-string/jumbo v0, " <"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/16 v0, 0x3e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    const-string/jumbo v0, " OR"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_5
    const-string/jumbo v0, "\\."

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 204
    array-length v0, v7

    const/4 v8, 0x3

    if-lt v0, v8, :cond_8

    aget-object v0, v7, v1

    const-string/jumbo v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v6}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->validCountryWildcard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->isIPAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 208
    :goto_1
    if-eqz v0, :cond_c

    .line 209
    aget-object v0, v7, v1

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_a

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 218
    :goto_2
    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    .line 221
    invoke-static {v5}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->countDots(Ljava/lang/String;)I

    move-result v0

    invoke-static {v6}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->countDots(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_b

    move v0, v2

    .line 226
    :cond_6
    :goto_3
    if-eqz v0, :cond_4

    .line 230
    :cond_7
    if-nez v0, :cond_d

    .line 231
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hostname in certificate didn\'t match: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> !="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v0, v1

    .line 204
    goto :goto_1

    :cond_9
    move v0, v1

    .line 214
    goto :goto_2

    .line 216
    :cond_a
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_b
    move v0, v1

    .line 221
    goto :goto_3

    .line 224
    :cond_c
    invoke-direct {p0, v6}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->normaliseIPv6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 233
    :cond_d
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 139
    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 140
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/conn/ssl/AbstractVerifierHC4;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    move v0, v1

    .line 144
    goto :goto_0
.end method
