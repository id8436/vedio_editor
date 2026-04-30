.class public Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;
.super Ljava/lang/Object;
.source "AdobeUXAuthManagerRestricted.java"


# static fields
.field private static final ACCOUNT_TYPE_NOT_SET_ERROR:Ljava/lang/String; = "account type is not set"

.field private static _accessGroupAccountTypeForSSO:Ljava/lang/String;

.field private static mMockTestMode:Z

.field private static sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;


# instance fields
.field private _authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    .line 58
    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_accessGroupAccountTypeForSSO:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->mMockTestMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    .line 75
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    .line 76
    return-void
.end method

.method private createAuthException(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 544
    const-string/jumbo v1, "error_description"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-direct {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 546
    return-object v1
.end method

.method public static getAccessGroupAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_accessGroupAccountTypeForSSO:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    .line 88
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->sharedInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setAccessGroupAccountType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 414
    sput-object p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_accessGroupAccountTypeForSSO:Ljava/lang/String;

    .line 415
    return-void
.end method

.method private setAdditionalAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;[Ljava/lang/String;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 221
    invoke-virtual/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;[Ljava/lang/String;[B)V

    .line 229
    return-void
.end method

.method public static setMockTestMode(Z)V
    .locals 0

    .prologue
    .line 95
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->mMockTestMode:Z

    .line 96
    return-void
.end method


# virtual methods
.method public checkAndCallErrorIfInvalidAccessToken(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 508
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->mMockTestMode:Z

    if-eqz v1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasValidAccessToken()Z

    move-result v1

    .line 514
    if-nez v1, :cond_2

    .line 516
    if-eqz p1, :cond_3

    .line 517
    new-instance v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {p1, v2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 523
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 519
    :cond_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkAndCallErrorIfNotAuthenticated(Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 527
    sget-boolean v1, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->mMockTestMode:Z

    if-eqz v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->isAuthenticated()Z

    move-result v1

    .line 532
    if-nez v1, :cond_2

    .line 533
    if-eqz p1, :cond_3

    .line 534
    new-instance v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CREDENTIALS_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {p1, v2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 539
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 536
    :cond_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountFromAccountManager()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 406
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getAccountFromAccountManager()Landroid/accounts/Account;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdobeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getClientID()Ljava/lang/String;

    move-result-object v0

    .line 325
    :cond_0
    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    return-object v0
.end method

.method public getDeviceTokenFromAccountManger(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getDeviceTokenFromAccountManger(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_FROM_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    const-string/jumbo v1, "account type is not set"

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->createAuthException(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getEntitlements()Ljava/util/Set;
    .locals 1
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
    .line 357
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getEntitlements()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSocialProviders(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getSocialProviders(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;)V

    .line 142
    return-void
.end method

.method public getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    return-object v0
.end method

.method public hasPrivateCloudScope()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasPrivateCloudScope()Z

    move-result v0

    return v0
.end method

.method public hasValidAccessToken()Z
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->willAccessTokenBeValidIn(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized ignoreCCeScope()V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->ignoreCCeScope()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initiateSSO(Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->initiateSSO(Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;)V

    .line 452
    return-void
.end method

.method public isAdobeApp()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAdobeApp()Z

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public isFirstPartyApp()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isFirstPartyApp()Z

    move-result v0

    return v0
.end method

.method public isSocialLoginEnabled(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isSocialLoginEnabled(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 112
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->logout()V

    .line 121
    return-void
.end method

.method public openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 101
    return-void
.end method

.method public promptForSignUp(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->promptForSignUp(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 279
    return-void
.end method

.method public reAuthenticate()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->reAuthenticate()Z

    move-result v0

    return v0
.end method

.method public reAuthenticate(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->reAuthenticate(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)Z

    move-result v0

    return v0
.end method

.method public refreshAccess()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->refreshAccess()V

    .line 288
    return-void
.end method

.method public saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 431
    return-void
.end method

.method public saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 466
    return-void
.end method

.method public setAdditionalAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 252
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 253
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->setAdditionalAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;[Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 267
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to create cipher with default key"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    .line 263
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to create cipher with default key"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    :catch_2
    move-exception v0

    .line 265
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to create cipher with default key"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAsAdobeApp()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAsAdobeApp()V

    .line 490
    return-void
.end method

.method public setAuthenticationEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAuthenticationEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 195
    return-void
.end method

.method public socialLogin(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->socialLogin(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;)V

    .line 133
    return-void
.end method

.method public switchAccount()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->switchAccount()V

    .line 159
    return-void
.end method

.method public updateWithNewScopes([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->resetRefreshToken()V

    .line 441
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->_authManagerImpl:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAdditionalScopeList([Ljava/lang/String;)V

    .line 442
    return-void
.end method
