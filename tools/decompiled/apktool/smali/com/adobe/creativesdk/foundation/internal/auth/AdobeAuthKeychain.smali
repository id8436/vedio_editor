.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;
.super Ljava/lang/Object;
.source "AdobeAuthKeychain.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN:Ljava/lang/String; = "AccessToken"

.field public static final ADOBE_AUTH_KEYCHAIN_ACCESS_TOKEN_EXPIRATION:Ljava/lang/String; = "AccessTokenExpiration"

.field public static final ADOBE_AUTH_KEYCHAIN_ACCOUNT_TYPE:Ljava/lang/String; = "AccountType"

.field public static final ADOBE_AUTH_KEYCHAIN_ADOBE_ID:Ljava/lang/String; = "AdobeID"

.field public static final ADOBE_AUTH_KEYCHAIN_CLIENT_SCOPE:Ljava/lang/String; = "ClientScope"

.field public static final ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_ERROR_CODE:Ljava/lang/String; = "ContinuableEventErrorCode"

.field public static final ADOBE_AUTH_KEYCHAIN_CONTINUABLE_EVENT_JUMP_URL:Ljava/lang/String; = "ContinuableEventJumpURL"

.field public static final ADOBE_AUTH_KEYCHAIN_CONTINUATION_TOKEN:Ljava/lang/String; = "ContinuationToken"

.field public static final ADOBE_AUTH_KEYCHAIN_COUNTRY_CODE:Ljava/lang/String; = "CountryCode"

.field public static final ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN:Ljava/lang/String; = "DeviceToken"

.field public static final ADOBE_AUTH_KEYCHAIN_DEVICE_TOKEN_EXPIRATION:Ljava/lang/String; = "DeviceTokenExpiration"

.field public static final ADOBE_AUTH_KEYCHAIN_DISPLAY_NAME:Ljava/lang/String; = "DisplayName"

.field public static final ADOBE_AUTH_KEYCHAIN_EMAIL:Ljava/lang/String; = "Email"

.field public static final ADOBE_AUTH_KEYCHAIN_EMAIL_VERIFIED:Ljava/lang/String; = "EmailVerified"

.field public static final ADOBE_AUTH_KEYCHAIN_ENTERPRISE_INFO:Ljava/lang/String; = "EnterpriseInfo"

.field public static final ADOBE_AUTH_KEYCHAIN_ENTITLEMENTS:Ljava/lang/String; = "Entitlements"

.field public static final ADOBE_AUTH_KEYCHAIN_ENVIRONMENT_INDICATOR:Ljava/lang/String; = "EnvironmentIndicator"

.field public static final ADOBE_AUTH_KEYCHAIN_FIRST_NAME:Ljava/lang/String; = "FirstName"

.field public static final ADOBE_AUTH_KEYCHAIN_KEYCHAIN_VERSION:Ljava/lang/String; = "KeychainVersion"

.field public static final ADOBE_AUTH_KEYCHAIN_LAST_NAME:Ljava/lang/String; = "LastName"

.field public static final ADOBE_AUTH_KEYCHAIN_LICENSE_STATUS:Ljava/lang/String; = "LicenseStatus"

.field public static final ADOBE_AUTH_KEYCHAIN_MIGRATED:Ljava/lang/String; = "KeyChainMigrated"

.field public static final ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN:Ljava/lang/String; = "RefreshToken"

.field public static final ADOBE_AUTH_KEYCHAIN_REFRESH_TOKEN_EXPIRATION:Ljava/lang/String; = "RefreshTokenExpiration"

.field public static final ADOBE_AUTH_KEYCHAIN_SERVICE_CODE:Ljava/lang/String; = "ServiceCode"

.field public static final ADOBE_AUTH_KEYCHAIN_SERVICE_LEVEL:Ljava/lang/String; = "ServiceLevel"

.field public static final ADOBE_AUTH_KEYCHAIN_UUID:Ljava/lang/String; = "UUID"

.field public static final ADOBE_AUTH_KEYCHAIN_VERSION:Ljava/lang/String; = "KeychainVersion"

.field public static final ADOBE_AUTH_SHARED_KEYCHAIN_CONTINUATION_TOKEN:Ljava/lang/String; = "ContinuationToken"

.field public static final ADOBE_AUTH_SHARED_KEYCHAIN_DEVICE_TOKEN:Ljava/lang/String; = "DeviceToken"

.field public static final ADOBE_AUTH_SHARED_KEYCHAIN_REFRESH_TOKEN:Ljava/lang/String; = "RefreshToken"

.field public static final AUTH_KEYCHAIN_VERSION:I = 0xa

.field public static final CLIENT_ID:Ljava/lang/String; = "ClientId"

.field public static final CLIENT_SECRET:Ljava/lang/String; = "ClientSecret"

.field public static final CLIENT_STATE:Ljava/lang/String; = "ClientState"

.field public static final DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field public static final DEVICE_NAME:Ljava/lang/String; = "DeviceName"

.field public static final IDP_FLOW:Ljava/lang/String; = "idpFlow"

.field private static sharedKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;


# instance fields
.field protected context:Landroid/content/Context;

.field private groupID:Ljava/lang/String;

.field private ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

.field protected migratedSharedPreferences:Landroid/content/SharedPreferences;

