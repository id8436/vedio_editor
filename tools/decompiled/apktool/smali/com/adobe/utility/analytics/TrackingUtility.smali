.class public Lcom/adobe/utility/analytics/TrackingUtility;
.super Ljava/lang/Object;
.source "TrackingUtility.java"


# static fields
.field public static final ANALYTICSACTIONID_EMAIL_SENT:Ljava/lang/String; = "Email Sent"

.field public static final ANALYTICSACTIONID_EMAIL_WINDOW_CLOSE:Ljava/lang/String; = "Email Window Close"

.field public static final ANALYTICSACTIONID_EMAIL_WINDOW_OPEN:Ljava/lang/String; = "Email Window Open"

.field public static final ANALYTICSACTIONID_NEWPROJECT:Ljava/lang/String; = "New Project"

.field public static final ANALYTICSKEY_INAPP_WORKFLOW_TYPE:Ljava/lang/String; = "InAppEmail-Workflow"

.field public static final EMAIL_SENT:Ljava/lang/String; = "email-sent"

.field public static final EMAIL_WINDOW_CLOSE:Ljava/lang/String; = "email-window-close"

.field public static final EMAIL_WINDOW_OPEN:Ljava/lang/String; = "email-window-open"

.field public static final EVENT_ACTION:Ljava/lang/String; = "adb.mobile.event.action"

.field public static final EVENT_AREA:Ljava/lang/String; = "adb.mobile.event.area"

.field public static final EVENT_NAME:Ljava/lang/String; = "adb.mobile.event.name"

.field public static final INAPP_MAIL_FEEDBACK:Ljava/lang/String; = "Feedback"

.field public static final INAPP_MAIL_PHOTOSHOP:Ljava/lang/String; = "Photoshop"

.field public static final OMNITURE_PERMISSION:Ljava/lang/String; = "OmniturePermission"

.field public static final WORKFLOW_TYPE:Ljava/lang/String; = "adb.mobile.event.type"

.field private static sharedSingleton:Lcom/adobe/utility/analytics/TrackingUtility;

.field private static trackingPrefix:Ljava/lang/String;


# instance fields
.field private _AAEnabled:Z

.field protected _analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

.field private applicationContext:Landroid/content/Context;

.field private nameSpace:Ljava/lang/String;

.field private productCategory:Ljava/lang/String;

.field private productClientID:Ljava/lang/String;

.field private productLocale:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/utility/analytics/TrackingUtility;->sharedSingleton:Lcom/adobe/utility/analytics/TrackingUtility;

    .line 46
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/utility/analytics/TrackingUtility;->trackingPrefix:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_AAEnabled:Z

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/adobe/utility/analytics/TrackingUtility;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/adobe/utility/analytics/TrackingUtility;->sharedSingleton:Lcom/adobe/utility/analytics/TrackingUtility;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/adobe/utility/analytics/TrackingUtility;

    invoke-direct {v0}, Lcom/adobe/utility/analytics/TrackingUtility;-><init>()V

    sput-object v0, Lcom/adobe/utility/analytics/TrackingUtility;->sharedSingleton:Lcom/adobe/utility/analytics/TrackingUtility;

    .line 43
    :cond_0
    sget-object v0, Lcom/adobe/utility/analytics/TrackingUtility;->sharedSingleton:Lcom/adobe/utility/analytics/TrackingUtility;

    return-object v0
.end method

