.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;
.super Ljava/lang/Object;
.source "FileLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;


# instance fields
.field private volatile mLockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    .line 26
    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mInstance:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    .line 32
    :cond_0
    monitor-exit v1

    .line 34
    :cond_1
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public lock(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;

    .line 46
    :goto_0
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 49
    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unlock(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;

    .line 55
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->mLockMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 59
    :cond_1
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
