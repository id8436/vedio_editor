.class public Lorg/apache/http/impl/auth/BasicSchemeHC4;
.super Lorg/apache/http/impl/auth/RFC2617SchemeHC4;
.source "BasicSchemeHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Ljava/nio/charset/Charset;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicSchemeHC4;->complete:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;-><init>(Lorg/apache/http/auth/ChallengeState;)V

    .line 78
    return-void
.end method

.method public static authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 194
    const-string/jumbo v0, "Credentials"

    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string/jumbo v0, "charset"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 206
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 207
    if-eqz p2, :cond_1

    .line 208
    const-string/jumbo v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 212
    :goto_1
    const-string/jumbo v2, ": Basic "

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 213
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 215
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0

    .line 200
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string/jumbo v0, "Credentials"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/BasicSchemeHC4;->getCredentialsCharset(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 166
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 167
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/BasicSchemeHC4;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    const-string/jumbo v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 172
    :goto_1
    const-string/jumbo v2, ": Basic "

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 173
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 175
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0

    .line 160
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/BasicSchemeHC4;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617SchemeHC4;->processChallenge(Lorg/apache/http/Header;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicSchemeHC4;->complete:Z

    .line 106
    return-void
.end method