.field private migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

.field protected sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->Undefined:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    .line 128
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->setGroupID(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->context:Landroid/content/Context;

    .line 130
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    .line 131
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->context:Landroid/content/Context;

    const-string/jumbo v1, "Foundation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 133
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "KeychainVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "EnvironmentIndicator"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->resetTokens()V

    .line 141
    const-string/jumbo v1, "KeychainVersion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthAESKeyMgr;->deleteFoundationAuthAESKey()V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->context:Landroid/content/Context;

    const-string/jumbo v1, "FoundationMigrated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratedSharedPreferences:Landroid/content/SharedPreferences;

    .line 148
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratedSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getMigrationStatusValue()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->NotMigrated:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    if-ne v0, v1, :cond_4

    .line 153
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratePreferences()V

    .line 155
    :cond_4
    return-void
.end method

.method private convertStringtoDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 313
    if-nez p1, :cond_0

    .line 324
    :goto_0
    return-object v0

    .line 316
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 318
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 319
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 323
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getMigrationStatusValue()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->Undefined:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    if-ne v0, v1, :cond_0

    .line 98
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "KeyChainMigrated"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->NotMigrated:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    return-object v0
.end method

.method public static getSharedKeychain()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    return-object v0
.end method

.method private hasEnvironmentChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 404
    .line 405
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "EnvironmentIndicator"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 407
    if-eq v1, v3, :cond_1

    .line 408
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIdentityManagementServiceUndefined:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    .line 409
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 410
    const-string/jumbo v1, "EnvironmentIndicator"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->internalUpdateOrAdd(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 419
    :goto_0
    return v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 416
    :cond_1
    const-string/jumbo v1, "EnvironmentIndicator"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->internalUpdateOrAdd(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    goto :goto_0
.end method

.method private internalFindKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->NotMigrated:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCipher()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratedSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private internalUpdateOrAdd(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    return-void
.end method

.method private internalUpdateOrAdd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 251
    .line 252
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 253
    check-cast p2, Ljava/util/Date;

    .line 254
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getMigrationStatusValue()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->NotMigrated:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    if-ne v1, v2, :cond_2

    .line 262
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->ims:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCipher()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCommonCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 265
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    :goto_1
    return-void

    .line 258
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratedSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 270
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private migratePreferences()V
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratedSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 112
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->internalFindKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 114
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->Migrated:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    .line 123
    const-string/jumbo v1, "KeyChainMigrated"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migrationStatusValue:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
.end method

.method public static setSharedKeychain(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;)V
    .locals 0

    .prologue
    .line 162
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedKeychain:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;

    .line 163
    return-void
.end method


# virtual methods
.method public deleteKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->getMigrationStatusValue()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;->NotMigrated:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain$AdobeAuthKeychainMigrationStatusValue;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->migratedSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public findKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->hasEnvironmentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->resetTokens()V

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->internalFindKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string/jumbo v0, "AccessToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTokenExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 309
    const-string/jumbo v0, "AccessTokenExpiration"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->convertStringtoDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string/jumbo v0, "AccountType"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdobeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string/jumbo v0, "AdobeID"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string/jumbo v0, "ClientScope"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-string/jumbo v0, "ContinuationToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContiuableEventErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string/jumbo v0, "ContinuableEventErrorCode"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContiuableEventJumpURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string/jumbo v0, "ContinuableEventJumpURL"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountrycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const-string/jumbo v0, "CountryCode"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string/jumbo v0, "DeviceToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTokenExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 329
    const-string/jumbo v0, "DeviceTokenExpiration"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->convertStringtoDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-string/jumbo v0, "DisplayName"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-string/jumbo v0, "Email"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const-string/jumbo v0, "EmailVerified"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnterpriseInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string/jumbo v0, "EnterpriseInfo"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntitlements()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    .line 382
    const-string/jumbo v0, "Entitlements"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    .line 386
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    const-string/jumbo v0, "FirstName"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->groupID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 395
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "EnvironmentIndicator"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 396
    if-ne v0, v2, :cond_0

    .line 397
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 399
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->values()[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string/jumbo v0, "LastName"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const-string/jumbo v0, "LicenseStatus"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string/jumbo v0, "RefreshToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshTokenExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 333
    const-string/jumbo v0, "RefreshTokenExpiration"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->convertStringtoDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getServiceCodes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-string/jumbo v0, "ServiceCode"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServiceLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string/jumbo v0, "ServiceLevel"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->findKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetTokens()V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "AdobeID"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "AccessToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "AccessTokenExpiration"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v0, "ContinuationToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "DeviceToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "DeviceTokenExpiration"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v0, "DisplayName"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "Email"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "EmailVerified"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "Entitlements"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "FirstName"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v0, "LastName"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "RefreshToken"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "RefreshTokenExpiration"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "EnterpriseInfo"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "ContinuableEventJumpURL"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "ContinuableEventErrorCode"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "ServiceLevel"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "ServiceCode"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "idpFlow"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->deleteKey(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->groupID:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public updateOrAddKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->hasEnvironmentChanged()Z

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthKeychain;->internalUpdateOrAdd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void
.end method
