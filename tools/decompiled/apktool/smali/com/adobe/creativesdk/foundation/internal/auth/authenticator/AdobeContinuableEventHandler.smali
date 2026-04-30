.class public Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;
.super Ljava/lang/Object;
.source "AdobeContinuableEventHandler.java"


# static fields
.field private static continuableEventHandler:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;


# instance fields
.field private isTimerActivated:Z

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->continuableEventHandler:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->isTimerActivated:Z

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V

    .line 41
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNotificationContinualActivityClosed:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->handleContinualActivityClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->stopTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->refreshToken()V

    return-void
.end method

.method private handleContinualActivityClose()V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->isTimerActivated:Z

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->isTimerActivated:Z

    .line 50
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->startTimer()V

    .line 53
    :cond_0
    monitor-exit p0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized refreshToken()V
    .locals 3

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->isTimerActivated:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static startContinuableEventHandler()V
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->continuableEventHandler:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->continuableEventHandler:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    .line 26
    :cond_0
    monitor-exit v1

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 57
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->timer:Ljava/util/Timer;

    .line 58
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$FifteenSecondsTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$FifteenSecondsTimerTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->task:Ljava/util/TimerTask;

    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3a98

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 60
    return-void
.end method

.method public static stopContinuableTimer()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->continuableEventHandler:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->continuableEventHandler:Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->stopTimer()V

    .line 32
    :cond_0
    return-void
.end method

.method private declared-synchronized stopTimer()V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->isTimerActivated:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/authenticator/AdobeContinuableEventHandler;->isTimerActivated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
