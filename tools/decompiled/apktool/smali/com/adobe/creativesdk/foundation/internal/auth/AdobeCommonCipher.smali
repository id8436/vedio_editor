.class final Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;
.super Ljava/lang/Object;
.source "AdobeCommonCipher.java"


# static fields
.field private static instance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;


# instance fields
.field private decryptionCipher:Ljavax/crypto/Cipher;

.field private encryptionCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->instance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 41
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->encryptionCipher:Ljavax/crypto/Cipher;

    .line 42
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->encryptionCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 43
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->decryptionCipher:Ljavax/crypto/Cipher;

    .line 44
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->decryptionCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    return-void
.end method

.method static createInstance([B)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->instance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;-><init>([B)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->instance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    .line 58
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->instance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    return-object v0
.end method


# virtual methods
.method decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->decryptionCipher:Ljavax/crypto/Cipher;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 95
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Decryption error"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->encryptionCipher:Ljavax/crypto/Cipher;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 74
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Encryption error"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
