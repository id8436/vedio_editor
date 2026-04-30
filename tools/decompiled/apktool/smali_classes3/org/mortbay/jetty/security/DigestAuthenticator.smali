.class public Lorg/mortbay/jetty/security/DigestAuthenticator;
.super Ljava/lang/Object;
.source "DigestAuthenticator.java"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# instance fields
.field protected maxNonceAge:J

.field protected nonceSecret:J

.field protected useStale:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    .line 259
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 57
    .line 59
    const-string/jumbo v0, "Authorization"

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_10

    .line 63
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Credentials: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance v7, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string/jumbo v1, "=, "

    invoke-direct {v7, v0, v1, v5, v4}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 68
    new-instance v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    move-object v0, v2

    .line 73
    :goto_0
    invoke-virtual {v7}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 75
    invoke-virtual {v7}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 78
    :goto_1
    sparse-switch v6, :sswitch_data_0

    .line 91
    if-eqz v1, :cond_f

    .line 93
    const-string/jumbo v0, "username"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    :cond_1
    :goto_2
    move-object v0, v2

    move-object v1, v3

    :goto_3
    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 112
    goto :goto_0

    :cond_2
    move v6, v4

    .line 76
    goto :goto_1

    :sswitch_0
    move-object v1, v3

    .line 83
    goto :goto_3

    :sswitch_1
    move-object v1, v2

    :sswitch_2
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 87
    goto :goto_3

    .line 95
    :cond_3
    const-string/jumbo v0, "realm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->realm:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_4
    const-string/jumbo v0, "nonce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    goto :goto_2

    .line 99
    :cond_5
    const-string/jumbo v0, "nc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nc:Ljava/lang/String;

    goto :goto_2

    .line 101
    :cond_6
    const-string/jumbo v0, "cnonce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->cnonce:Ljava/lang/String;

    goto :goto_2

    .line 103
    :cond_7
    const-string/jumbo v0, "qop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->qop:Ljava/lang/String;

    goto :goto_2

    .line 105
    :cond_8
    const-string/jumbo v0, "uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->uri:Ljava/lang/String;

    goto :goto_2

    .line 107
    :cond_9
    const-string/jumbo v0, "response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iput-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->response:Ljava/lang/String;

    goto :goto_2

    .line 114
    :cond_a
    iget-object v0, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lorg/mortbay/jetty/security/DigestAuthenticator;->checkNonce(Ljava/lang/String;Lorg/mortbay/jetty/Request;)I

    move-result v0

    .line 115
    if-lez v0, :cond_c

    .line 116
    iget-object v0, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    invoke-interface {p1, v0, v8, p3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v2

    move v0, v4

    .line 120
    :goto_4
    if-nez v2, :cond_d

    .line 121
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "AUTH FAILURE: user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, v8, Lorg/mortbay/jetty/security/DigestAuthenticator$Digest;->username:Ljava/lang/String;

    invoke-static {v3}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 130
    :goto_5
    if-nez v2, :cond_b

    if-eqz p4, :cond_b

    .line 131
    invoke-virtual {p0, p1, p3, p4, v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;->sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Z)V

    .line 133
    :cond_b
    return-object v2

    .line 117
    :cond_c
    if-nez v0, :cond_e

    move v0, v5

    .line 118
    goto :goto_4

    .line 124
    :cond_d
    const-string/jumbo v1, "DIGEST"

    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3, v2}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    goto :goto_5

    :cond_e
    move v0, v4

    goto :goto_4

    :cond_f
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_3

    :cond_10
    move v0, v4

    goto :goto_5

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public checkNonce(Ljava/lang/String;Lorg/mortbay/jetty/Request;)I
    .locals 12

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/jetty/security/B64Code;->decode([C)[B

    move-result-object v6

    .line 210
    array-length v0, v6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 211
    const/4 v0, -0x1

    .line 253
    :goto_0
    return v0

    .line 213
    :cond_0
    const-wide/16 v4, 0x0

    .line 214
    iget-wide v2, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 215
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 216
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v6, v0, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    const/4 v0, 0x0

    :goto_1
    const/16 v7, 0x8

    if-ge v0, v7, :cond_1

    .line 219
    add-int/lit8 v7, v0, 0x8

    const-wide/16 v8, 0xff

    and-long/2addr v8, v2

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 220
    const/16 v7, 0x8

    shr-long/2addr v2, v7

    .line 221
    const/16 v7, 0x8

    shl-long/2addr v4, v7

    const-wide/16 v8, 0xff

    rsub-int/lit8 v7, v0, 0x7

    aget-byte v7, v6, v7

    int-to-long v10, v7

    and-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 225
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "age="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :cond_2
    const/4 v0, 0x0

    .line 230
    :try_start_1
    const-string/jumbo v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 232
    const/4 v5, 0x0

    const/16 v7, 0x10

    invoke-virtual {v4, v1, v5, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 233
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 240
    :goto_2
    const/4 v1, 0x0

    :goto_3
    const/16 v4, 0x10

    if-ge v1, v4, :cond_4

    .line 241
    add-int/lit8 v4, v1, 0x8

    :try_start_2
    aget-byte v4, v6, v4

    aget-byte v5, v0, v1

    if-eq v4, v5, :cond_3

    .line 242
    const/4 v0, -0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 237
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 249
    :catch_1
    move-exception v0

    .line 251
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 253
    const/4 v0, -0x1

    goto :goto_0

    .line 240
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 244
    :cond_4
    :try_start_3
    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    .line 245
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 247
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "DIGEST"

    return-object v0
.end method

.method public getMaxNonceAge()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    return-wide v0
.end method

.method public getNonceSecret()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    return-wide v0
.end method

.method public getUseStale()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    return v0
.end method

.method public newNonce(Lorg/mortbay/jetty/Request;)Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    const/16 v10, 0x8

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    .line 165
    iget-wide v2, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 167
    const/16 v0, 0x18

    new-array v6, v0, [B

    move v0, v1

    .line 168
    :goto_0
    if-ge v0, v10, :cond_0

    .line 170
    and-long v8, v4, v12

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 171
    shr-long/2addr v4, v10

    .line 172
    add-int/lit8 v7, v0, 0x8

    and-long v8, v2, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 173
    shr-long/2addr v2, v10

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 179
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 181
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v6, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 182
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 191
    add-int/lit8 v2, v1, 0x8

    aget-byte v3, v0, v1

    aput-byte v3, v6, v2

    .line 192
    const/16 v2, 0x17

    if-ne v1, v2, :cond_2

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-static {v6}, Lorg/mortbay/jetty/security/B64Code;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 184
    :catch_0
    move-exception v2

    .line 186
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez v0, :cond_0

    .line 151
    const-string/jumbo v0, "/"

    .line 152
    :cond_0
    const-string/jumbo v1, "WWW-Authenticate"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Digest realm=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\", domain=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\", nonce=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/DigestAuthenticator;->newNonce(Lorg/mortbay/jetty/Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\", algorithm=MD5, qop=\"auth\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, " stale="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v0, 0x191

    invoke-virtual {p3, v0}, Lorg/mortbay/jetty/Response;->sendError(I)V

    .line 159
    return-void

    .line 152
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public setMaxNonceAge(J)V
    .locals 1

    .prologue
    .line 361
    iput-wide p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    .line 362
    return-void
.end method

.method public setNonceSecret(J)V
    .locals 1

    .prologue
    .line 375
    iput-wide p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    .line 376
    return-void
.end method

.method public setUseStale(Z)V
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    .line 381
    return-void
.end method
