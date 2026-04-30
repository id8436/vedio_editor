.class Lcom/facebook/c/b/t;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/c/b/s;


# direct methods
.method constructor <init>(Lcom/facebook/c/b/s;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/facebook/c/b/t;->a:Lcom/facebook/c/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/c/b/t;->a:Lcom/facebook/c/b/s;

    invoke-static {v0}, Lcom/facebook/c/b/s;->a(Lcom/facebook/c/b/s;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/facebook/c/b/t;->a:Lcom/facebook/c/b/s;

    invoke-static {v0}, Lcom/facebook/c/b/s;->b(Lcom/facebook/c/b/s;)Z

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Lcom/facebook/c/b/t;->a:Lcom/facebook/c/b/s;

    invoke-static {v0}, Lcom/facebook/c/b/s;->c(Lcom/facebook/c/b/s;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
