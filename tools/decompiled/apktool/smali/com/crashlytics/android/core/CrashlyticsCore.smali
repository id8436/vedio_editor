.class public Lcom/crashlytics/android/core/CrashlyticsCore;
.super Lc/a/a/a/q;
.source "CrashlyticsCore.java"


# annotations
.annotation runtime Lc/a/a/a/a/c/n;
    a = {
        Lcom/crashlytics/android/core/internal/CrashEventDataProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/q",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final CLS_DEFAULT_PROCESS_DELAY:F = 1.0f

.field static final COLLECT_CUSTOM_KEYS:Ljava/lang/String; = "com.crashlytics.CollectCustomKeys"

.field static final COLLECT_CUSTOM_LOGS:Ljava/lang/String; = "com.crashlytics.CollectCustomLogs"

.field static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field static final CRASHLYTICS_REQUIRE_BUILD_ID:Ljava/lang/String; = "com.crashlytics.RequireBuildId"

.field static final CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT:Z = true

.field static final DEFAULT_MAIN_HANDLER_TIMEOUT_SEC:I = 0x4

.field private static final INITIALIZATION_MARKER_FILE_NAME:Ljava/lang/String; = "initialization_marker"

.field static final MAX_ATTRIBUTES:I = 0x40

.field static final MAX_ATTRIBUTE_SIZE:I = 0x400

.field private static final PREF_ALWAYS_SEND_REPORTS_KEY:Ljava/lang/String; = "always_send_reports_opt_in"

.field private static final SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT:Z = false

.field public static final TAG:Ljava/lang/String; = "CrashlyticsCore"


# instance fields
.field private final attributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buildId:Ljava/lang/String;

.field private delay:F

.field private disabled:Z

.field private executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

.field private externalCrashEventDataProvider:Lcom/crashlytics/android/core/internal/CrashEventDataProvider;

.field private handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

.field private httpRequestFactory:Lc/a/a/a/a/e/m;

.field private initializationMarkerFile:Ljava/io/File;

.field private installerPackageName:Ljava/lang/String;

.field private listener:Lcom/crashlytics/android/core/CrashlyticsListener;

.field private packageName:Ljava/lang/String;

.field private final pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

.field private sdkDir:Ljava/io/File;

.field private final startTime:J

.field private userEmail:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;Z)V

    .line 201
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;Z)V
    .locals 6

    .prologue
    .line 205
    const-string/jumbo v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lc/a/a/a/a/b/v;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;ZLjava/util/concurrent/ExecutorService;)V

    .line 207
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;ZLjava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Lc/a/a/a/q;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->startTime:J

    .line 217
    iput p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->delay:F

    .line 218
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    .line 219
    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    .line 220
    iput-boolean p4, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    .line 221
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    invoke-direct {v0, p5}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/core/CrashlyticsCore;)Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->initializationMarkerFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/CrashlyticsCore;Landroid/app/Activity;Lc/a/a/a/a/g/o;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSendDecisionFromUser(Landroid/app/Activity;Lc/a/a/a/a/g/o;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/crashlytics/android/core/CrashlyticsCore;FI)I
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->dipsToPixels(FI)I

    move-result v0

    return v0
.end method

