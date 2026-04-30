.class public Lcom/facebook/imagepipeline/c/m;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/d/g/a;
.implements Lcom/facebook/imagepipeline/c/ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/d/g/a;",
        "Lcom/facebook/imagepipeline/c/ad",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final a:J


# instance fields
.field final b:Lcom/facebook/imagepipeline/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/l",
            "<TK;",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final c:Lcom/facebook/imagepipeline/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/l",
            "<TK;",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected e:Lcom/facebook/imagepipeline/c/ae;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/c/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/am",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/c/q;

.field private final h:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;"
        }
    .end annotation
.end field

.field private i:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/c/m;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/c/am;Lcom/facebook/imagepipeline/c/q;Lcom/facebook/d/d/m;Lcom/facebook/imagepipeline/b/f;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/am",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/q;",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;",
            "Lcom/facebook/imagepipeline/b/f;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/m;->d:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/m;->f:Lcom/facebook/imagepipeline/c/am;

    .line 139
    new-instance v0, Lcom/facebook/imagepipeline/c/l;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/am;)Lcom/facebook/imagepipeline/c/am;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/c/l;-><init>(Lcom/facebook/imagepipeline/c/am;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    .line 140
    new-instance v0, Lcom/facebook/imagepipeline/c/l;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/am;)Lcom/facebook/imagepipeline/c/am;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/c/l;-><init>(Lcom/facebook/imagepipeline/c/am;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    .line 141
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/m;->g:Lcom/facebook/imagepipeline/c/q;

    .line 142
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/m;->h:Lcom/facebook/d/d/m;

    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->h:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/ae;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/c/m;->i:J

    .line 146
    if-eqz p5, :cond_0

    .line 147
    new-instance v0, Lcom/facebook/imagepipeline/c/n;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/c/n;-><init>(Lcom/facebook/imagepipeline/c/m;)V

    invoke-virtual {p4, v0}, Lcom/facebook/imagepipeline/b/f;->a(Lcom/facebook/imagepipeline/b/g;)V

    .line 157
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)",
            "Lcom/facebook/d/h/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->g(Lcom/facebook/imagepipeline/c/r;)V

    .line 257
    iget-object v0, p1, Lcom/facebook/imagepipeline/c/r;->b:Lcom/facebook/d/h/a;

    .line 258
    invoke-virtual {v0}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/c/p;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/c/p;-><init>(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/r;)V

    .line 257
    invoke-static {v0, v1}, Lcom/facebook/d/h/a;->a(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/facebook/imagepipeline/c/am;)Lcom/facebook/imagepipeline/c/am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/am",
            "<TV;>;)",
            "Lcom/facebook/imagepipeline/c/am",
            "<",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/imagepipeline/c/o;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/c/o;-><init>(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/am;)V

    return-object v0
.end method

