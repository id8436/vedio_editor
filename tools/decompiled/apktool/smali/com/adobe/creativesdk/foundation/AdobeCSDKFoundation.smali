.class public Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;
.super Ljava/lang/Object;
.source "AdobeCSDKFoundation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdobeCSDKFoundation"

.field private static _additionalScopes:[Ljava/lang/String; = null

.field private static _appName:Ljava/lang/String; = null

.field private static _appVersion:Ljava/lang/String; = null

.field private static _clientID:Ljava/lang/String; = null

.field private static _clientSecret:Ljava/lang/String; = null

.field private static _redirectURI:Ljava/lang/String; = null

.field private static final _version:Ljava/lang/String; = "0.9.2006-13-SNAPSHOT"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientID:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientSecret:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_appName:Ljava/lang/String;

    .line 43
    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_appVersion:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_redirectURI:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_additionalScopes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdditionalScopes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_additionalScopes:[Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_appName:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientID:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public static getRedirectURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_redirectURI:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "0.9.2006-13-SNAPSHOT"

    return-object v0
.end method

.method public static initializeAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    sput-object p0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_appName:Ljava/lang/String;

    .line 93
    sput-object p1, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_appVersion:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static initializeCSDKFoundation(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 64
    .line 65
    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 67
    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;

    .line 68
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;->getClientID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientID:Ljava/lang/String;

    .line 69
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;->getClientSecret()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientSecret:Ljava/lang/String;

    .line 70
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;->getRedirectURI()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_redirectURI:Ljava/lang/String;

    .line 71
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;->getAdditionalScopesList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_additionalScopes:[Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 75
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientID:Ljava/lang/String;

    sget-object v2, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_clientSecret:Ljava/lang/String;

    sget-object v3, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_redirectURI:Ljava/lang/String;

    sget-object v4, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->_additionalScopes:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 82
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeCSDKFoundation"

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeCSDKFoundation"

    const-string/jumbo v2, "Context not instance of IAdobeAuthClientCredentials"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
