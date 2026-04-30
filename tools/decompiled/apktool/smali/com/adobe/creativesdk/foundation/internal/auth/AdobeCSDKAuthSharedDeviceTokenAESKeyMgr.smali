.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;
.super Ljava/lang/Object;
.source "AdobeCSDKAuthSharedDeviceTokenAESKeyMgr.java"


# static fields
.field private static final DEVICE_TOKEN_SHARED_AES_KEY:Ljava/lang/String; = "adb_authenticator_shared_aes_devicetoken"

.field private static final DEVICE_TOKEN_SHARED_AES_PREFERENCE:Ljava/lang/String; = "adb_authenticator_shared_aes_preference"

.field private static final ENCRYPT_DEVICE_TOKEN_IN_ACCOUNT_MANAGER:Z = true

.field private static _sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;


# instance fields
.field private bInstanceInitialized:Z

.field private cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

.field private deviceTokenAESKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->bInstanceInitialized:Z

    .line 27
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->bInstanceInitialized:Z

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;

    .line 34
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;

    return-object v0
.end method

.method private initializeCipher()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    const-string/jumbo v0, "Creating the Cipher Instance of Key"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->printAESKey(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->convertStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;-><init>([B)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cipher cretion FAILED with messages :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method private printAESKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method


# virtual methods
.method public createNewAESKeyForSharedDeviceToken(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->generateNewAESKey_Common()[B

    move-result-object v0

    .line 113
    :try_start_0
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->convertByteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->setSharedDeviceTokenAESKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cipher creation FAILED with messages :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getDeviceTokenSharedAESKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    return-object v0
.end method

.method public initializeDeviceTokenAES(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    const-string/jumbo v0, "AES initializing the AES"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->bInstanceInitialized:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->bInstanceInitialized:Z

    .line 69
    const-string/jumbo v0, "adb_authenticator_shared_aes_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "adb_authenticator_shared_aes_devicetoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AES from preferenc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    .line 72
    if-nez v0, :cond_1

    .line 84
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AESMgr is already initialized - aes key :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCipher()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AES after decrypting is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->printAESKey(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->initializeCipher()V

    goto :goto_0
.end method

.method public isInitializationSuccess()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->cipher:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedDeviceTokenAESKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting new key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->logText(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCipher()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "adb_authenticator_shared_aes_preference"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 101
    const-string/jumbo v2, "adb_authenticator_shared_aes_devicetoken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->deviceTokenAESKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->printAESKey(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->initializeCipher()V

    .line 107
    return-void
.end method
