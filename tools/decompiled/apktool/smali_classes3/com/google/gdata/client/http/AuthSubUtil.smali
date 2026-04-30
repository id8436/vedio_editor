.class public Lcom/google/gdata/client/http/AuthSubUtil;
.super Ljava/lang/Object;
.source "AuthSubUtil.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String; = "www.google.com"

.field private static final DEFAULT_PROTOCOL:Ljava/lang/String; = "https"

.field private static final RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/gdata/client/http/AuthSubUtil;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 502
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {}, Lcom/google/gdata/util/common/base/CharEscapers;->uriEscaper()Lcom/google/gdata/util/common/base/Escaper;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/gdata/util/common/base/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 507
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    :goto_0
    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 514
    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method public static exchangeForSessionToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getSessionTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 318
    const-string/jumbo v2, "GET"

    invoke-static {p2, p3, v1, v2}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 322
    new-instance v1, Lcom/google/gdata/util/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lcom/google/gdata/util/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/google/gdata/util/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "="

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 334
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static exchangeForSessionToken(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 288
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "www.google.com"

    invoke-static {v0, v1, p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->exchangeForSessionToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 476
    if-nez p1, :cond_0

    .line 477
    const-string/jumbo v0, "AuthSub token=\"%s\""

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p0, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    .line 480
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 481
    sget-object v2, Lcom/google/gdata/client/http/AuthSubUtil;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 482
    const-string/jumbo v4, "%s %s %d %s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p3, v5, v7

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v2, v3}, Lcom/google/gdata/client/http/AuthSubUtil;->unsignedLongToString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getSigAlg(Ljava/security/PrivateKey;)Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    move-result-object v1

    .line 486
    invoke-static {p1, v0, v1}, Lcom/google/gdata/client/http/AuthSubUtil;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;)[B

    move-result-object v2

    .line 487
    invoke-static {v2}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 488
    const-string/jumbo v3, "AuthSub token=\"%s\" data=\"%s\" sig=\"%s\" sigalg=\"%s\""

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v1}, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->getAuthSubName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPrivateKeyFromKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 257
    const/4 v2, 0x0

    .line 259
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 261
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v0

    .line 263
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 189
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/client/http/AuthSubUtil;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "hd"

    invoke-static {v6, v0, p2}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "/accounts/AuthSubRequest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string/jumbo v0, "next"

    invoke-static {v1, v0, p2}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "scope"

    invoke-static {v1, v0, p3}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "secure"

    if-eqz p4, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v2, "session"

    if-eqz p5, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/google/gdata/client/http/AuthSubUtil;->addParameter(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0

    .line 133
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 159
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "www.google.com"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/gdata/client/http/AuthSubUtil;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestUrl(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 100
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "www.google.com"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/client/http/AuthSubUtil;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRevokeTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accounts/AuthSubRevokeToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSessionTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accounts/AuthSubSessionToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSigAlg(Ljava/security/PrivateKey;)Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;
    .locals 2

    .prologue
    .line 542
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string/jumbo v1, "dsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    sget-object v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->DSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    .line 546
    :goto_0
    return-object v0

    .line 545
    :cond_0
    const-string/jumbo v1, "rsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    sget-object v0, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->RSA_SHA1:Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;

    goto :goto_0

    .line 548
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown algorithm in private key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTokenFromReply(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    const-string/jumbo v0, "&"

    const-string/jumbo v1, "="

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/google/gdata/util/common/base/StringUtil;->lowercaseKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getTokenFromReply(Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/http/AuthSubUtil;->getTokenFromReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getTokenInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 386
    const-string/jumbo v2, "GET"

    invoke-static {p2, p3, v1, v2}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 390
    new-instance v1, Lcom/google/gdata/util/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lcom/google/gdata/util/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/google/gdata/util/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "="

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/gdata/util/common/base/StringUtil;->string2Map(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenInfo(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 356
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "www.google.com"

    invoke-static {v0, v1, p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTokenInfoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/accounts/AuthSubTokenInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static revokeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-static {p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->getRevokeTokenUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 446
    const-string/jumbo v2, "GET"

    invoke-static {p2, p3, v1, v2}, Lcom/google/gdata/client/http/AuthSubUtil;->formAuthorizationHeader(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 450
    new-instance v1, Lcom/google/gdata/util/AuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    return-void
.end method

.method public static revokeToken(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lcom/google/gdata/util/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 418
    const-string/jumbo v0, "https"

    const-string/jumbo v1, "www.google.com"

    invoke-static {v0, v1, p0, p1}, Lcom/google/gdata/client/http/AuthSubUtil;->revokeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;)V

    .line 419
    return-void
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/lang/String;Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p2}, Lcom/google/gdata/client/http/AuthSubUtil$SignatureAlgorithm;->getJCAName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 534
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method private static unsignedLongToString(J)Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/16 v10, 0x20

    .line 597
    cmp-long v0, p0, v12

    if-ltz v0, :cond_0

    .line 598
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 603
    :cond_0
    const/16 v5, 0x14

    .line 604
    new-array v6, v5, [C

    .line 605
    const/16 v7, 0xa

    .line 607
    ushr-long v2, p0, v10

    .line 608
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    .line 609
    int-to-long v8, v7

    rem-long v8, v2, v8

    shl-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 610
    int-to-long v8, v7

    div-long/2addr v2, v8

    move v4, v5

    .line 611
    :goto_1
    cmp-long v8, v0, v12

    if-gtz v8, :cond_1

    cmp-long v8, v2, v12

    if-lez v8, :cond_2

    .line 612
    :cond_1
    add-int/lit8 v4, v4, -0x1

    int-to-long v8, v7

    rem-long v8, v0, v8

    long-to-int v8, v8

    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    aput-char v8, v6, v4

    .line 613
    int-to-long v8, v7

    div-long/2addr v0, v8

    int-to-long v8, v7

    rem-long v8, v2, v8

    shl-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 614
    int-to-long v8, v7

    div-long/2addr v2, v8

    goto :goto_1

    .line 616
    :cond_2
    new-instance v0, Ljava/lang/String;

    sub-int v1, v5, v4

    invoke-direct {v0, v6, v4, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method
