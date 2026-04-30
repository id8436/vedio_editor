.class public Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;
.super Ljava/lang/Object;
.source "OAuthHmacSha1Signer.java"

# interfaces
.implements Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKey(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/client/authn/oauth/OAuthParameters;->getOAuthTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/client/authn/oauth/OAuthUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSignature(Ljava/lang/String;Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 40
    :try_start_0
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "OAuth parameters cannot be null"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v1, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 42
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/gdata/client/authn/oauth/OAuthHmacSha1Signer;->getKey(Lcom/google/gdata/client/authn/oauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    const-string/jumbo v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 46
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v1, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_2
    move-exception v0

    .line 52
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    invoke-direct {v1, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "HMAC-SHA1"

    return-object v0
.end method
