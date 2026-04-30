.class final Ld/a/e/ac;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Le/aa;


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Ld/a/e/ab;

.field private final e:Le/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    const-class v0, Ld/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ld/a/e/ac;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ld/a/e/ab;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    iput-object v0, p0, Ld/a/e/ac;->e:Le/f;

    return-void
.end method

.method private a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->g:Ld/a/e/ae;

    invoke-virtual {v0}, Ld/a/e/ae;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    :goto_0
    :try_start_1
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-wide v2, v0, Ld/a/e/ab;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Ld/a/e/ac;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ld/a/e/ac;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->h:Ld/a/e/b;

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v2, v2, Ld/a/e/ab;->g:Ld/a/e/ae;

    invoke-virtual {v2}, Ld/a/e/ae;->b()V

    throw v0

    .line 504
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 498
    :cond_0
    :try_start_3
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->g:Ld/a/e/ae;

    invoke-virtual {v0}, Ld/a/e/ae;->b()V

    .line 501
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->k()V

    .line 502
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-wide v2, v0, Ld/a/e/ab;->b:J

    iget-object v0, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v0}, Le/f;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 503
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-wide v2, v0, Ld/a/e/ab;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Ld/a/e/ab;->b:J

    .line 504
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 506
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->g:Ld/a/e/ae;

    invoke-virtual {v0}, Ld/a/e/ae;->c()V

    .line 508
    :try_start_4
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->d:Ld/a/e/j;

    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget v1, v1, Ld/a/e/ab;->c:I

    if-eqz p1, :cond_1

    iget-object v2, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v2}, Le/f;->b()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual/range {v0 .. v5}, Ld/a/e/j;->a(IZLe/f;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 510
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->g:Ld/a/e/ae;

    invoke-virtual {v0}, Ld/a/e/ae;->b()V

    .line 512
    return-void

    .line 508
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 510
    :catchall_2
    move-exception v0

    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v1, v1, Ld/a/e/ab;->g:Ld/a/e/ae;

    invoke-virtual {v1}, Ld/a/e/ae;->b()V

    throw v0
.end method


# virtual methods
.method public a()Le/ac;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->g:Ld/a/e/ae;

    return-object v0
.end method

.method public a_(Le/f;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    sget-boolean v0, Ld/a/e/ac;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 479
    :cond_0
    iget-object v0, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v0, p1, p2, p3}, Le/f;->a_(Le/f;J)V

    .line 480
    :goto_0
    iget-object v0, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v0}, Le/f;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/a/e/ac;->a(Z)V

    goto :goto_0

    .line 483
    :cond_1
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 530
    sget-boolean v0, Ld/a/e/ac;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 531
    :cond_0
    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-boolean v0, p0, Ld/a/e/ac;->a:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 550
    :goto_0
    return-void

    .line 533
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->e:Ld/a/e/ac;

    iget-boolean v0, v0, Ld/a/e/ac;->b:Z

    if-nez v0, :cond_3

    .line 536
    iget-object v0, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v0}, Le/f;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 537
    :goto_1
    iget-object v0, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v0}, Le/f;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 538
    invoke-direct {p0, v2}, Ld/a/e/ac;->a(Z)V

    goto :goto_1

    .line 533
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 542
    :cond_2
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->d:Ld/a/e/j;

    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget v1, v1, Ld/a/e/ab;->c:I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Ld/a/e/j;->a(IZLe/f;J)V

    .line 545
    :cond_3
    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    monitor-enter v1

    .line 546
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ld/a/e/ac;->a:Z

    .line 547
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->d:Ld/a/e/j;

    invoke-virtual {v0}, Ld/a/e/j;->b()V

    .line 549
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->j()V

    goto :goto_0

    .line 547
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    sget-boolean v0, Ld/a/e/ac;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 516
    :cond_0
    iget-object v1, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    invoke-virtual {v0}, Ld/a/e/ab;->k()V

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :goto_0
    iget-object v0, p0, Ld/a/e/ac;->e:Le/f;

    invoke-virtual {v0}, Le/f;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/a/e/ac;->a(Z)V

    .line 521
    iget-object v0, p0, Ld/a/e/ac;->d:Ld/a/e/ab;

    iget-object v0, v0, Ld/a/e/ab;->d:Ld/a/e/j;

    invoke-virtual {v0}, Ld/a/e/j;->b()V

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 523
    :cond_1
    return-void
.end method
