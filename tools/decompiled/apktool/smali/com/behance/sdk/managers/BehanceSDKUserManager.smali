.class public Lcom/behance/sdk/managers/BehanceSDKUserManager;
.super Ljava/lang/Object;
.source "BehanceSDKUserManager.java"


# static fields
.field private static instance:Lcom/behance/sdk/managers/BehanceSDKUserManager;

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->instance:Lcom/behance/sdk/managers/BehanceSDKUserManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;

    invoke-direct {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->instance:Lcom/behance/sdk/managers/BehanceSDKUserManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->instance:Lcom/behance/sdk/managers/BehanceSDKUserManager;

    return-object v0
.end method


# virtual methods
.method public checkExpiryAndGetAccessToken()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 107
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasValidAccessToken()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    :try_start_0
    sget-object v2, Lcom/behance/sdk/managers/BehanceSDKUserManager;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Access token expired. Trying to get new access token."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->reAuthenticate()Z

    move-result v0

    .line 114
    sget-object v2, Lcom/behance/sdk/managers/BehanceSDKUserManager;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Refreshed Access token status [%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;

    const-string/jumbo v1, "Problem refreshing access token"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    sget-object v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Device token expired."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;

    const-string/jumbo v1, "Problem refreshing access token"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    sget-object v0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Access token is valid. Using the existing one."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdobeUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    return-object v0
.end method

.method public getUserDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    return-object v0
.end method

.method public isUserAnEnterpriseUser()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAuthenticatedWithAdobe()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public isUserEntitledToUseBehance()Z
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    const-string/jumbo v1, "behance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->isEntitledToService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserAuthenticatedWithAdobe()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/managers/BehanceSDKUserManager;->userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 72
    return-void
.end method
