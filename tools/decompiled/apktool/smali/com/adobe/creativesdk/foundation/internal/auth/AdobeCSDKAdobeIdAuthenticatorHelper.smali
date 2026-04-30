.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;
.super Ljava/lang/Object;
.source "AdobeCSDKAdobeIdAuthenticatorHelper.java"


# static fields
.field private static final ADOBEID_AUTHENTICATOR_ADDACCOUNT_DUETO_SIGNUP_REQUEST:Ljava/lang/String; = "adbAuth_addaccount_signup_force"

.field private static final ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_AUTHTOKEN:Ljava/lang/String; = "adbAuth_authtoken"

.field private static final ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_USERNAME:Ljava/lang/String; = "adbAuth_adobeId"

.field private static final DATA_VERSION:I = 0x2

.field private static final DATE_LEN:I = 0x14

.field private static final NUM_FIELDS:I = 0x3

.field private static final NUM_FIELDS_V1:I = 0x2

.field private static final T:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AdobeCSDKAdobeIdAuthenticatorHelper"

.field private static _sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->T:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getTokenDetailsFromData(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    move-result-object v0

    return-object v0
.end method

.method private createCombinedData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    new-instance v1, Ljava/util/Formatter;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 262
    const-string/jumbo v2, "%d %d %s %d %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x4

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 234
    return-object p1
.end method

.method private encryptData(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 242
    return-object p1
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    .line 58
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->_sInstance:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    return-object v0
.end method

.method private getTokenDetailsFromData(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 309
    if-nez p1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 316
    if-gt v1, v4, :cond_0

    .line 319
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    .line 320
    if-lt v3, v4, :cond_0

    .line 324
    if-ne v1, v4, :cond_2

    .line 325
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_2
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLong()J

    move-result-wide v4

    .line 329
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 330
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;-><init>()V

    .line 331
    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    .line 332
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    .line 333
    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceId:Ljava/lang/String;

    move-object v0, v1

    .line 335
    goto :goto_0
.end method

.method public static isAccountManagerHasSharedAdobeIdAccount(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeCSDKAdobeIdAuthenticatorHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSharedDeviceTokenExpired(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 109
    .line 110
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 111
    const/16 v1, 0x2710

    .line 112
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeCurrentSharedAdobeIDFromAccountManager(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 79
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v0, "remove_account"

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackSSO()V

    .line 81
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 85
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 95
    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 106
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    :try_start_1
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "AdobeCSDKAdobeIdAuthenticatorHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const-string/jumbo v3, "error_description"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v3, v2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 102
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 105
    throw v0
.end method


# virtual methods
.method public addNewAccountDirectlyToAccountManager(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;ZLcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;",
            "Z",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->checkAuthenticatorSignature(Landroid/content/Context;)Z

    move-result v0

    .line 135
    new-instance v8, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppLogin:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackSSO()V

    .line 138
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 140
    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->T:Ljava/lang/String;

    const-string/jumbo v2, "authenticator signature !valid"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "Add Account"

    const-string/jumbo v1, "authenticator signature not valid"

    invoke-virtual {v8, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 144
    const-string/jumbo v0, "error_description"

    const-string/jumbo v1, "authenticator signature not valid"

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ACCOUNT_SIGNATURE_MISMATCH:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1, v9}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 147
    if-eqz p4, :cond_0

    .line 148
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 153
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 154
    const-string/jumbo v1, "adbAuth_adobeId"

    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceId:Ljava/lang/String;

    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    iget-object v3, p2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    invoke-virtual {p0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->createCombinedEncryptedDataOfToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string/jumbo v2, "adbAuth_authtoken"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz p3, :cond_2

    .line 159
    const-string/jumbo v1, "adbAuth_addaccount_signup_force"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AdobeID access"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 165
    if-eqz p4, :cond_3

    .line 166
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;

    invoke-direct {v1, p0, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/accounts/AccountManagerFuture;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$AddAccountResultAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_3
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeCSDKAdobeIdAuthenticatorHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    const-string/jumbo v1, "Add Account"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "error_description"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1, v9}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 174
    if-eqz p4, :cond_4

    .line 175
    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :cond_4
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 178
    throw v0
.end method

.method public checkAuthenticatorSignature(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 340
    .line 341
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3

    .line 343
    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 344
    iget-object v6, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 346
    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 343
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 347
    goto :goto_1

    .line 351
    :cond_2
    return v0
.end method

.method public createCombinedEncryptedDataOfToken(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->createCombinedData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    return-object v0
.end method

.method public getSharedAdobeIdTokenFromAccountManager(Landroid/app/Activity;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Landroid/app/Activity;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V

    .line 360
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    return-void
.end method

.method public getSharedAdobeIdTokenFromAccountManager(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;

    invoke-direct {v0, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 390
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V

    .line 391
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    return-void
.end method

.method getSharedAdobeIdTokenFromAccountManager(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V

    .line 367
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$FetchAuthTokenInBackground;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    return-void
.end method

.method public getStoredAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 5

    .prologue
    .line 118
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 119
    const/4 v0, 0x0

    .line 121
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 123
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobeCSDKAdobeIdAuthenticatorHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->_context:Landroid/content/Context;

    .line 183
    return-void
.end method
