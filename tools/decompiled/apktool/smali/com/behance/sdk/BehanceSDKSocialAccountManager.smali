.class public Lcom/behance/sdk/BehanceSDKSocialAccountManager;
.super Ljava/lang/Object;
.source "BehanceSDKSocialAccountManager.java"


# static fields
.field private static final SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "BEHANCE_SDK_SOCIAL_ACCOUNTS_SHARED_PREFERENES_KEY"

.field private static final SP_KEY_ACCOUNT_CLIENT_ID:Ljava/lang/String; = "SP_KEY_ACCOUNT_CLIENT_ID"

.field private static final SP_KEY_ACCOUNT_CLIENT_SECRET:Ljava/lang/String; = "SP_KEY_ACCOUNT_CLIENT_SECRET"

.field private static final SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID:Ljava/lang/String; = "SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID"

.field private static final SP_KEY_ADDITIONAL_DATA:Ljava/lang/String; = "SP_KEY_ADDITIONAL_DATA"

.field private static final SP_KEY_SHARE_ENABLED_LAST_TIME:Ljava/lang/String; = "SP_KEY_SHARE_ENABLED_LAST_TIME"

.field private static final SP_KEY_USER_AUTHENTICATED:Ljava/lang/String; = "SP_KEY_USER_AUTHENTICATED"

.field private static final SP_KEY_USER_AUTH_TOKEN:Ljava/lang/String; = "SP_KEY_USER_AUTH_TOKEN"

.field private static final SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME:Ljava/lang/String; = "SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME"

.field private static final SP_KEY_USER_ID:Ljava/lang/String; = "SP_KEY_USER_ID"

.field private static instance:Lcom/behance/sdk/BehanceSDKSocialAccountManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private areAccountsSame(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    :cond_2
    :goto_0
    return v0

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 87
    :cond_5
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_6
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountDisplayNameResourceId()I

    move-result v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountDisplayNameResourceId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 95
    :cond_7
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 96
    :cond_8
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    :cond_9
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    :cond_a
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 101
    :cond_b
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :cond_c
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthTokenExpiryTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthTokenExpiryTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    :cond_d
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 109
    :cond_e
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    :cond_f
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private getExistingAccountSharedPreference(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getSharedPreference(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "SP_KEY_ACCOUNT_CLIENT_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->instance:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    invoke-direct {v0}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->instance:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->instance:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    return-object v0
.end method

.method private getSharedPreference(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BEHANCE_SDK_SOCIAL_ACCOUNTS_SHARED_PREFERENES_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private readAccountFromStorage(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getExistingAccountSharedPreference(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_0

    .line 159
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;-><init>()V

    .line 160
    const-string/jumbo v3, "SP_KEY_ACCOUNT_CLIENT_ID"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientId(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v3, "SP_KEY_ACCOUNT_CLIENT_SECRET"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountClientSecret(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v3, "SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountDisplayNameResourceId(I)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAccountType(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;)V

    .line 164
    const-string/jumbo v3, "SP_KEY_USER_AUTH_TOKEN"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthToken(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v3, "SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthTokenExpiryTime(J)V

    .line 166
    const-string/jumbo v3, "SP_KEY_USER_ID"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserId(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v3, "SP_KEY_ADDITIONAL_DATA"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAdditionalData(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "SP_KEY_SHARE_ENABLED_LAST_TIME"

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setSharingEnabledLastTime(Z)V

    .line 169
    const-string/jumbo v1, "SP_KEY_USER_AUTHENTICATED"

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthenticated(Z)V

    .line 172
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private removeAccountFromStorage(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getSharedPreference(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private saveAccountToStorage(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountType()Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getSharedPreference(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "SP_KEY_ACCOUNT_CLIENT_ID"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string/jumbo v1, "SP_KEY_ACCOUNT_CLIENT_SECRET"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string/jumbo v1, "SP_KEY_ACCOUNT_DISPLAY_NAME_RES_ID"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountDisplayNameResourceId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string/jumbo v1, "SP_KEY_USER_AUTH_TOKEN"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string/jumbo v1, "SP_KEY_USER_AUTH_TOKEN_EXPIRY_TIME"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserAuthTokenExpiryTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string/jumbo v1, "SP_KEY_USER_ID"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string/jumbo v1, "SP_KEY_ADDITIONAL_DATA"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAdditionalData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string/jumbo v1, "SP_KEY_SHARE_ENABLED_LAST_TIME"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isSharingEnabledLastTime()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string/jumbo v1, "SP_KEY_USER_AUTHENTICATED"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->isUserAuthenticated()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->getAccountType()Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    invoke-direct {p0, v1, p1}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->areAccountsSame(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->saveAccountToStorage(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 71
    :cond_1
    :goto_0
    return v0

    .line 68
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->saveAccountToStorage(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->readAccountFromStorage(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    return-object v0
.end method

.method public removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    if-ne p1, v0, :cond_0

    .line 127
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0, v0, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/facebook/login/r;->a()Lcom/facebook/login/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/r;->b()V

    .line 135
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccountFromStorage(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public revokeAccountAccess(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->addAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
