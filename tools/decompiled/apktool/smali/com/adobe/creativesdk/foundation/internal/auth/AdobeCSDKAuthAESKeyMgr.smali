.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;
.super Ljava/lang/Object;
.source "AdobeCSDKAuthAESKeyMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static _sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;


# instance fields
.field private final FOUNDATION_AUTH_AES_KEY_PREFERENCE:Ljava/lang/String;

.field private final FOUNDATION_AUTH_AES_SECRET_KEY:Ljava/lang/String;

.field private final SHARED_DEVICETOKEN_AUTH_AES_SECRET_KEY:Ljava/lang/String;

.field private _aeskey_Encryptor:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;

.field private _foundationAuth_AES_key:[B

.field private _sharedDeviceToken_AES_key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "adb_foundation_auth_aes_preference"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->FOUNDATION_AUTH_AES_KEY_PREFERENCE:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "adb_foundation_auth_aes_secret_key"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->FOUNDATION_AUTH_AES_SECRET_KEY:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "adb_shareddevicetoken_auth_aes_secret_key"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->SHARED_DEVICETOKEN_AUTH_AES_SECRET_KEY:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_aeskey_Encryptor:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getAuthFoundation_Encrypted_AES_Key_fromPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateNewAESKey_Common()[B
    .locals 4

    .prologue
    .line 155
    :try_start_0
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 156
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 157
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Auth Foundation : Auth AESKeyMgr : Failed to generate an AES key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAESKeyFromPreference_Common(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getStringFromAuthAESFoundationPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-object v0

    .line 183
    :cond_0
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_aeskey_Encryptor:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;->deCryptData([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Decryption error"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAuthFoundation_Encrypted_AES_Key_fromPreference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string/jumbo v0, "adb_foundation_auth_aes_secret_key"

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getStringFromAuthAESFoundationPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFoundation_AESKey_fromPreference()[B
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "adb_foundation_auth_aes_secret_key"

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getAESKeyFromPreference_Common(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    .line 71
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    return-object v0
.end method

.method private getStringFromAuthAESFoundationPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "adb_foundation_auth_aes_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private storeAESKeyInPreference_Common([BLjava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_aeskey_Encryptor:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr$AESKeySecret_Encryptor;->encyrptData([B)[B

    move-result-object v0

    .line 139
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    const-string/jumbo v2, "adb_foundation_auth_aes_preference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 144
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method private storeFoundatationAuth_AESKey_InPreference([B)V
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "adb_foundation_auth_aes_secret_key"

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->storeAESKeyInPreference_Common([BLjava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method public deleteFoundationAuthAESKey()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "adb_foundation_auth_aes_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "adb_foundation_auth_aes_secret_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public getFoundationAuthAESKey()[B
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 133
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getFoundation_AESKey_fromPreference()[B

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->generateNewAESKey_Common()[B

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->storeFoundatationAuth_AESKey_InPreference([B)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->_foundationAuth_AES_key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CSDK Foundation Auth AES Key is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
