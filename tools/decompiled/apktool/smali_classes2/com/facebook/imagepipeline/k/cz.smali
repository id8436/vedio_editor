.class public Lcom/facebook/imagepipeline/k/cz;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/imagepipeline/k/o",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/facebook/imagepipeline/k/cz;->b:I

    .line 43
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->e:Ljava/util/concurrent/Executor;

    .line 44
    invoke-static {p3}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/cl;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->a:Lcom/facebook/imagepipeline/k/cl;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/k/cz;->c:I

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cz;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/cz;)I
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/facebook/imagepipeline/k/cz;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/k/cz;->c:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/cz;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ThrottlingProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget v0, p0, Lcom/facebook/imagepipeline/k/cz;->c:I

    iget v1, p0, Lcom/facebook/imagepipeline/k/cz;->b:I

    if-lt v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x1

    .line 63
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cz;->b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 68
    :cond_0
    return-void

    .line 60
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/k/cz;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/k/cz;->c:I

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    .line 72
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ThrottlingProducer"

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cz;->a:Lcom/facebook/imagepipeline/k/cl;

    new-instance v1, Lcom/facebook/imagepipeline/k/db;

    invoke-direct {v1, p0, p1, v3}, Lcom/facebook/imagepipeline/k/db;-><init>(Lcom/facebook/imagepipeline/k/cz;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/da;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 74
    return-void
.end method
