.class public Lcom/adobe/premiereclip/automode/AutoModeManager;
.super Ljava/lang/Object;
.source "AutoModeManager.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x8

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final MAXIMUM_POOL_SIZE:I = 0x8

.field private static NUMBER_OF_CORES:I

.field private static _sharedInstance:Lcom/adobe/premiereclip/automode/AutoModeManager;


# instance fields
.field private final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/adobe/premiereclip/automode/AutoModeManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 59
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/adobe/premiereclip/automode/AutoModeManager;->NUMBER_OF_CORES:I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/premiereclip/automode/AutoModeManager;->_sharedInstance:Lcom/adobe/premiereclip/automode/AutoModeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/automode/AutoModeManager;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/adobe/premiereclip/automode/AutoModeManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/adobe/premiereclip/automode/AutoModeManager;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/automode/AutoModeManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 72
    return-void
.end method

.method public static getSharedInstance()Lcom/adobe/premiereclip/automode/AutoModeManager;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcom/adobe/premiereclip/automode/AutoModeManager;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/automode/AutoModeManager;->_sharedInstance:Lcom/adobe/premiereclip/automode/AutoModeManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/adobe/premiereclip/automode/AutoModeManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/automode/AutoModeManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/automode/AutoModeManager;->_sharedInstance:Lcom/adobe/premiereclip/automode/AutoModeManager;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/adobe/premiereclip/automode/AutoModeManager;->_sharedInstance:Lcom/adobe/premiereclip/automode/AutoModeManager;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public Initialize()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public Release()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method protected StartTask(Lcom/adobe/premiereclip/automode/AutoModeManager$Task;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/automode/AutoModeManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p1}, Lcom/adobe/premiereclip/automode/AutoModeManager$Task;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method
