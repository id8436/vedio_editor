.class public Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;
.super Ljava/lang/Object;
.source "RsaSha1PrivateKeyHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getPrivateKey(Ljava/io/File;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/io/Reader;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/io/Reader;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->readToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 109
    const-string/jumbo v0, "-----BEGIN PRIVATE KEY-----"

    .line 110
    const-string/jumbo v1, "-----END PRIVATE KEY-----"

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/util/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey([B)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey([B)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 129
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 131
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKeyFromFilename(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/common/util/Base64DecoderException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/client/authn/oauth/RsaSha1PrivateKeyHelper;->getPrivateKey(Ljava/io/File;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method private static readToString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 139
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_1
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    :try_start_3
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    :goto_2
    throw v0

    .line 147
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method