.method private setCommonTrackingData()V
    .locals 3

    .prologue
    .line 155
    const-string/jumbo v0, "mobile"

    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productCategory:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "psmixAndroid"

    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->nameSpace:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "OrionPS1"

    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productClientID:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string/jumbo v2, "1.0"

    iput-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productVersion:Ljava/lang/String;

    .line 165
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productLocale:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->getTrackingValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->startAnalyticsSession()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_AAEnabled:Z

    .line 176
    :cond_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public configure(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    .line 134
    iget-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/mobile/Config;->setContext(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->getTrackingValue()Z

    move-result v0

    .line 137
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/utility/analytics/TrackingUtility;->updateMobilePrivacyConfiguration(Ljava/lang/Boolean;)V

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->startAnalyticsSession()V

    .line 141
    :cond_0
    return-void
.end method

.method public getTrackingValue()Z
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "OmniturePermission"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 257
    return v0
.end method

.method public makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V
    .locals 5

    .prologue
    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 370
    const-string/jumbo v2, "mboxHost"

    const-string/jumbo v3, "premiereclipdev"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v2, "clipUserLocale"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v2, "ABTrackingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "productLocale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {p1, p2, v1}, Lcom/adobe/mobile/Target;->createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/adobe/mobile/TargetLocationRequest;

    move-result-object v0

    .line 376
    new-instance v2, Lcom/adobe/utility/analytics/TrackingUtility$2;

    invoke-direct {v2, p0, p3, v1}, Lcom/adobe/utility/analytics/TrackingUtility$2;-><init>(Lcom/adobe/utility/analytics/TrackingUtility;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Lcom/adobe/mobile/Target;->loadRequest(Lcom/adobe/mobile/TargetLocationRequest;Lcom/adobe/mobile/Target$TargetCallback;)V

    .line 382
    return-void
.end method

.method public setDebugLogging(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 261
    invoke-static {p1}, Lcom/adobe/mobile/Config;->setDebugLogging(Ljava/lang/Boolean;)V

    .line 262
    return-void
.end method

.method public setTrackingValue(Z)V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->getTrackingValue()Z

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "OmniturePermission"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/utility/analytics/TrackingUtility;->updateMobilePrivacyConfiguration(Ljava/lang/Boolean;)V

    .line 234
    if-eq v0, p1, :cond_0

    .line 235
    iget-boolean v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_AAEnabled:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->stopAnalyticsSession()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_AAEnabled:Z

    .line 244
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/utility/analytics/TrackingUtility;->startAnalyticsSession()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_AAEnabled:Z

    goto :goto_0
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    invoke-static {p1}, Lcom/adobe/mobile/Config;->setUserIdentifier(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public startAnalyticsSession()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/adobe/utility/analytics/TrackingUtility$1;

    invoke-direct {v0, p0}, Lcom/adobe/utility/analytics/TrackingUtility$1;-><init>(Lcom/adobe/utility/analytics/TrackingUtility;)V

    iput-object v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 209
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    iget-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registerDelegate(Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;Landroid/content/Context;)V

    .line 210
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;->ADOBE_ANALYTICS_MODE_PRODUCTION:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->enableAnalyticsReporting(Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsMode;)V

    .line 211
    return-void
.end method

.method public startTrackingLifecycleData()V
    .locals 0

    .prologue
    .line 286
    invoke-static {}, Lcom/adobe/mobile/Config;->collectLifecycleData()V

    .line 287
    return-void
.end method

.method public startTrackingLifecycleData(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 279
    invoke-static {p1}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 280
    return-void
.end method

.method public stopAnalyticsSession()V
    .locals 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/adobe/utility/analytics/TrackingUtility;->_AAEnabled:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/utility/analytics/TrackingUtility;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->unregisterDelegate(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsManager;->disableAnalyticsReporting()V

    .line 218
    :cond_0
    return-void
.end method

.method public stopTrackingLifecycleData()V
    .locals 0

    .prologue
    .line 293
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 294
    return-void
.end method

.method public trackAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 347
    return-void
.end method

.method public trackOrionAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .line 302
    sget-object v0, Lcom/adobe/utility/analytics/TrackingUtility;->trackingPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adobe/utility/analytics/TrackingUtility;->trackingPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    :cond_0
    const-string/jumbo v2, "adb.event.eventInfo.eventName"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v2, "adb.page.pageInfo.productCategory"

    iget-object v3, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productCategory:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v2, "adb.page.pageInfo.namespace"

    iget-object v3, p0, Lcom/adobe/utility/analytics/TrackingUtility;->nameSpace:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string/jumbo v2, "adb.page.pageInfo.productVersion"

    iget-object v3, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v2, "adb.page.pageInfo.language"

    iget-object v3, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productLocale:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string/jumbo v2, "adb.user.profile.attributes.clientId"

    iget-object v3, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productClientID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {v0, v1}, Lcom/adobe/mobile/Analytics;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public trackOrionState(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    if-eqz p2, :cond_0

    .line 327
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 330
    :cond_0
    const-string/jumbo v1, "adb.page.pageInfo.productCategory"

    iget-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productCategory:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v1, "adb.page.pageInfo.namespace"

    iget-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->nameSpace:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v1, "adb.page.pageInfo.productVersion"

    iget-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v1, "adb.page.pageInfo.language"

    iget-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productLocale:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v1, "adb.user.profile.attributes.clientId"

    iget-object v2, p0, Lcom/adobe/utility/analytics/TrackingUtility;->productClientID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v1, "adb.page.pageInfo.pageName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string/jumbo v1, "adb.page.pageInfo.category.primaryCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-static {p1, v0}, Lcom/adobe/mobile/Analytics;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 339
    return-void
.end method

.method public trackState(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    return-void
.end method

.method public trackTimedActionEnd(Ljava/lang/String;Lcom/adobe/mobile/Analytics$TimedActionBlock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/mobile/Analytics$TimedActionBlock",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackTimedActionEnd(Ljava/lang/String;Lcom/adobe/mobile/Analytics$TimedActionBlock;)V

    .line 361
    return-void
.end method

.method public trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V

    .line 352
    return-void
.end method

.method public trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    return-void
.end method

.method public updateMobilePrivacyConfiguration(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/mobile/MobilePrivacyStatus;->MOBILE_PRIVACY_STATUS_OPT_IN:Lcom/adobe/mobile/MobilePrivacyStatus;

    .line 272
    :goto_0
    invoke-static {v0}, Lcom/adobe/mobile/Config;->setPrivacyStatus(Lcom/adobe/mobile/MobilePrivacyStatus;)V

    .line 273
    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/adobe/mobile/MobilePrivacyStatus;->MOBILE_PRIVACY_STATUS_OPT_OUT:Lcom/adobe/mobile/MobilePrivacyStatus;

    goto :goto_0
.end method
