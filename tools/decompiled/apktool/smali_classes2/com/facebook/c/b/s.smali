.class public Lcom/facebook/c/b/s;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/facebook/c/b/ab;
.implements Lcom/facebook/d/a/a;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:J

.field private static final d:J


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final e:J

.field private final f:J

.field private final g:Ljava/util/concurrent/CountDownLatch;

.field private h:J

.field private final i:Lcom/facebook/c/a/d;

.field private j:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final k:J

.field private final l:Lcom/facebook/d/j/a;

.field private final m:Lcom/facebook/c/b/p;

.field private final n:Lcom/facebook/c/b/aa;

.field private final o:Lcom/facebook/c/a/a;

.field private final p:Z

.field private final q:Lcom/facebook/c/b/v;

.field private final r:Lcom/facebook/d/l/a;

.field private final s:Ljava/lang/Object;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-class v0, Lcom/facebook/c/b/s;

    sput-object v0, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/c/b/s;->c:J

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/c/b/s;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/c/b/p;Lcom/facebook/c/b/aa;Lcom/facebook/c/b/w;Lcom/facebook/c/a/d;Lcom/facebook/c/a/a;Lcom/facebook/d/a/b;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    .locals 2
    .param p6    # Lcom/facebook/d/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    .line 164
    iget-wide v0, p3, Lcom/facebook/c/b/w;->b:J

    iput-wide v0, p0, Lcom/facebook/c/b/s;->e:J

    .line 165
    iget-wide v0, p3, Lcom/facebook/c/b/w;->c:J

    iput-wide v0, p0, Lcom/facebook/c/b/s;->f:J

    .line 166
    iget-wide v0, p3, Lcom/facebook/c/b/w;->c:J

    iput-wide v0, p0, Lcom/facebook/c/b/s;->h:J

    .line 167
    invoke-static {}, Lcom/facebook/d/j/a;->a()Lcom/facebook/d/j/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/s;->l:Lcom/facebook/d/j/a;

    .line 169
    iput-object p1, p0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    .line 171
    iput-object p2, p0, Lcom/facebook/c/b/s;->n:Lcom/facebook/c/b/aa;

    .line 173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/c/b/s;->j:J

    .line 175
    iput-object p4, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    .line 177
    iget-wide v0, p3, Lcom/facebook/c/b/w;->a:J

    iput-wide v0, p0, Lcom/facebook/c/b/s;->k:J

    .line 179
    iput-object p5, p0, Lcom/facebook/c/b/s;->o:Lcom/facebook/c/a/a;

    .line 181
    new-instance v0, Lcom/facebook/c/b/v;

    invoke-direct {v0}, Lcom/facebook/c/b/v;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    .line 183
    if-eqz p6, :cond_0

    .line 184
    invoke-interface {p6, p0}, Lcom/facebook/d/a/b;->a(Lcom/facebook/d/a/a;)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/facebook/d/l/c;->b()Lcom/facebook/d/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/s;->r:Lcom/facebook/d/l/a;

    .line 188
    iput-boolean p9, p0, Lcom/facebook/c/b/s;->p:Z

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    .line 192
    iget-boolean v0, p0, Lcom/facebook/c/b/s;->p:Z

    if-eqz v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/c/b/s;->g:Ljava/util/concurrent/CountDownLatch;

    .line 195
    new-instance v0, Lcom/facebook/c/b/t;

    invoke-direct {v0, p0}, Lcom/facebook/c/b/t;-><init>(Lcom/facebook/c/b/s;)V

    invoke-interface {p8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    :goto_0
    new-instance v0, Lcom/facebook/c/b/u;

    invoke-direct {v0, p0, p7}, Lcom/facebook/c/b/u;-><init>(Lcom/facebook/c/b/s;Landroid/content/Context;)V

    invoke-interface {p8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/c/b/s;->g:Ljava/util/concurrent/CountDownLatch;

    goto :goto_0
.end method

.method private a(Lcom/facebook/c/b/r;Lcom/facebook/c/a/f;Ljava/lang/String;)Lcom/facebook/b/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v1, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/c/b/r;->a(Ljava/lang/Object;)Lcom/facebook/b/a;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-interface {v0}, Lcom/facebook/b/a;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/facebook/c/b/v;->b(JJ)V

    .line 358
    monitor-exit v1

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/c/a/f;)Lcom/facebook/c/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/facebook/c/b/s;->a()V

    .line 343
    iget-object v0, p0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    invoke-interface {v0, p1, p2}, Lcom/facebook/c/b/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/c/b/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/c/b/s;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/c/b/q;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/c/b/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/facebook/c/b/s;->r:Lcom/facebook/d/l/a;

    invoke-interface {v0}, Lcom/facebook/d/l/a;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/c/b/s;->c:J

    add-long/2addr v2, v0

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b/q;

    .line 560
    invoke-interface {v0}, Lcom/facebook/c/b/q;->b()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    .line 561
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/facebook/c/b/s;->n:Lcom/facebook/c/b/aa;

    invoke-interface {v0}, Lcom/facebook/c/b/aa;->a()Lcom/facebook/c/b/z;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 567
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    return-object v1
.end method

.method private a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v1, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/c/b/s;->c()Z

    move-result v0

    .line 485
    invoke-direct {p0}, Lcom/facebook/c/b/s;->b()V

    .line 487
    iget-object v2, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-virtual {v2}, Lcom/facebook/c/b/v;->c()J

    move-result-wide v2

    .line 490
    iget-wide v4, p0, Lcom/facebook/c/b/s;->h:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-virtual {v0}, Lcom/facebook/c/b/v;->b()V

    .line 492
    invoke-direct {p0}, Lcom/facebook/c/b/s;->c()Z

    .line 496
    :cond_0
    iget-wide v4, p0, Lcom/facebook/c/b/s;->h:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 497
    iget-wide v2, p0, Lcom/facebook/c/b/s;->h:J

    const-wide/16 v4, 0x9

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    sget-object v0, Lcom/facebook/c/a/e;->a:Lcom/facebook/c/a/e;

    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/c/b/s;->a(JLcom/facebook/c/a/e;)V

    .line 501
    :cond_1
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(JLcom/facebook/c/a/e;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 510
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    invoke-interface {v2}, Lcom/facebook/c/b/p;->e()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/c/b/s;->a(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-virtual {v2}, Lcom/facebook/c/b/v;->c()J

    move-result-wide v6

    .line 521
    sub-long v8, v6, p1

    .line 522
    const/4 v4, 0x0

    .line 523
    const-wide/16 v2, 0x0

    .line 524
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/c/b/q;

    .line 525
    cmp-long v11, v4, v8

    if-lez v11, :cond_1

    .line 543
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    neg-long v4, v4

    neg-int v3, v3

    int-to-long v6, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/facebook/c/b/v;->b(JJ)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    invoke-interface {v2}, Lcom/facebook/c/b/p;->c()V

    .line 545
    return-void

    .line 511
    :catch_0
    move-exception v2

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c/b/s;->o:Lcom/facebook/c/a/a;

    sget-object v4, Lcom/facebook/c/a/b;->o:Lcom/facebook/c/a/b;

    sget-object v5, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "evictAboveSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 515
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    throw v2

    .line 528
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    invoke-interface {v11, v2}, Lcom/facebook/c/b/p;->a(Lcom/facebook/c/b/q;)J

    move-result-wide v12

    .line 529
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v2}, Lcom/facebook/c/b/q;->a()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 530
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 531
    add-int/lit8 v3, v3, 0x1

    .line 532
    add-long/2addr v4, v12

    .line 533
    invoke-static {}, Lcom/facebook/c/b/ac;->a()Lcom/facebook/c/b/ac;

    move-result-object v11

    .line 534
    invoke-interface {v2}, Lcom/facebook/c/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/facebook/c/b/ac;->a(Ljava/lang/String;)Lcom/facebook/c/b/ac;

    move-result-object v2

    .line 535
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/facebook/c/b/ac;->a(Lcom/facebook/c/a/e;)Lcom/facebook/c/b/ac;

    move-result-object v2

    .line 536
    invoke-virtual {v2, v12, v13}, Lcom/facebook/c/b/ac;->a(J)Lcom/facebook/c/b/ac;

    move-result-object v2

    sub-long v12, v6, v4

    .line 537
    invoke-virtual {v2, v12, v13}, Lcom/facebook/c/b/ac;->b(J)Lcom/facebook/c/b/ac;

    move-result-object v2

    .line 538
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/c/b/ac;->c(J)Lcom/facebook/c/b/ac;

    move-result-object v2

    .line 539
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v11, v2}, Lcom/facebook/c/a/d;->g(Lcom/facebook/c/a/c;)V

    .line 540
    invoke-virtual {v2}, Lcom/facebook/c/b/ac;->b()V

    :cond_2
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    .line 542
    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/facebook/c/b/s;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    .line 580
    invoke-interface {v0}, Lcom/facebook/c/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/d/j/b;->b:Lcom/facebook/d/j/b;

    .line 583
    :goto_0
    iget-object v1, p0, Lcom/facebook/c/b/s;->l:Lcom/facebook/d/j/a;

    iget-wide v2, p0, Lcom/facebook/c/b/s;->f:J

    iget-object v4, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    .line 586
    invoke-virtual {v4}, Lcom/facebook/c/b/v;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 584
    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/d/j/a;->a(Lcom/facebook/d/j/b;J)Z

    move-result v0

    .line 587
    if-eqz v0, :cond_1

    .line 588
    iget-wide v0, p0, Lcom/facebook/c/b/s;->e:J

    iput-wide v0, p0, Lcom/facebook/c/b/s;->h:J

    .line 592
    :goto_1
    return-void

    .line 580
    :cond_0
    sget-object v0, Lcom/facebook/d/j/b;->a:Lcom/facebook/d/j/b;

    goto :goto_0

    .line 590
    :cond_1
    iget-wide v0, p0, Lcom/facebook/c/b/s;->f:J

    iput-wide v0, p0, Lcom/facebook/c/b/s;->h:J

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 783
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "disk_entries_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    sget-object v0, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    const-string/jumbo v1, "Fail to delete SharedPreference from file system. "

    invoke-static {v0, v1}, Lcom/facebook/d/e/a;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/c/b/s;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/c/b/s;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/facebook/c/b/s;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/c/b/s;->g:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private c()Z
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/facebook/c/b/s;->r:Lcom/facebook/d/l/a;

    invoke-interface {v0}, Lcom/facebook/d/l/a;->a()J

    move-result-wide v0

    .line 706
    iget-object v2, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-virtual {v2}, Lcom/facebook/c/b/v;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/facebook/c/b/s;->j:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/facebook/c/b/s;->j:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/c/b/s;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/facebook/c/b/s;->d()Z

    move-result v0

    .line 711
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/c/b/s;)Lcom/facebook/c/b/p;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    return-object v0
.end method

