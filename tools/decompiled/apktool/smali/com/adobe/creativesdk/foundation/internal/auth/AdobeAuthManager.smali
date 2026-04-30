.class public Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"


# static fields
.field static final AUTHTAG:Ljava/lang/String; = "Authentication"

.field public static final DEFAULT_SIGN_IN_REQUEST_CODE:I = 0x7d2

.field public static final DEFAULT_SOCIAL_SIGN_IN_REQUEST_CODE:I = 0x7d3

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sharedManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;


# instance fields
.field private _continuableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;",
            "Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private _currentTopActivity:Landroid/app/Activity;

.field private _hasPrivateCloudScope:Z

.field private _ignoreCceScope:Z

.field private _loginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;",
            "Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;",
            ">;"
        }
    .end annotation
.end field

.field private _logoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;",
            "Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;",
            ">;"
        }
    .end annotation
.end field

.field private _sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

.field private emergencyLogout:Z

.field private isAdobeApplication:Z

.field private mAuthOptions:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

.field private mSignInClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

.field private mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    .line 91
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mAuthOptions:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    .line 73
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    .line 74
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mSignInClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    .line 76
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->emergencyLogout:Z

    .line 78
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    .line 79
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    .line 80
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    .line 85
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    .line 87
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_currentTopActivity:Landroid/app/Activity;

    .line 92
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAdobeApplication:Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    .line 155
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_ignoreCceScope:Z

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getSocialIngestIDPKey(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->saveAccountDetailsSSO(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postLoginSuccess(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->launchSignInActivity(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postLoginError(ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postContinuableEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->handleEmergencyLogOut()V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$902(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->emergencyLogout:Z

    return p1
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1377
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;
    .locals 1

    .prologue
    .line 1372
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    return-object v0
.end method

.method private getSocialIngestIDPKey(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$9;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$auth$AdobeSocialLoginParams$SocialProvider:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 569
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 565
    :pswitch_0
    const-string/jumbo v0, "facebook"

    goto :goto_0

    .line 567
    :pswitch_1
    const-string/jumbo v0, "google"

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized handleEmergencyLogOut()V
    .locals 2

    .prologue
    .line 1447
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1449
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$8;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)V

    .line 1460
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    monitor-exit p0

    return-void

    .line 1447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 1441
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInstanceCreated()Z
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchSignInActivity(I)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1382
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getLauncherActivity()Landroid/content/Context;

    move-result-object v1

    .line 1384
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getIntentFlags()I

    move-result v0

    .line 1385
    if-nez v1, :cond_5

    .line 1388
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getLauncherContext()Landroid/content/Context;

    move-result-object v1

    .line 1389
    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    move v2, v3

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 1393
    :goto_0
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getPostLoginWorkCallback()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;

    move-result-object v5

    .line 1394
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthSignInActivity;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1396
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v7

    .line 1397
    invoke-virtual {v7, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setPostLoginWorkCallback(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAuthPostLoginWorkCallback;)V

    .line 1400
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v4

    .line 1402
    :goto_1
    if-eqz v5, :cond_4

    .line 1404
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getAccessGroupAccountType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1406
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->shouldUseSharedAccount()Z

    move-result v3

    .line 1410
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 1411
    const-string/jumbo v3, "uxauth_trysharedtoken"

    invoke-virtual {v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    :cond_1
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->SIGN_IN_UI_TYPE:Ljava/lang/String;

    invoke-virtual {v6, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1415
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1417
    if-eqz v2, :cond_3

    .line 1419
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRequestCode()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1425
    :goto_3
    return-void

    :cond_2
    move v5, v3

    .line 1400
    goto :goto_1

    .line 1423
    :cond_3
    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v2, v4

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_0
.end method

.method private loginInternal(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;Z)V
    .locals 4

    .prologue
    .line 1176
    const/4 v0, 0x0

    .line 1177
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1181
    :cond_0
    const-string/jumbo v1, "Login Attempt"

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppLogin:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getImsHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPIVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;ZLcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;)V

    .line 1246
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setSignInClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 1247
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->signIn(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 1248
    return-void
.end method

.method private postContinuableEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 1362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1363
    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthContiuableEventNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    .line 1366
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    invoke-direct {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 1367
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 1368
    return-void
.end method

.method private postLoginError(ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 3

    .prologue
    .line 1313
    const/4 v0, 0x0

    .line 1314
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1317
    :cond_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;->getErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_USER_CANCELLED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-ne v1, v2, :cond_2

    .line 1318
    const-string/jumbo v1, "Login Cancel"

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1324
    const-string/jumbo v0, "Error"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    .line 1327
    if-eqz p1, :cond_1

    .line 1329
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    .line 1332
    :cond_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 1336
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 1338
    return-void

    .line 1320
    :cond_2
    const-string/jumbo v1, "Login Failure"

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postLoginSuccess(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1342
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    .line 1344
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1345
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1346
    :goto_0
    const-string/jumbo v3, "Login Success"

    invoke-static {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    if-eqz p1, :cond_0

    .line 1350
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    .line 1353
    :goto_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 1357
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 1358
    return-void

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private reAuthenticateInternal(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)Z
    .locals 14
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
    const/4 v13, 0x0

    .line 920
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v13

    .line 1036
    :goto_0
    return v0

    .line 922
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 924
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ReAuthenticate called on Main Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v2, "reAuthenticate() called"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v0, "reauthenticate"

    invoke-direct {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 933
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 934
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    .line 940
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;)V

    .line 943
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessTokenExpirationTime()Ljava/util/Date;

    move-result-object v0

    .line 944
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 945
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Authentication"

    const-string/jumbo v3, "Access token required reauthentication sooner than expected."

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1LoginObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V

    .line 1014
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1016
    new-instance v7, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;

    move-object v8, p0

    move-object v9, v2

    move-object v10, p1

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1ContinuableObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V

    .line 1018
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthContiuableEventNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, v7}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1021
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;->AdobeAuthInteractionHeadless:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;

    invoke-direct {p0, v0, v13}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->loginInternal(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;Z)V

    .line 1023
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1024
    :goto_1
    iget-boolean v0, v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->finished:Z

    if-nez v0, :cond_3

    .line 1026
    :try_start_0
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Authentication"

    const-string/jumbo v7, "Reauthenticate: Can not acquire permit."

    invoke-static {v1, v3, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    const-string/jumbo v1, "Authentication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reauthenticate: Can not acquire permit"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1032
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1034
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1036
    iget-boolean v0, v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1Output;->_result:Z

    goto/16 :goto_0
.end method

.method private saveAccountDetailsSSO(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 5
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
    .line 458
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;-><init>()V

    .line 460
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    .line 461
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    .line 462
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceTokenExpirationTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceExpirationTime:Ljava/util/Date;

    .line 463
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceId:Ljava/lang/String;

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppLogin:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 472
    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->deviceToken:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;->adobeId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 473
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 474
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->addNewAccountDirectlyToAccountManager(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$TokenDetails;ZLcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "SocialLogin SSO"

    const-string/jumbo v4, "Add account NUll - check this"

    invoke-static {v1, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackSSO()V

    .line 478
    const-string/jumbo v1, "Add account SSO"

    const-string/jumbo v3, "Either Null Device Token or Null AdobeID"

    invoke-virtual {v2, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 480
    const-string/jumbo v1, "error_description"

    const-string/jumbo v2, "Either Null Device Token or Null AdobeID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 483
    if-eqz p1, :cond_0

    .line 484
    invoke-interface {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceToken(Ljava/lang/String;)V

    .line 1429
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEmailAddress(Ljava/lang/String;)V

    .line 1430
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdobeID(Ljava/lang/String;)V

    .line 1432
    if-eqz p4, :cond_0

    .line 1433
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenExpirationTime(Ljava/util/Date;)V

    .line 1437
    :goto_0
    return-void

    .line 1435
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setDeviceTokenDefaultExpiration()V

    goto :goto_0
.end method

.method private setAuthenticationParametersWithClientID([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 314
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 316
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 317
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const-string/jumbo v0, "openid"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 321
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdditionalClientScopes([Ljava/lang/String;)V

    .line 324
    :cond_1
    return-void
.end method

.method private setCurrentLauncherObject(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    .line 149
    return-void
.end method

.method public static sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    .line 122
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    return-object v0
.end method


# virtual methods
.method public canRefreshAccessToken()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1273
    .line 1274
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 1275
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    .line 1276
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1284
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getRefreshTokenExpirationTime()Ljava/util/Date;

    move-result-object v0

    .line 1285
    if-eqz v0, :cond_4

    .line 1286
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    move v0, v1

    .line 1287
    :goto_0
    if-eqz v0, :cond_0

    .line 1288
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Getting access token through refresh token"

    invoke-static {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 1295
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1296
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceTokenExpirationTime()Ljava/util/Date;

    move-result-object v3

    .line 1297
    if-eqz v3, :cond_1

    .line 1298
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    move v0, v1

    .line 1299
    :goto_2
    if-eqz v0, :cond_1

    .line 1300
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Getting access token through device token"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 1286
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1298
    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1067
    const/4 v0, 0x0

    .line 1068
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasValidAccessToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1070
    :cond_0
    return-object v0
.end method

.method public getAccountFromAccountManager()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 1081
    const/4 v0, 0x0

    .line 1082
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1083
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getStoredAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1084
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1085
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 1087
    :cond_0
    return-object v0
.end method

.method public getAdobeID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 1058
    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "User information not available. Check if user is Authenticated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinuableError()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getContinuableError()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    move-result-object v0

    return-object v0
.end method

.method public getContinuableJumpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getContiuableEventJumpURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_currentTopActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentAuthSessionLauncher()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    return-object v0
.end method

.method public getCurrentSignInClient()Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mSignInClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    return-object v0
.end method

.method public getDeviceTokenFromAccountManger(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 3
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
    .line 1075
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1076
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getSharedAdobeIdTokenFromAccountManager(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    .line 1077
    return-void
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
    .line 1052
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEntitlements()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSocialProviders(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;)V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeSocialProviderCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getListOfSocialProviders(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeGetProvidersCallback;)V

    .line 449
    return-void
.end method

.method public getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 652
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 683
    :goto_0
    return-object v0

    .line 654
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    .line 656
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    .line 658
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v0, "user_profile"

    invoke-direct {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 661
    if-nez v0, :cond_2

    .line 663
    const-string/jumbo v0, "USER PROFILE ERROR"

    const-string/jumbo v1, "User ID not available"

    invoke-virtual {v4, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackError(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 665
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "User profile not available. But user Authenticated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_2
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setAdobeID(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setDisplayName(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setCountrycode(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLicenseStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setLicenseStatus(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setFirstName(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setLastName(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setEmail(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEmailVerified()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEmailVerified()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 676
    :goto_1
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setEmailVerified(Z)V

    .line 677
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getIsEnterPrise()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getIsEnterPrise()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setEnterprise(Z)V

    .line 679
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;->setAccountType(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 683
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mUserProfile:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthUserProfileImpl;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 675
    goto :goto_1

    :cond_4
    move v1, v2

    .line 677
    goto :goto_2
.end method

.method public hasPrivateCloudScope()Z
    .locals 1

    .prologue
    .line 1464
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_hasPrivateCloudScope:Z

    return v0
.end method

.method public hasValidAccessToken()Z
    .locals 6

    .prologue
    .line 1251
    const/4 v0, 0x0

    .line 1252
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 1254
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1255
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessTokenExpirationTime()Ljava/util/Date;

    move-result-object v1

    .line 1256
    if-eqz v1, :cond_0

    .line 1257
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1258
    const/4 v0, 0x1

    .line 1259
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inside hasValidAccessToken(inside if) and expireTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " and current time"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_0
    :goto_0
    return v0

    .line 1263
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inside hasValidAccessToken(inside else) and expireTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " and current time"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized ignoreCCeScope()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_ignoreCceScope:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initWithApplicationContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 351
    return-void
.end method

.method public initiateSSO(Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;)V
    .locals 4

    .prologue
    .line 1140
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1141
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;

    invoke-direct {v3, p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/IAuthSSOInitCallback;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getSharedAdobeIdTokenFromAccountManager(Landroid/content/Context;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper$ICSDKAdobeIdAuthTokenResultHandler;)V

    .line 1168
    return-void
.end method

.method public isAdobeApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_1

    const-string/jumbo v2, "com.adobe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.behance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.aviary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 337
    :cond_1
    return v0
.end method

.method public isAuthenticated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 689
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 691
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasValidAccessToken()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->canRefreshAccessToken()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFirstPartyApp()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAdobeApplication:Z

    return v0
.end method

.method public isSocialLoginEnabled(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;)Z
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 390
    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getScopesList()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAuthenticationParametersWithClientID([Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRedirectURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRedirectURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setRedirectURI(Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setCurrentLauncherObject(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 397
    const-string/jumbo v0, "Login Start"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Authentication"

    const-string/jumbo v3, "login() called"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->hasValidAccessToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postLoginSuccess(Z)V

    .line 418
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 411
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 412
    const-string/jumbo v1, "Expired Authentication Token"

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;->AdobeAuthInteractionInteractive:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;

    invoke-direct {p0, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->loginInternal(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthInteraction;Z)V

    goto :goto_0

    .line 414
    :cond_2
    const-string/jumbo v0, "Missing Authentication Token"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public logout()V
    .locals 6

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    .line 578
    const/4 v0, 0x0

    .line 581
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "Authentication"

    const-string/jumbo v4, "logout() called"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppLogout:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getImsHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLogoutAPI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLogoutAPIVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->emergencyLogout:Z

    if-eqz v3, :cond_0

    .line 586
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "token_deleted"

    invoke-virtual {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->emergencyLogout:Z

    .line 589
    :cond_0
    if-eqz v1, :cond_1

    .line 591
    const-string/jumbo v0, "Logout Attempt"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAuthStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 598
    const-string/jumbo v1, "Error"

    new-instance v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 603
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 647
    :goto_0
    return-void

    .line 608
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$3;

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    .line 644
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Authentication"

    const-string/jumbo v3, "Calling getImSService-Signout"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->signOut(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignOutClient;)V

    goto :goto_0
.end method

.method public openContinuableAuthenticationEvent(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 5

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setCurrentLauncherObject(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getLauncherActivity()Landroid/content/Context;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getContinuableErrorCode()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_AGE_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UPDATED_TOU:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_EMAIL_VERIFICATION:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    if-eq v1, v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 365
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getContiuableEventErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getContiuableEventJumpURL()Ljava/lang/String;

    move-result-object v1

    .line 370
    if-nez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_sessionLauncher:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getLauncherContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthContinuableEventActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    if-eqz v1, :cond_3

    .line 379
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->JUMP_URL:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_3
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 381
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRequestCode()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 386
    :goto_1
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->clearContinuableEventInfo()V

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public promptForSignUp(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 795
    const-string/jumbo v0, "Signup Start"

    invoke-static {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackRegStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    if-eqz p1, :cond_0

    .line 797
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getScopesList()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAuthenticationParametersWithClientID([Ljava/lang/String;)V

    .line 798
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRedirectURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;->getRedirectURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setRedirectURI(Ljava/lang/String;)V

    .line 801
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setCurrentLauncherObject(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 803
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppSignup:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getImsHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPIVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 809
    const-string/jumbo v0, "Signup Failure"

    invoke-static {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackRegStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_AUTH_MODULE_NOT_INITIALIZED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-direct {p0, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postLoginError(ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 864
    :goto_0
    return-void

    .line 814
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getGrantType()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeDevice:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 815
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_DEVICE_ID_REQUIRED:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-direct {p0, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postLoginError(ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 820
    const-string/jumbo v0, "Signup Failure"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackRegStep(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    new-instance v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_UNKNOWN_ERROR:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;)V

    invoke-direct {p0, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->postLoginError(ZLcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    goto :goto_0

    .line 825
    :cond_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    .line 861
    sget v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthConstants;->AUTH_SESSION_TYPE_SIGN_UP:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->launchSignInActivity(I)V

    .line 863
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setSignInClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    goto :goto_0
.end method

.method public reAuthenticate()Z
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->reAuthenticateInternal(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)Z

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
    .line 904
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->reAuthenticateInternal(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)Z

    move-result v0

    return v0
.end method

.method public refreshAccess()V
    .locals 4

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    :goto_0
    return-void

    .line 870
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v1, "app.token"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getImsHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getLoginAPIVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refresh_access_token"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$5;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    .line 895
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->signIn(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    goto :goto_0
.end method

.method public registerContinuableClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;->registerForContinuableEvent()V

    .line 722
    return-void
.end method

.method public registerLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->registerForLogin()V

    .line 698
    return-void
.end method

.method public registerLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;

    invoke-direct {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;->registerForLogout()V

    .line 710
    return-void
.end method

.method public resetRefreshToken()V
    .locals 1

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->resetRefreshToken()V

    .line 1137
    return-void
.end method

.method public saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V
    .locals 3
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
    .line 1108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->saveAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 1111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1114
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    const-string/jumbo v2, "save_account"

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->trackSSO()V

    .line 1116
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->endAndTrackEvent()V

    .line 1118
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeCSDKAdobeIDAccountType;->getAccountType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1119
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1120
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeCSDKAdobeIdAuthenticatorHelper;->getStoredAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1122
    if-nez v1, :cond_1

    .line 1123
    const-string/jumbo v1, "error_description"

    const-string/jumbo v2, "NO ACCOUNTS FOUND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    new-instance v1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->ADOBE_AUTH_ERROR_CODE_ADD_ACCOUNT_TO_ACCOUNT_MANAGER:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;-><init>(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/util/HashMap;)V

    .line 1125
    if-eqz p5, :cond_0

    .line 1126
    invoke-interface {p5, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onError(Ljava/lang/Object;)V

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    array-length v0, v1

    if-lez v0, :cond_2

    .line 1128
    if-eqz p5, :cond_0

    .line 1129
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1131
    :cond_2
    invoke-direct {p0, p5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->saveAccountDetailsSSO(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/IAdobeAuthManagerCallback;)V

    goto :goto_0
.end method

.method public setAdditionalScopeList([Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 763
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 765
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_ignoreCceScope:Z

    if-eqz v1, :cond_0

    .line 767
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_hasPrivateCloudScope:Z

    .line 768
    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdditionalClientScopes([Ljava/lang/String;)V

    .line 791
    :goto_0
    return-void

    .line 773
    :cond_0
    if-eqz p1, :cond_2

    .line 775
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 776
    new-array v1, v1, [Ljava/lang/String;

    .line 777
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 779
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 781
    :cond_1
    array-length v0, p1

    const-string/jumbo v3, "sao.cce_private"

    aput-object v3, v1, v0

    move-object v0, v1

    .line 788
    :goto_2
    iput-boolean v4, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_hasPrivateCloudScope:Z

    .line 789
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdditionalClientScopes([Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    .line 786
    const-string/jumbo v3, "sao.cce_private"

    aput-object v3, v1, v0

    move-object v0, v1

    goto :goto_2
.end method

.method public setAsAdobeApp()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isAdobeApplication:Z

    .line 342
    return-void
.end method

.method public setAuthenticationEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setEnvironment(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;)V

    .line 740
    :cond_0
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;[Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 754
    invoke-virtual {v0, p8}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setCipherKey([B)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 755
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeDevice:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setGrantType(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;)V

    .line 757
    invoke-virtual {p0, p7}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAdditionalScopeList([Ljava/lang/String;)V

    .line 758
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mAuthOptions:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    .line 760
    :cond_0
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 293
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 296
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;->AdobeAuthOptionsHideSignUpOnSignIn:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mAuthOptions:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    .line 297
    invoke-virtual {v0, p5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setCipherKey([B)V

    .line 298
    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setRedirectURI(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeAuthorization:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setGrantType(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;)V

    .line 301
    invoke-direct {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setAuthenticationParametersWithClientID([Ljava/lang/String;)V

    .line 302
    iput-boolean v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_hasPrivateCloudScope:Z

    .line 305
    :cond_0
    return-void
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 276
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;->AdobeAuthOptionsHideSignUpOnSignIn:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mAuthOptions:[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;

    .line 280
    invoke-virtual {v0, p3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setCipherKey([B)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;->AdobeAuthIMSGrantTypeAuthorization:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setGrantType(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSGrantType;)V

    .line 283
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setAdditionalClientScopes([Ljava/lang/String;)V

    .line 284
    iput-boolean v6, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_hasPrivateCloudScope:Z

    .line 287
    :cond_0
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_currentTopActivity:Landroid/app/Activity;

    .line 139
    return-void
.end method

.method public setEncryptionKey([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setCipherKey([B)V

    .line 329
    return-void
.end method

.method public setRedirectURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->setRedirectURI(Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method setSignInClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->mSignInClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    .line 1095
    return-void
.end method

.method public socialLogin(Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;)V
    .locals 4

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setCurrentLauncherObject(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthSessionLauncher;)V

    .line 492
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;->getSocialLoginParams()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;->getIdp_token()Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams;->getProvider()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;

    move-result-object v0

    .line 498
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppLogin:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;-><init>(Ljava/lang/String;)V

    .line 500
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeAuthSocialSessionLauncher;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;)V

    .line 548
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->setSignInClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    .line 550
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$9;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$auth$AdobeSocialLoginParams$SocialProvider:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeSocialLoginParams$SocialProvider;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 552
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->loginWithFacebookToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    goto :goto_0

    .line 555
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->loginWithGoogleToken(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;)V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public switchAccount()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->switchAccount()V

    .line 422
    return-void
.end method

.method public unregisterContinuableClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeUXAuthDelegate;)V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$ContinuableEventObserver;->unregisterForContinuableEvent()V

    .line 727
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_continuableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :cond_0
    return-void
.end method

.method public unregisterLoginClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->unregisterForLogin()V

    .line 703
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_loginMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_0
    return-void
.end method

.method public unregisterLogoutClient(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;->unregisterForLogout()V

    .line 715
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->_logoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_0
    return-void
.end method

.method public willAccessTokenBeValidIn(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1471
    .line 1473
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 1475
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getIMSService()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessTokenExpirationTime()Ljava/util/Date;

    move-result-object v1

    .line 1479
    if-eqz v1, :cond_0

    .line 1481
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1485
    :cond_0
    return v0
.end method
