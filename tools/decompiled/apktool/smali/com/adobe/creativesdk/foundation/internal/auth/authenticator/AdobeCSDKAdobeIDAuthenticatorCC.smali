.class public Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "AdobeCSDKAdobeIDAuthenticatorCC.java"


# static fields
.field public static final ADOBEID_AUTHENTICATOR_ADDACCOUNT_DUETO_SIGNUP_REQUEST:Ljava/lang/String; = "adbAuth_addaccount_signup_force"

.field public static final ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_AUTHTOKEN:Ljava/lang/String; = "adbAuth_authtoken"

.field public static final ADOBEID_AUTHENTICATOR_ADD_ACCOUNT_USERNAME:Ljava/lang/String; = "adbAuth_adobeId"

.field private static final ADOBEID_AUTHENTICATOR_AUTH_TOKEN:Ljava/lang/String; = "adbIdauthtoken_key"

.field public static final ADOBEID_AUTHENTICATOR_DEVICE_TOKEN_SHARED_AES_KEY:Ljava/lang/String; = "adbAuth_device_token_aes_key"

.field public static final ADOBEID_AUTHENTICATOR_REMOVE_ACCOUNT_EXPLICITLY_REQUEST:Ljava/lang/String; = "adbAuth_removeaccount"

.field public static final ADOBEID_AUTHENTICATOR_UID:Ljava/lang/String; = "adbAuth_authenticator_uid"


# instance fields
.field private _shouldAllowAccountRemovalInNextCall:Z

.field private handler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->_shouldAllowAccountRemovalInNextCall:Z

    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->handler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method public static LogText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkCallerPermission(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string/jumbo v1, "callerUid"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 67
    if-eq v1, v2, :cond_0

    .line 68
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->doesCallerUidSignatureMatchWithThisAuthenticator(I)Z

    move-result v0

    .line 71
    :cond_0
    return v0
.end method

.method private doesCallerUidSignatureMatchWithThisAuthenticator(I)Z
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 57
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method private getAuthTokenFromPreference(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "adobeIdAuthenticator_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private initializeDeviceTokenSharedAESKey()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->initializeDeviceTokenAES(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private removeAdobeIDAccount(Landroid/accounts/Account;)V
    .locals 4

    .prologue
    .line 150
    const-string/jumbo v0, "in getAuthToken : Remove AdobeId account request - removing the account"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->_shouldAllowAccountRemovalInNextCall:Z

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->removeAuthTokenInPreference(Landroid/accounts/Account;)V

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeAuthTokenInPreference(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 173
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1, v2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method private storeAuthTokenInPreference(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 182
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 82
    const-string/jumbo v0, "in addAccount : Trying adding account "

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    invoke-direct {p0, p5}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->checkCallerPermission(Landroid/os/Bundle;)Z

    move-result v2

    .line 88
    if-eqz v2, :cond_0

    if-eqz p5, :cond_0

    const-string/jumbo v2, "adbAuth_adobeId"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "adbAuth_authtoken"

    .line 89
    invoke-virtual {p5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    const-string/jumbo v1, "in addAccount : Permission Denied Or Bad Request - FAIL "

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "errorCode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_account_operation_not_supported:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->showToast(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const-string/jumbo v2, "adbAuth_adobeId"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    const-string/jumbo v2, "adbAuth_authtoken"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v4, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x1

    .line 105
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 106
    const-string/jumbo v7, "com.adobe.creativesdk.foundation.auth.adobeID.CC"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 108
    if-eqz v7, :cond_4

    array-length v8, v7

    if-lez v8, :cond_4

    .line 110
    const-string/jumbo v8, "in addAccount : more than one account - remove the existing one"

    invoke-static {v8}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 111
    aget-object v8, v7, v1

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 112
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    const-string/jumbo v2, "in addAccount : existing one same as the new one - so just udpate"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 116
    aget-object v2, v7, v1

    .line 122
    :goto_1
    if-eqz v1, :cond_2

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in addAccount : everything Ok . adding account to Account Manager "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6, v2, v9, v9}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in addAccount : Adding Account Manager  returned "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 128
    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->storeAuthTokenInPreference(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "authAccount"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "accountType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "authtoken"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_3
    aget-object v1, v7, v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->removeAdobeIDAccount(Landroid/accounts/Account;)V

    :cond_4
    move v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 206
    const-string/jumbo v0, "in getAuthToken : fetch token"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->checkCallerPermission(Landroid/os/Bundle;)Z

    move-result v0

    .line 210
    if-eqz v0, :cond_0

    const-string/jumbo v1, "AdobeID access"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    :cond_0
    const-string/jumbo v1, "in getAuthToken : FAILING due to permission check"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 213
    const-string/jumbo v2, "errorCode"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    const-string/jumbo v2, "errorMessage"

    if-nez v0, :cond_1

    const-string/jumbo v0, "caller UID Different"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 238
    :goto_1
    return-object v0

    .line 214
    :cond_1
    const-string/jumbo v0, "invalid authTokenType"

    goto :goto_0

    .line 218
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    const-string/jumbo v1, "in getAuthToken : Try getting authtoken from preference"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->getAuthTokenFromPreference(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 227
    const-string/jumbo v2, "in getAuthToken : seems to have a Valid Token"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v2, "authAccount"

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v2, "accountType"

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v2, "authtoken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "adbAuth_device_token_aes_key"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAuthSharedDeviceTokenAESKeyMgr;->getDeviceTokenSharedAESKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "adbAuth_authenticator_uid"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 236
    :cond_3
    const-string/jumbo v1, "in getAuthToken : auth Token not present in preference"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->LogText(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "errorCode"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAuthenticatorCC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$string;->adobe_csdk_id_authenticator_accesslabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    const-string/jumbo v1, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 199
    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method
