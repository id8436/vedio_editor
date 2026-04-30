.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;
.super Ljava/lang/Object;
.source "AdobeAnalyticsETSJobManager.java"


# static fields
.field private static sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;


# instance fields
.field private jobManager:Lcom/a/a/a/v;

.field private jobQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private jobsAddedPerTimer:Ljava/util/concurrent/atomic/AtomicInteger;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobManager:Lcom/a/a/a/v;

    .line 54
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timerTask:Ljava/util/TimerTask;

    .line 55
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timer:Ljava/util/Timer;

    .line 61
    new-instance v0, Lcom/a/a/a/c/c;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/a/c/c;-><init>(Landroid/content/Context;)V

    .line 62
    const-string/jumbo v1, "AnalyticsJobManager"

    invoke-virtual {v0, v1}, Lcom/a/a/a/c/c;->a(Ljava/lang/String;)Lcom/a/a/a/c/c;

    .line 63
    invoke-virtual {v0}, Lcom/a/a/a/c/c;->a()Lcom/a/a/a/c/a;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/a/a/a/v;

    invoke-direct {v1, v0}, Lcom/a/a/a/v;-><init>(Lcom/a/a/a/c/a;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobManager:Lcom/a/a/a/v;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobsAddedPerTimer:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sendEvents()V

    return-void
.end method

.method private getEventDataObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    const-string/jumbo v1, "time"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->getDateTimeForIngest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string/jumbo v1, "ingesttype"

    const-string/jumbo v2, "dunamis"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentProductionUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v1, v2, :cond_0

    .line 125
    const-string/jumbo v1, "environment"

    const-string/jumbo v2, "prod"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string/jumbo v1, "environment"

    const-string/jumbo v2, "stage"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    .line 75
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->initializeJobQueue()V

    .line 76
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->initializeTimerTask()V

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->sharedJobManager:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initializeJobQueue()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobQueue:Ljava/util/Queue;

    .line 99
    return-void
.end method

.method private initializeTimerTask()V
    .locals 6

    .prologue
    .line 103
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timer:Ljava/util/Timer;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobsAddedPerTimer:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timerTask:Ljava/util/TimerTask;

    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 116
    return-void
.end method

.method private declared-synchronized sendEvents()V
    .locals 5

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobQueue:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 162
    const/16 v3, 0x64

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-ge v0, v3, :cond_0

    .line 165
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    :try_start_1
    const-string/jumbo v0, "events"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobManager:Lcom/a/a/a/v;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJob;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/a/a/a/v;->a(Lcom/a/a/a/r;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addNewEvent(Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;)V
    .locals 4

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->data:Ljava/util/Map;

    .line 135
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobsAddedPerTimer:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->getEventDataObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    const-string/jumbo v2, "project"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v2, "project"

    const-string/jumbo v3, "project"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v2, "project"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 144
    const-string/jumbo v2, "data"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->jobQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableAnalyticsReporting()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->disableAnalyticsReporting()V

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSJobManager;->timer:Ljava/util/Timer;

    .line 95
    :cond_0
    return-void
.end method

.method public enableAnalyticsReporting()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSession;->enableAnalyticsReporting()V

    .line 86
    return-void
.end method
