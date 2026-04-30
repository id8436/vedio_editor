.class Ld/a/d/e;
.super Ld/a/d/c;
.source "Http1Codec.java"


# instance fields
.field final synthetic e:Ld/a/d/a;

.field private final f:Ld/ai;

.field private g:J

.field private h:Z


# direct methods
.method constructor <init>(Ld/a/d/a;Ld/ai;)V
    .locals 2

    .prologue
    .line 436
    iput-object p1, p0, Ld/a/d/e;->e:Ld/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld/a/d/c;-><init>(Ld/a/d/a;Ld/a/d/b;)V

    .line 433
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ld/a/d/e;->g:J

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/d/e;->h:Z

    .line 437
    iput-object p2, p0, Ld/a/d/e;->f:Ld/ai;

    .line 438
    return-void
.end method

.method private b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 462
    iget-wide v0, p0, Ld/a/d/e;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Ld/a/d/e;->e:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->c:Le/j;

    invoke-interface {v0}, Le/j;->q()Ljava/lang/String;

    .line 466
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld/a/d/e;->e:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->c:Le/j;

    invoke-interface {v0}, Le/j;->n()J

    move-result-wide v0

    iput-wide v0, p0, Ld/a/d/e;->g:J

    .line 467
    iget-object v0, p0, Ld/a/d/e;->e:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->c:Le/j;

    invoke-interface {v0}, Le/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-wide v2, p0, Ld/a/d/e;->g:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 469
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected chunk size and optional extensions but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ld/a/d/e;->g:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_2
    iget-wide v0, p0, Ld/a/d/e;->g:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a/d/e;->h:Z

    .line 477
    iget-object v0, p0, Ld/a/d/e;->e:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->a:Ld/ar;

    invoke-virtual {v0}, Ld/ar;->f()Ld/u;

    move-result-object v0

    iget-object v1, p0, Ld/a/d/e;->f:Ld/ai;

    iget-object v2, p0, Ld/a/d/e;->e:Ld/a/d/a;

    invoke-virtual {v2}, Ld/a/d/a;->d()Ld/ag;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ld/a/c/g;->a(Ld/u;Ld/ai;Ld/ag;)V

    .line 478
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld/a/d/e;->a(ZLjava/io/IOException;)V

    .line 480
    :cond_3
    return-void
.end method


# virtual methods
.method public a(Le/f;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    .line 441
    cmp-long v2, p2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iget-boolean v2, p0, Ld/a/d/e;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    iget-boolean v2, p0, Ld/a/d/e;->h:Z

    if-nez v2, :cond_3

    .line 457
    :cond_2
    :goto_0
    return-wide v0

    .line 445
    :cond_3
    iget-wide v2, p0, Ld/a/d/e;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, p0, Ld/a/d/e;->g:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_5

    .line 446
    :cond_4
    invoke-direct {p0}, Ld/a/d/e;->b()V

    .line 447
    iget-boolean v2, p0, Ld/a/d/e;->h:Z

    if-eqz v2, :cond_2

    .line 450
    :cond_5
    iget-wide v2, p0, Ld/a/d/e;->g:J

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-super {p0, p1, v2, v3}, Ld/a/d/c;->a(Le/f;J)J

    move-result-wide v2

    .line 451
    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 452
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ld/a/d/e;->a(ZLjava/io/IOException;)V

    .line 454
    throw v0

    .line 456
    :cond_6
    iget-wide v0, p0, Ld/a/d/e;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ld/a/d/e;->g:J

    move-wide v0, v2

    .line 457
    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iget-boolean v0, p0, Ld/a/d/e;->b:Z

    if-eqz v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-boolean v0, p0, Ld/a/d/e;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Ld/a/c;->a(Le/ab;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld/a/d/e;->a(ZLjava/io/IOException;)V

    .line 487
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/d/e;->b:Z

    goto :goto_0
.end method
