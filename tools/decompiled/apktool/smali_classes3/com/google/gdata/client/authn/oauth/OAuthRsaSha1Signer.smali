.class public Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;
.super Ljava/lang/Object;
.source "OAuthRsaSha1Signer.java"

# interfaces
.implements Lcom/google/gdata/client/authn/oauth/OAuthSigner;


# instance fields
.field privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "Private key string cannot be null"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "Private key string cannot be empty"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->setPrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Lcom/google/gdata/util/common/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    :catch_2
    move-exception v0

    .line 79
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 56
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "Private key bytes cannot be null"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "Private key bytes cannot be empty"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey([B)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->setPrivateKey(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Invalid private key"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 121
    iget-object v0, p0, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "Private key cannot be null"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    :try_start_0
    const-string/jumbo v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 127
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 128
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Error generating signature"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Error generating signature"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :catch_2
    move-exception v0

    .line 134
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Error generating signature"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :catch_3
    move-exception v0

    .line 136
    new-instance v1, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v2, "Error generating signature"

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string/jumbo v0, "RSA-SHA1"

    return-object v0
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/authn/oauth/OAuthException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Lcom/google/gdata/client/authn/oauth/OAuthException;

    const-string/jumbo v1, "Private key cannot be null"

    invoke-direct {v0, v1}, Lcom/google/gdata/client/authn/oauth/OAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/client/authn/oauth/OAuthRsaSha1Signer;->privateKey:Ljava/security/PrivateKey;

    .line 117
    return-void
.end method