.method private d()Z
    .locals 24
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 716
    const-wide/16 v8, 0x0

    .line 717
    const/4 v2, 0x0

    .line 718
    const/4 v7, 0x0

    .line 719
    const/4 v6, 0x0

    .line 720
    const/4 v3, 0x0

    .line 721
    const-wide/16 v4, -0x1

    .line 722
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/c/b/s;->r:Lcom/facebook/d/l/a;

    invoke-interface {v10}, Lcom/facebook/d/l/a;->a()J

    move-result-wide v14

    .line 723
    sget-wide v10, Lcom/facebook/c/b/s;->c:J

    add-long v16, v14, v10

    .line 725
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/facebook/c/b/s;->p:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 726
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    move-object v12, v10

    .line 733
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    invoke-interface {v10}, Lcom/facebook/c/b/p;->e()Ljava/util/Collection;

    move-result-object v10

    .line 734
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v10, v8

    move v8, v2

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/c/b/q;

    .line 735
    add-int/lit8 v9, v8, 0x1

    .line 736
    invoke-interface {v2}, Lcom/facebook/c/b/q;->d()J

    move-result-wide v18

    add-long v10, v10, v18

    .line 739
    invoke-interface {v2}, Lcom/facebook/c/b/q;->b()J

    move-result-wide v18

    cmp-long v8, v18, v16

    if-lez v8, :cond_2

    .line 740
    const/4 v8, 0x1

    .line 741
    add-int/lit8 v7, v6, 0x1

    .line 742
    int-to-long v0, v3

    move-wide/from16 v18, v0

    invoke-interface {v2}, Lcom/facebook/c/b/q;->d()J

    move-result-wide v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 743
    invoke-interface {v2}, Lcom/facebook/c/b/q;->b()J

    move-result-wide v2

    sub-long/2addr v2, v14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move v4, v6

    move v5, v7

    move v6, v8

    :goto_2
    move v7, v6

    move v8, v9

    move v6, v5

    move-wide/from16 v22, v2

    move v3, v4

    move-wide/from16 v4, v22

    .line 747
    goto :goto_1

    .line 727
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/facebook/c/b/s;->p:Z

    if-eqz v10, :cond_1

    .line 728
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v12, v10

    goto :goto_0

    .line 730
    :cond_1
    const/4 v10, 0x0

    move-object v12, v10

    goto :goto_0

    .line 744
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/facebook/c/b/s;->p:Z

    if-eqz v8, :cond_3

    .line 745
    invoke-interface {v2}, Lcom/facebook/c/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    move-wide/from16 v22, v4

    move v4, v3

    move v5, v6

    move-wide/from16 v2, v22

    move v6, v7

    goto :goto_2

    .line 748
    :cond_4
    if-eqz v7, :cond_5

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->o:Lcom/facebook/c/a/a;

    sget-object v7, Lcom/facebook/c/a/b;->d:Lcom/facebook/c/a/b;

    sget-object v9, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Future timestamp found in "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v13, " files , with a total size of "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " bytes, and a maximum time delta of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v7, v9, v3, v4}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-virtual {v2}, Lcom/facebook/c/b/v;->d()J

    move-result-wide v2

    int-to-long v4, v8

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    invoke-virtual {v2}, Lcom/facebook/c/b/v;->c()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-eqz v2, :cond_8

    .line 758
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/c/b/s;->p:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    if-eq v2, v12, :cond_9

    .line 759
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/c/b/s;->t:Z

    .line 764
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    int-to-long v4, v8

    invoke-virtual {v2, v10, v11, v4, v5}, Lcom/facebook/c/b/v;->a(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 774
    :cond_8
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/facebook/c/b/s;->j:J

    .line 775
    const/4 v2, 0x1

    :goto_4
    return v2

    .line 760
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/c/b/s;->p:Z

    if-eqz v2, :cond_7

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v2, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 766
    :catch_0
    move-exception v2

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c/b/s;->o:Lcom/facebook/c/a/a;

    sget-object v4, Lcom/facebook/c/a/b;->p:Lcom/facebook/c/a/b;

    sget-object v5, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calcFileCacheSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 770
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-interface {v3, v4, v5, v6, v2}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 772
    const/4 v2, 0x0

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/facebook/c/a/f;)Lcom/facebook/b/a;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 261
    .line 262
    invoke-static {}, Lcom/facebook/c/b/ac;->a()Lcom/facebook/c/b/ac;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p1}, Lcom/facebook/c/b/ac;->a(Lcom/facebook/c/a/f;)Lcom/facebook/c/b/ac;

    move-result-object v4

    .line 265
    :try_start_0
    iget-object v5, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    invoke-static {p1}, Lcom/facebook/c/a/g;->a(Lcom/facebook/c/a/f;)Ljava/util/List;

    move-result-object v6

    .line 268
    const/4 v0, 0x0

    move v3, v0

    move-object v2, v1

    move-object v0, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 269
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    invoke-virtual {v4, v0}, Lcom/facebook/c/b/ac;->a(Ljava/lang/String;)Lcom/facebook/c/b/ac;

    .line 271
    iget-object v2, p0, Lcom/facebook/c/b/s;->m:Lcom/facebook/c/b/p;

    invoke-interface {v2, v0, p1}, Lcom/facebook/c/b/p;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/b/a;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 276
    :cond_0
    if-nez v0, :cond_2

    .line 277
    iget-object v3, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v3, v4}, Lcom/facebook/c/a/d;->b(Lcom/facebook/c/a/c;)V

    .line 278
    iget-object v3, p0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 283
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-virtual {v4}, Lcom/facebook/c/b/ac;->b()V

    .line 293
    :goto_2
    return-object v0

    .line 268
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_0

    .line 280
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v3, v4}, Lcom/facebook/c/a/d;->a(Lcom/facebook/c/a/c;)V

    .line 281
    iget-object v3, p0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    :try_start_4
    iget-object v2, p0, Lcom/facebook/c/b/s;->o:Lcom/facebook/c/a/a;

    sget-object v3, Lcom/facebook/c/a/b;->p:Lcom/facebook/c/a/b;

    sget-object v5, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    const-string/jumbo v6, "getResource"

    invoke-interface {v2, v3, v5, v6, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v4, v0}, Lcom/facebook/c/b/ac;->a(Ljava/io/IOException;)Lcom/facebook/c/b/ac;

    .line 292
    iget-object v0, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v0, v4}, Lcom/facebook/c/a/d;->e(Lcom/facebook/c/a/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 295
    invoke-virtual {v4}, Lcom/facebook/c/b/ac;->b()V

    move-object v0, v1

    .line 293
    goto :goto_2

    .line 295
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Lcom/facebook/c/b/ac;->b()V

    throw v0
.end method

.method public a(Lcom/facebook/c/a/f;Lcom/facebook/c/a/l;)Lcom/facebook/b/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Lcom/facebook/c/b/ac;->a()Lcom/facebook/c/b/ac;

    move-result-object v0

    .line 367
    invoke-virtual {v0, p1}, Lcom/facebook/c/b/ac;->a(Lcom/facebook/c/a/f;)Lcom/facebook/c/b/ac;

    move-result-object v1

    .line 368
    iget-object v0, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v0, v1}, Lcom/facebook/c/a/d;->c(Lcom/facebook/c/a/c;)V

    .line 370
    iget-object v2, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    monitor-enter v2

    .line 372
    :try_start_0
    invoke-static {p1}, Lcom/facebook/c/a/g;->b(Lcom/facebook/c/a/f;)Ljava/lang/String;

    move-result-object v0

    .line 373
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v1, v0}, Lcom/facebook/c/b/ac;->a(Ljava/lang/String;)Lcom/facebook/c/b/ac;

    .line 377
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/facebook/c/b/s;->a(Ljava/lang/String;Lcom/facebook/c/a/f;)Lcom/facebook/c/b/r;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 379
    :try_start_2
    invoke-interface {v2, p2, p1}, Lcom/facebook/c/b/r;->a(Lcom/facebook/c/a/l;Ljava/lang/Object;)V

    .line 381
    invoke-direct {p0, v2, p1, v0}, Lcom/facebook/c/b/s;->a(Lcom/facebook/c/b/r;Lcom/facebook/c/a/f;Ljava/lang/String;)Lcom/facebook/b/a;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Lcom/facebook/b/a;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/facebook/c/b/ac;->a(J)Lcom/facebook/c/b/ac;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/c/b/s;->q:Lcom/facebook/c/b/v;

    .line 383
    invoke-virtual {v4}, Lcom/facebook/c/b/v;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/facebook/c/b/ac;->b(J)Lcom/facebook/c/b/ac;

    .line 384
    iget-object v3, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v3, v1}, Lcom/facebook/c/a/d;->d(Lcom/facebook/c/a/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    :try_start_3
    invoke-interface {v2}, Lcom/facebook/c/b/r;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    sget-object v2, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    const-string/jumbo v3, "Failed to delete temp file"

    invoke-static {v2, v3}, Lcom/facebook/d/e/a;->d(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 397
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/c/b/ac;->b()V

    .line 385
    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 387
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v2}, Lcom/facebook/c/b/r;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    sget-object v2, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    const-string/jumbo v3, "Failed to delete temp file"

    invoke-static {v2, v3}, Lcom/facebook/d/e/a;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    :try_start_6
    invoke-virtual {v1, v0}, Lcom/facebook/c/b/ac;->a(Ljava/io/IOException;)Lcom/facebook/c/b/ac;

    .line 393
    iget-object v2, p0, Lcom/facebook/c/b/s;->i:Lcom/facebook/c/a/d;

    invoke-interface {v2, v1}, Lcom/facebook/c/a/d;->f(Lcom/facebook/c/a/c;)V

    .line 394
    sget-object v2, Lcom/facebook/c/b/s;->b:Ljava/lang/Class;

    const-string/jumbo v3, "Failed inserting a file into the cache"

    invoke-static {v2, v3, v0}, Lcom/facebook/d/e/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 397
    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/c/b/ac;->b()V

    throw v0
.end method

.method public b(Lcom/facebook/c/a/f;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-object v3, p0, Lcom/facebook/c/b/s;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 623
    :try_start_0
    invoke-static {p1}, Lcom/facebook/c/a/g;->a(Lcom/facebook/c/a/f;)Ljava/util/List;

    move-result-object v4

    move v2, v1

    .line 624
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 625
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    iget-object v5, p0, Lcom/facebook/c/b/s;->a:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const/4 v0, 0x1

    monitor-exit v3

    .line 630
    :goto_1
    return v0

    .line 624
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 630
    :cond_1
    monitor-exit v3

    move v0, v1

    goto :goto_1

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
