.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;
.super Ljava/lang/Object;
.source "FileLockManager.java"


# instance fields
.field count:Ljava/util/concurrent/atomic/AtomicInteger;

.field lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