.method private declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 426
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 427
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 429
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/l;->a()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/l;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v2, :cond_1

    .line 430
    const/4 v0, 0x0

    .line 438
    :cond_0
    monitor-exit p0

    return-object v0

    .line 432
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/c/l;->a()I

    move-result v3

    if-gt v3, v1, :cond_2

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/c/l;->b()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 434
    :cond_2
    iget-object v3, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/c/l;->c()Ljava/lang/Object;

    move-result-object v3

    .line 435
    iget-object v4, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/c/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v4, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/c/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/r;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->b(Lcom/facebook/imagepipeline/c/r;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/r;

    .line 450
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/m;->i(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/c/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->h(Lcom/facebook/imagepipeline/c/r;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->c(Lcom/facebook/imagepipeline/c/r;)Z

    move-result v0

    .line 275
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/m;->i(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 276
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 278
    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/c/m;->e(Lcom/facebook/imagepipeline/c/r;)V

    .line 279
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/m;->c()V

    .line 280
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/m;->d()V

    .line 281
    return-void

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 278
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/r;

    .line 458
    invoke-static {v0}, Lcom/facebook/imagepipeline/c/m;->d(Lcom/facebook/imagepipeline/c/r;)V

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->f:Lcom/facebook/imagepipeline/c/am;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/am;->a(Ljava/lang/Object;)I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v1, v1, Lcom/facebook/imagepipeline/c/ae;->e:I

    if-gt v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/m;->a()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v2, v2, Lcom/facebook/imagepipeline/c/ae;->b:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/m;->b()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v2, v2, Lcom/facebook/imagepipeline/c/ae;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v2, v0

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    .line 226
    :goto_0
    monitor-exit p0

    return v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 4

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/c/m;->i:J

    sget-wide v2, Lcom/facebook/imagepipeline/c/m;->a:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 393
    :goto_0
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/c/m;->i:J

    .line 392
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->h:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/ae;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 478
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/r;

    .line 479
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/m;->f(Lcom/facebook/imagepipeline/c/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized c(Lcom/facebook/imagepipeline/c/r;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/c/r;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    iget-object v1, p1, Lcom/facebook/imagepipeline/c/r;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v0, v0, Lcom/facebook/imagepipeline/c/ae;->d:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v1, v1, Lcom/facebook/imagepipeline/c/ae;->b:I

    .line 406
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/m;->a()I

    move-result v2

    sub-int/2addr v1, v2

    .line 404
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v1, v1, Lcom/facebook/imagepipeline/c/ae;->c:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/m;->e:Lcom/facebook/imagepipeline/c/ae;

    iget v2, v2, Lcom/facebook/imagepipeline/c/ae;->a:I

    .line 409
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/m;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 407
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 410
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/c/m;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 411
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/m;->c(Ljava/util/ArrayList;)V

    .line 412
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/m;->a(Ljava/util/ArrayList;)V

    .line 414
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/c/m;->b(Ljava/util/ArrayList;)V

    .line 415
    return-void

    .line 412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static d(Lcom/facebook/imagepipeline/c/r;)V
    .locals 3
    .param p0    # Lcom/facebook/imagepipeline/c/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 464
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/r;->e:Lcom/facebook/imagepipeline/c/s;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/r;->e:Lcom/facebook/imagepipeline/c/s;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/r;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/s;->a(Ljava/lang/Object;Z)V

    .line 467
    :cond_0
    return-void
.end method

.method private static e(Lcom/facebook/imagepipeline/c/r;)V
    .locals 3
    .param p0    # Lcom/facebook/imagepipeline/c/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 470
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/r;->e:Lcom/facebook/imagepipeline/c/s;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/r;->e:Lcom/facebook/imagepipeline/c/s;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/r;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/s;->a(Ljava/lang/Object;Z)V

    .line 473
    :cond_0
    return-void
.end method

.method private declared-synchronized f(Lcom/facebook/imagepipeline/c/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 486
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/c/r;->d:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/imagepipeline/c/r;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g(Lcom/facebook/imagepipeline/c/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/c/r;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 495
    iget v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(Lcom/facebook/imagepipeline/c/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 502
    iget v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)",
            "Lcom/facebook/d/h/a",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/c/r;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/c/r;->c:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/imagepipeline/c/r;->b:Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/l;->a()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/c/l;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Lcom/facebook/d/h/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/d/h/a",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const/4 v2, 0x0

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/r;

    .line 243
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/c/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/c/r;

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 247
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-static {v0}, Lcom/facebook/imagepipeline/c/m;->d(Lcom/facebook/imagepipeline/c/r;)V

    .line 249
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/m;->c()V

    .line 250
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/m;->d()V

    .line 251
    return-object v1

    .line 247
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/d/h/a",
            "<TV;>;)",
            "Lcom/facebook/d/h/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/c/m;->a(Ljava/lang/Object;Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/c/s;)Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/c/s;)Lcom/facebook/d/h/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/d/h/a",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/s",
            "<TK;>;)",
            "Lcom/facebook/d/h/a",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/m;->c()V

    .line 201
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/c/r;

    .line 204
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/c/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/c/r;

    .line 205
    if-eqz v1, :cond_1

    .line 206
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/m;->f(Lcom/facebook/imagepipeline/c/r;)V

    .line 207
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/m;->i(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;

    move-result-object v1

    move-object v3, v1

    .line 210
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/m;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/c/r;->a(Ljava/lang/Object;Lcom/facebook/d/h/a;Lcom/facebook/imagepipeline/c/s;)Lcom/facebook/imagepipeline/c/r;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v2, p1, v1}, Lcom/facebook/imagepipeline/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/r;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 215
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {v3}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 217
    invoke-static {v0}, Lcom/facebook/imagepipeline/c/m;->d(Lcom/facebook/imagepipeline/c/r;)V

    .line 219
    invoke-direct {p0}, Lcom/facebook/imagepipeline/c/m;->d()V

    .line 220
    return-object v1

    .line 215
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public declared-synchronized b()I
    .locals 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/m;->c:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/c/l;->b()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/m;->b:Lcom/facebook/imagepipeline/c/l;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/c/l;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
