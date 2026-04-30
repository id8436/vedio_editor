.class public Lcom/crashlytics/android/answers/Answers;
.super Lc/a/a/a/q;
.source "Answers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/q",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field static final FIRST_LAUNCH_INTERVAL_IN_MS:J = 0x36ee80L

.field static final PREF_STORE_NAME:Ljava/lang/String; = "settings"

.field public static final TAG:Ljava/lang/String; = "Answers"


# instance fields
.field analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

.field private installedAt:J

.field lifecycleManager:Lc/a/a/a/a;

.field preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lc/a/a/a/q;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/answers/Answers;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lc/a/a/a/f;->a(Ljava/lang/Class;)Lc/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    return-object v0
.end method

.method private initializeSessionAnalytics(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 423
    :try_start_0
    new-instance v4, Lcom/crashlytics/android/answers/SessionMetadataCollector;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/Answers;->versionCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/answers/Answers;->versionName:Ljava/lang/String;

    invoke-direct {v4, p1, v0, v1, v2}, Lcom/crashlytics/android/answers/SessionMetadataCollector;-><init>(Landroid/content/Context;Lc/a/a/a/a/b/z;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v3, Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;

    new-instance v0, Lc/a/a/a/a/f/b;

    invoke-direct {v0, p0}, Lc/a/a/a/a/f/b;-><init>(Lc/a/a/a/q;)V

    invoke-direct {v3, p1, v0}, Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;-><init>(Landroid/content/Context;Lc/a/a/a/a/f/a;)V

    .line 427
    new-instance v0, Lcom/crashlytics/android/answers/AnswersEventsHandler;

    new-instance v5, Lc/a/a/a/a/e/b;

    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    invoke-direct {v5, v1}, Lc/a/a/a/a/e/b;-><init>(Lc/a/a/a/t;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/AnswersEventsHandler;-><init>(Lc/a/a/a/q;Landroid/content/Context;Lcom/crashlytics/android/answers/AnswersFilesManagerProvider;Lcom/crashlytics/android/answers/SessionMetadataCollector;Lc/a/a/a/a/e/m;)V

    .line 431
    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersEventsHandler;->enable()V

    .line 432
    new-instance v1, Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/AnswersEventsHandler;)V

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    .line 433
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->lifecycleManager:Lc/a/a/a/a;

    new-instance v1, Lcom/crashlytics/android/answers/AnswersLifecycleCallbacks;

    iget-object v2, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/AnswersLifecycleCallbacks;-><init>(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)V

    invoke-virtual {v0, v1}, Lc/a/a/a/a;->a(Lc/a/a/a/d;)Z

    .line 435
    iget-wide v0, p0, Lcom/crashlytics/android/answers/Answers;->installedAt:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/Answers;->isFirstLaunch(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "New app install detected"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onInstall()V

    .line 438
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->setAnalyticsLaunched()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to initialize"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 388
    :try_start_0
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->b()Lc/a/a/a/a/g/w;

    move-result-object v0

    .line 389
    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Failed to retrieve settings"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 394
    :cond_0
    iget-object v1, v0, Lc/a/a/a/a/g/w;->d:Lc/a/a/a/a/g/m;

    iget-boolean v1, v1, Lc/a/a/a/a/g/m;->d:Z

    if-eqz v1, :cond_1

    .line 395
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Analytics collection enabled"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    iget-object v0, v0, Lc/a/a/a/a/g/w;->e:Lc/a/a/a/a/g/b;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->setAnalyticsSettingsData(Lc/a/a/a/a/g/b;Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Analytics collection disabled"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->lifecycleManager:Lc/a/a/a/a;

    invoke-virtual {v0}, Lc/a/a/a/a;->a()V

    .line 402
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    .line 403
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const-string/jumbo v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lc/a/a/a/a/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string/jumbo v0, "1.3.2.79"

    return-object v0
.end method

.method installedRecently(J)Z
    .locals 5

    .prologue
    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 473
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFirstLaunch(J)Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;->hasAnalyticsLaunched()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/Answers;->installedRecently(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logAddToCart(Lcom/crashlytics/android/answers/AddToCartEvent;)V
    .locals 2

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 248
    :cond_1
    return-void
.end method

.method public logContentView(Lcom/crashlytics/android/answers/ContentViewEvent;)V
    .locals 2

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 316
    :cond_1
    return-void
.end method

.method public logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V
    .locals 2

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 70
    :cond_1
    return-void
.end method

.method public logInvite(Lcom/crashlytics/android/answers/InviteEvent;)V
    .locals 2

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 160
    :cond_1
    return-void
.end method

.method public logLevelEnd(Lcom/crashlytics/android/answers/LevelEndEvent;)V
    .locals 2

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 223
    :cond_1
    return-void
.end method

.method public logLevelStart(Lcom/crashlytics/android/answers/LevelStartEvent;)V
    .locals 2

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 201
    :cond_1
    return-void
.end method

.method public logLogin(Lcom/crashlytics/android/answers/LoginEvent;)V
    .locals 2

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 117
    :cond_1
    return-void
.end method

.method public logPurchase(Lcom/crashlytics/android/answers/PurchaseEvent;)V
    .locals 2

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 96
    :cond_1
    return-void
.end method

.method public logRating(Lcom/crashlytics/android/answers/RatingEvent;)V
    .locals 2

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 294
    :cond_1
    return-void
.end method

.method public logSearch(Lcom/crashlytics/android/answers/SearchEvent;)V
    .locals 2

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 336
    :cond_1
    return-void
.end method

.method public logShare(Lcom/crashlytics/android/answers/ShareEvent;)V
    .locals 2

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 140
    :cond_1
    return-void
.end method

.method public logSignUp(Lcom/crashlytics/android/answers/SignUpEvent;)V
    .locals 2

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 181
    :cond_1
    return-void
.end method

.method public logStartCheckout(Lcom/crashlytics/android/answers/StartCheckoutEvent;)V
    .locals 2

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onPredefined(Lcom/crashlytics/android/answers/PredefinedEvent;)V

    .line 271
    :cond_1
    return-void
.end method

.method public onException(Lc/a/a/a/a/b/q;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {p1}, Lc/a/a/a/a/b/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onCrash(Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.method public onException(Lc/a/a/a/a/b/r;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {p1}, Lc/a/a/a/a/b/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onError(Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method protected onPreExecute()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 355
    new-instance v1, Lc/a/a/a/a/f/d;

    const-string/jumbo v3, "settings"

    invoke-direct {v1, v2, v3}, Lc/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    new-instance v3, Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    invoke-direct {v3, v1}, Lcom/crashlytics/android/answers/AnswersPreferenceManager;-><init>(Lc/a/a/a/a/f/c;)V

    iput-object v3, p0, Lcom/crashlytics/android/answers/Answers;->preferenceManager:Lcom/crashlytics/android/answers/AnswersPreferenceManager;

    .line 358
    new-instance v1, Lc/a/a/a/a;

    invoke-direct {v1, v2}, Lc/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->lifecycleManager:Lc/a/a/a/a;

    .line 360
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 361
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 362
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 364
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->versionCode:Ljava/lang/String;

    .line 365
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "0.0"

    :goto_0
    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->versionName:Ljava/lang/String;

    .line 368
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v1, v4, :cond_1

    .line 369
    iget-wide v4, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v4, p0, Lcom/crashlytics/android/answers/Answers;->installedAt:J

    .line 376
    :goto_1
    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/Answers;->initializeSessionAnalytics(Landroid/content/Context;)V

    .line 378
    const/4 v0, 0x1

    .line 382
    :goto_2
    return v0

    .line 365
    :cond_0
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 373
    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/crashlytics/android/answers/Answers;->installedAt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 379
    :catch_0
    move-exception v1

    .line 380
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "Answers"

    const-string/jumbo v4, "Error retrieving app properties"

    invoke-interface {v2, v3, v4, v1}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
