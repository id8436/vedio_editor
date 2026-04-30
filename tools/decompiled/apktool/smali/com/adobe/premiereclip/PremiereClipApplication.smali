.class public Lcom/adobe/premiereclip/PremiereClipApplication;
.super Landroid/app/Application;
.source "PremiereClipApplication.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/auth/IAdobeAuthClientCredentials;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/adobe/premiereclip/PremiereClipApplication;

.field private static isInBackground:Z


# instance fields
.field private isFirstLogin:Z

.field private lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/PremiereClipApplication;->isInBackground:Z

    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->instance:Lcom/adobe/premiereclip/PremiereClipApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/adobe/premiereclip/PremiereClipApplication;->isInBackground:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 80
    sput-boolean p0, Lcom/adobe/premiereclip/PremiereClipApplication;->isInBackground:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/PremiereClipApplication;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->initAppState()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/adobe/premiereclip/PremiereClipApplication;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->instance:Lcom/adobe/premiereclip/PremiereClipApplication;

    return-object v0
.end method

.method private initAppState()V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/PremiereClipApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSync()V

    .line 318
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->getProjectListFromDCX()Ljava/util/ArrayList;

    .line 319
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAuthenticateUserWithAdobeID(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/adobe/utility/AndroidMiscUtils;->getFreeDiskspace()J

    move-result-wide v0

    .line 322
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didRetrieveDeviceFreeSpaceBytes(J)V

    .line 323
    return-void
.end method

.method private setApplicationCredentials(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 351
    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 355
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sao.hammersmith"

    aput-object v4, v5, v3

    .line 358
    invoke-static {v2}, Lcom/adobe/DeviceInfo/DeviceInfoProvider;->getUniqueDeviceID(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v4, v1

    .line 357
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->setAdditionalAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthOptions;[Ljava/lang/String;)V

    .line 359
    const-string/jumbo v0, "com.adobe.creativesdk.foundation.auth.adobeID.CC"

    .line 360
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->setAccessGroupAccountType(Ljava/lang/String;)V

    .line 361
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 204
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method public getAdditionalScopesList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    const-string/jumbo v0, "ClipAndroid1"

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const-string/jumbo v0, "17544f50-0868-421a-81e3-89333608effb"

    return-object v0
.end method

.method public getRedirectURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFirstLogin()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->isFirstLogin:Z

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 214
    sput-object p0, Lcom/adobe/premiereclip/PremiereClipApplication;->instance:Lcom/adobe/premiereclip/PremiereClipApplication;

    .line 215
    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->context:Landroid/content/Context;

    .line 216
    new-instance v0, Lcom/twitter/sdk/android/core/ad;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/ad;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/sdk/android/core/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/d;-><init>(I)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/ad;->a(Lcom/twitter/sdk/android/core/j;)Lcom/twitter/sdk/android/core/ad;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    const-string/jumbo v2, "W0QnNCGa5PjjVewQZpHD1e9sC"

    const-string/jumbo v3, "YKS10jaF14CpUsrocN98yljHJIszQiTt46qs8I6986vQXyPZhn"

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/ad;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/ad;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v5}, Lcom/twitter/sdk/android/core/ad;->a(Z)Lcom/twitter/sdk/android/core/ad;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/ad;->a()Lcom/twitter/sdk/android/core/ab;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/twitter/sdk/android/core/v;->a(Lcom/twitter/sdk/android/core/ab;)V

    .line 223
    new-array v0, v5, [Lc/a/a/a/q;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lc/a/a/a/f;->a(Landroid/content/Context;[Lc/a/a/a/q;)Lc/a/a/a/f;

    .line 226
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/utility/FontUtils;->initializeTypefaceCollections(Landroid/content/Context;)V

    .line 229
    invoke-static {}, Lcom/adobe/utility/FontUtils;->getInstance()Lcom/adobe/utility/FontUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/FontUtils;->getAdobeCleanLightTypefaceCollection()Lcom/h/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/h/a/d;->a(Lcom/h/a/a;)V

    .line 231
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->initializeIfNotInitialized(Landroid/content/Context;)V

    .line 233
    invoke-static {}, Lcom/adobe/premiereclip/automode/AutoModeManager;->getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/automode/AutoModeManager;->Initialize()V

    .line 235
    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->setApplicationCredentials(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/utility/analytics/TrackingUtility;->configure(Landroid/content/Context;)V

    .line 238
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/utility/analytics/TrackingUtility;->getTrackingValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didModifyAnalyticsCollection(Ljava/lang/Boolean;)V

    .line 240
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 241
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Online"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setConnectionState(Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didSetApplicationInstanceID(Ljava/lang/String;)V

    .line 248
    :cond_0
    const-string/jumbo v2, "developer"

    .line 249
    const-string/jumbo v0, "1.0"

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 254
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didStartAppWithBuildName(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/adobe/premiereclip/PremiereClipApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/ClipMusicCacheData;->copyImpactAndWaveformDataToCache(Landroid/content/Context;)V

    .line 262
    invoke-static {}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getSharedInstance()Lcom/adobe/premiereclip/library/ClipLibraryManager;

    .line 263
    invoke-static {}, Lcom/adobe/premiereclip/looks/LocalLooks;->init()V

    .line 264
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->init()V

    .line 265
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->initAssets()V

    .line 267
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/adobe/premiereclip/PremiereClipApplication;->initAppState()V

    .line 289
    :cond_1
    :goto_2
    new-instance v0, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;-><init>(Lcom/adobe/premiereclip/PremiereClipApplication;Lcom/adobe/premiereclip/PremiereClipApplication$1;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    .line 290
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 292
    return-void

    .line 241
    :cond_2
    const-string/jumbo v0, "Offline"

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 271
    :cond_3
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/PremiereClipApplication$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/PremiereClipApplication$1;-><init>(Lcom/adobe/premiereclip/PremiereClipApplication;)V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/CloudUtil;->initCloud(Landroid/content/Context;Lcom/adobe/premiereclip/util/CloudUtil$Listener;)V

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 298
    iget-object v0, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->lifeCycleHandler:Lcom/adobe/premiereclip/PremiereClipApplication$ApplicationLifecycleHandler;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/PremiereClipApplication;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 300
    :cond_0
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/analytics/TrackingUtility;->stopAnalyticsSession()V

    .line 302
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 303
    return-void
.end method

.method public setFirstLogin(Z)V
    .locals 0

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/adobe/premiereclip/PremiereClipApplication;->isFirstLogin:Z

    .line 369
    return-void
.end method