.method private dipsToPixels(FI)I
    .locals 1

    .prologue
    .line 1061
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private doLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string/jumbo v0, "prior to logging messages."

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->ensureFabricWithCalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->startTime:J

    sub-long/2addr v0, v2

    .line 460
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsCore;->formatLogMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeToLog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static ensureFabricWithCalled(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1039
    invoke-static {}, Lcom/crashlytics/android/core/CrashlyticsCore;->getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    const/4 v0, 0x0

    .line 1046
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finishInitSynchronously()V
    .locals 4

    .prologue
    .line 658
    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$1;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    .line 670
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/y;

    .line 671
    invoke-virtual {v1, v0}, Lc/a/a/a/a/c/s;->addDependency(Lc/a/a/a/a/c/y;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getFabric()Lc/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 676
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 689
    :goto_1
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 684
    :catch_1
    move-exception v0

    .line 685
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 686
    :catch_2
    move-exception v0

    .line 687
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static formatLogMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc/a/a/a/a/b/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/crashlytics/android/core/CrashlyticsCore;
    .locals 1

    .prologue
    .line 406
    const-class v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-static {v0}, Lc/a/a/a/f;->a(Ljava/lang/Class;)Lc/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    return-object v0
.end method

.method private getSendDecisionFromUser(Landroid/app/Activity;Lc/a/a/a/a/g/o;)Z
    .locals 6

    .prologue
    .line 939
    new-instance v4, Lcom/crashlytics/android/core/DialogStringResolver;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/core/DialogStringResolver;-><init>(Landroid/content/Context;Lc/a/a/a/a/g/o;)V

    .line 943
    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;Lcom/crashlytics/android/core/CrashlyticsCore$1;)V

    .line 947
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore$7;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/CrashlyticsCore$7;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;Landroid/app/Activity;Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;Lcom/crashlytics/android/core/DialogStringResolver;Lc/a/a/a/a/g/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1012
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;->await()V

    .line 1014
    invoke-virtual {v3}, Lcom/crashlytics/android/core/CrashlyticsCore$OptInLatch;->getOptIn()Z

    move-result v0

    return v0
.end method

.method private isRequiringBuildId(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1026
    const-string/jumbo v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lc/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static recordFatalExceptionEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 722
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lc/a/a/a/f;->a(Ljava/lang/Class;)Lc/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    .line 723
    if-eqz v0, :cond_0

    .line 724
    new-instance v1, Lc/a/a/a/a/b/q;

    invoke-direct {v1, p0}, Lc/a/a/a/a/b/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->onException(Lc/a/a/a/a/b/q;)V

    .line 727
    :cond_0
    return-void
.end method

.method static recordLoggedExceptionEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 711
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lc/a/a/a/f;->a(Ljava/lang/Class;)Lc/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    .line 712
    if-eqz v0, :cond_0

    .line 713
    new-instance v1, Lc/a/a/a/a/b/r;

    invoke-direct {v1, p0}, Lc/a/a/a/a/b/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->onException(Lc/a/a/a/a/b/r;)V

    .line 716
    :cond_0
    return-void
.end method

.method private static sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 1051
    if-eqz p0, :cond_0

    .line 1052
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1053
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1057
    :cond_0
    return-object p0
.end method

.method private setAndValidateKitProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsPinningInfoProvider;-><init>(Lcom/crashlytics/android/core/PinningInfoProvider;)V

    .line 308
    :goto_0
    new-instance v1, Lc/a/a/a/a/e/b;

    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/a/a/a/a/e/b;-><init>(Lc/a/a/a/t;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lc/a/a/a/a/e/m;

    .line 309
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lc/a/a/a/a/e/m;

    invoke-interface {v1, v0}, Lc/a/a/a/a/e/m;->a(Lc/a/a/a/a/e/o;)V

    .line 312
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->packageName:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->installerPackageName:Ljava/lang/String;

    .line 314
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 318
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->versionCode:Ljava/lang/String;

    .line 319
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v0, "0.0"

    :goto_1
    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->versionName:Ljava/lang/String;

    .line 324
    invoke-static {p1}, Lc/a/a/a/a/b/m;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->buildId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_2
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->o()Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->buildId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->isRequiringBuildId(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getBuildIdValidator(Ljava/lang/String;Z)Lcom/crashlytics/android/core/BuildIdValidator;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/crashlytics/android/core/BuildIdValidator;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :cond_1
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Error setting up app properties"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method canSendWithUserApproval()Z
    .locals 3

    .prologue
    .line 908
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$6;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$6;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/g/q;->a(Lc/a/a/a/a/g/t;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public crash()V
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/crashlytics/android/core/CrashTest;

    invoke-direct {v0}, Lcom/crashlytics/android/core/CrashTest;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashTest;->indexOutOfBounds()V

    .line 631
    return-void
.end method

.method didPreviousInitializationComplete()Z
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$4;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationStarted()V

    .line 343
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->cleanInvalidTempFiles()V

    .line 346
    const/4 v0, 0x1

    .line 349
    :try_start_0
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/a/a/g/q;->b()Lc/a/a/a/a/g/w;

    move-result-object v1

    .line 351
    if-nez v1, :cond_0

    .line 352
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Received null settings, skipping initialization!"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    .line 389
    :goto_0
    return-object v5

    .line 356
    :cond_0
    :try_start_1
    iget-object v2, v1, Lc/a/a/a/a/g/w;->d:Lc/a/a/a/a/g/m;

    iget-boolean v2, v2, Lc/a/a/a/a/g/m;->c:Z

    if-eqz v2, :cond_1

    .line 357
    const/4 v0, 0x0

    .line 358
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->finalizeSessions()Z

    .line 360
    invoke-virtual {p0, v1}, Lcom/crashlytics/android/core/CrashlyticsCore;->getCreateReportSpiCall(Lc/a/a/a/a/g/w;)Lcom/crashlytics/android/core/CreateReportSpiCall;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_3

    .line 362
    new-instance v2, Lcom/crashlytics/android/core/ReportUploader;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/core/ReportUploader;-><init>(Lcom/crashlytics/android/core/CreateReportSpiCall;)V

    iget v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->delay:F

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/core/ReportUploader;->uploadReports(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 372
    :try_start_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Crash reporting disabled."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    goto :goto_0

    .line 364
    :cond_3
    :try_start_3
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Unable to create a call to upload reports."

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 367
    :catch_0
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 368
    :try_start_4
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_1

    .line 374
    :catch_1
    move-exception v0

    .line 375
    :try_start_5
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->markInitializationComplete()V

    throw v0
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method getBuildIdValidator(Ljava/lang/String;Z)Lcom/crashlytics/android/core/BuildIdValidator;
    .locals 1

    .prologue
    .line 739
    new-instance v0, Lcom/crashlytics/android/core/BuildIdValidator;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/core/BuildIdValidator;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method getCreateReportSpiCall(Lc/a/a/a/a/g/w;)Lcom/crashlytics/android/core/CreateReportSpiCall;
    .locals 4

    .prologue
    .line 929
    if-eqz p1, :cond_0

    .line 930
    new-instance v0, Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lc/a/a/a/a/g/w;->a:Lc/a/a/a/a/g/e;

    iget-object v2, v2, Lc/a/a/a/a/g/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lc/a/a/a/a/e/m;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;-><init>(Lc/a/a/a/q;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/m;)V

    .line 934
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getExternalCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;
    .locals 2

    .prologue
    .line 851
    const/4 v0, 0x0

    .line 852
    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->externalCrashEventDataProvider:Lcom/crashlytics/android/core/internal/CrashEventDataProvider;

    if-eqz v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->externalCrashEventDataProvider:Lcom/crashlytics/android/core/internal/CrashEventDataProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/internal/CrashEventDataProvider;->getCrashEventData()Lcom/crashlytics/android/core/internal/models/SessionEventData;

    move-result-object v0

    .line 855
    :cond_0
    return-object v0
.end method

.method getHandler()Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const-string/jumbo v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lc/a/a/a/a/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPinningInfoProvider()Lcom/crashlytics/android/core/PinningInfoProvider;
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->pinningInfo:Lcom/crashlytics/android/core/PinningInfoProvider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSdkDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->sdkDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Lc/a/a/a/a/f/b;

    invoke-direct {v0, p0}, Lc/a/a/a/a/f/b;-><init>(Lc/a/a/a/q;)V

    invoke-virtual {v0}, Lc/a/a/a/a/f/b;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->sdkDir:Ljava/io/File;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->sdkDir:Ljava/io/File;

    return-object v0
.end method

.method getSessionSettingsData()Lc/a/a/a/a/g/p;
    .locals 1

    .prologue
    .line 1021
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->b()Lc/a/a/a/a/g/w;

    move-result-object v0

    .line 1022
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lc/a/a/a/a/g/w;->b:Lc/a/a/a/a/g/p;

    goto :goto_0
.end method

.method getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string/jumbo v0, "2.3.5.79"

    return-object v0
.end method

.method getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method internalVerifyPinning(Ljava/net/URL;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getPinningInfoProvider()Lcom/crashlytics/android/core/PinningInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->httpRequestFactory:Lc/a/a/a/a/e/m;

    sget-object v2, Lc/a/a/a/a/e/d;->a:Lc/a/a/a/a/e/d;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/a/e/m;->a(Lc/a/a/a/a/e/d;Ljava/lang/String;)Lc/a/a/a/a/e/e;

    move-result-object v2

    .line 866
    invoke-virtual {v2}, Lc/a/a/a/a/e/e;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 867
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 870
    invoke-virtual {v2}, Lc/a/a/a/a/e/e;->b()I

    .line 871
    const/4 v0, 0x1

    .line 873
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 478
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/core/CrashlyticsCore;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lc/a/a/a/t;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 482
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x3

    const-string/jumbo v1, "CrashlyticsCore"

    invoke-direct {p0, v0, v1, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string/jumbo v0, "prior to logging exceptions."

    invoke-static {v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->ensureFabricWithCalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    if-nez p1, :cond_2

    .line 430
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const/4 v1, 0x5

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/t;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method markInitializationComplete()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$3;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 827
    return-void
.end method

.method markInitializationStarted()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$2;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method protected onPreExecute()Z
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lc/a/a/a/q;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->onPreExecute(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method onPreExecute(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 302
    :goto_0
    return v0

    .line 243
    :cond_0
    new-instance v0, Lc/a/a/a/a/b/k;

    invoke-direct {v0}, Lc/a/a/a/a/b/k;-><init>()V

    invoke-virtual {v0, p1}, Lc/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-nez v0, :cond_1

    move v0, v7

    .line 246
    goto :goto_0

    .line 249
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing Crashlytics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/a/a/a/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getSdkDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "initialization_marker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->initializationMarkerFile:Ljava/io/File;

    .line 255
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setAndValidateKitProperties(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    :try_start_1
    new-instance v5, Lcom/crashlytics/android/core/SessionDataWriter;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->buildId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2}, Lcom/crashlytics/android/core/SessionDataWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Installing exception handler..."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->executorServiceWrapper:Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getIdManager()Lc/a/a/a/a/b/z;

    move-result-object v4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/CrashlyticsExecutorServiceWrapper;Lc/a/a/a/a/b/z;Lcom/crashlytics/android/core/SessionDataWriter;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    .line 272
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->didPreviousInitializationComplete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 277
    :try_start_2
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->openSession()V

    .line 279
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 280
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Successfully installed exception handler."

    invoke-interface {v0, v2, v3}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {p1}, Lc/a/a/a/a/b/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->finishInitSynchronously()V

    move v0, v7

    .line 292
    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    move v1, v7

    .line 283
    :goto_2
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "There was a problem installing the exception handler."

    invoke-interface {v2, v3, v4, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 295
    :catch_1
    move-exception v0

    .line 297
    new-instance v1, Lc/a/a/a/a/c/z;

    invoke-direct {v1, v0}, Lc/a/a/a/a/c/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 294
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 298
    :catch_2
    move-exception v0

    .line 299
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 302
    goto/16 :goto_0

    .line 282
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 584
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 593
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method setExternalCrashEventDataProvider(Lcom/crashlytics/android/core/internal/CrashEventDataProvider;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->externalCrashEventDataProvider:Lcom/crashlytics/android/core/internal/CrashEventDataProvider;

    .line 844
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 602
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 611
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public declared-synchronized setListener(Lcom/crashlytics/android/core/CrashlyticsListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Use of setListener is deprecated."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    if-nez p1, :cond_0

    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 700
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    monitor-exit p0

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 620
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/core/CrashlyticsCore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method setShouldSendUserReportsWithoutPrompting(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lc/a/a/a/a/f/d;

    invoke-direct {v0, p0}, Lc/a/a/a/a/f/d;-><init>(Lc/a/a/a/q;)V

    .line 904
    invoke-interface {v0}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 905
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 555
    :cond_0
    if-nez p1, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a/b/m;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-static {p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 569
    :cond_3
    if-nez p2, :cond_4

    const-string/jumbo v0, ""

    .line 570
    :goto_1
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->cacheKeyData(Ljava/util/Map;)V

    goto :goto_0

    .line 569
    :cond_4
    invoke-static {p2}, Lcom/crashlytics/android/core/CrashlyticsCore;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 573
    :cond_5
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->cacheUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_0

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->cacheUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->disabled:Z

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->handler:Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore;->userEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler;->cacheUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldPromptUserBeforeSendingCrashReports()Z
    .locals 3

    .prologue
    .line 884
    invoke-static {}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsCore$5;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsCore$5;-><init>(Lcom/crashlytics/android/core/CrashlyticsCore;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/a/g/q;->a(Lc/a/a/a/a/g/t;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method shouldSendReportsWithoutPrompting()Z
    .locals 3

    .prologue
    .line 897
    new-instance v0, Lc/a/a/a/a/f/d;

    invoke-direct {v0, p0}, Lc/a/a/a/a/f/d;-><init>(Lc/a/a/a/q;)V

    .line 898
    invoke-interface {v0}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .locals 4

    .prologue
    .line 643
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsCore;->internalVerifyPinning(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 646
    :goto_0
    return v0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    invoke-static {}, Lc/a/a/a/f;->h()Lc/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Could not verify SSL pinning"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    const/4 v0, 0x0

    goto :goto_0
.end method
