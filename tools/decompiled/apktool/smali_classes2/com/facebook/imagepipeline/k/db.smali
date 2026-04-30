.class Lcom/facebook/imagepipeline/k/db;
.super Lcom/facebook/imagepipeline/k/w;
.source "ThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cz;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/cz;Lcom/facebook/imagepipeline/k/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/db;->a:Lcom/facebook/imagepipeline/k/cz;

    .line 79
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/cz;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/da;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/db;-><init>(Lcom/facebook/imagepipeline/k/cz;Lcom/facebook/imagepipeline/k/o;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/db;->a:Lcom/facebook/imagepipeline/k/cz;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/db;->a:Lcom/facebook/imagepipeline/k/cz;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cz;->a(Lcom/facebook/imagepipeline/k/cz;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 106
    if-nez v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/db;->a:Lcom/facebook/imagepipeline/k/cz;

    invoke-static {v2}, Lcom/facebook/imagepipeline/k/cz;->b(Lcom/facebook/imagepipeline/k/cz;)I

    .line 109
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/db;->a:Lcom/facebook/imagepipeline/k/cz;

    invoke-static {v1}, Lcom/facebook/imagepipeline/k/cz;->c(Lcom/facebook/imagepipeline/k/cz;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/k/dc;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/k/dc;-><init>(Lcom/facebook/imagepipeline/k/db;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/db;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 99
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/db;->c()V

    .line 100
    return-void
.end method

.method protected a(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/db;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/db;->c()V

    .line 88
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/db;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V

    .line 93
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/db;->c()V

    .line 94
    return-void
.end method
