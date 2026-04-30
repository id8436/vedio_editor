.class final Ld/a/d/d;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Le/aa;


# instance fields
.field final synthetic a:Ld/a/d/a;

.field private final b:Le/n;

.field private c:Z


# direct methods
.method constructor <init>(Ld/a/d/a;)V
    .locals 2

    .prologue
    .line 318
    iput-object p1, p0, Ld/a/d/d;->a:Ld/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Le/n;

    iget-object v1, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v1, v1, Ld/a/d/a;->d:Le/i;

    invoke-interface {v1}, Le/i;->a()Le/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Le/n;-><init>(Le/ac;)V

    iput-object v0, p0, Ld/a/d/d;->b:Le/n;

    .line 319
    return-void
.end method


# virtual methods
.method public a()Le/ac;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Ld/a/d/d;->b:Le/n;

    return-object v0
.end method

.method public a_(Le/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iget-boolean v0, p0, Ld/a/d/d;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0, p2, p3}, Le/i;->k(J)Le/i;

    .line 330
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 331
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0, p1, p2, p3}, Le/i;->a_(Le/f;J)V

    .line 332
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Le/i;->b(Ljava/lang/String;)Le/i;

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld/a/d/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ld/a/d/d;->c:Z

    .line 343
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    const-string/jumbo v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Le/i;->b(Ljava/lang/String;)Le/i;

    .line 344
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v1, p0, Ld/a/d/d;->b:Le/n;

    invoke-virtual {v0, v1}, Ld/a/d/a;->a(Le/n;)V

    .line 345
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Ld/a/d/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld/a/d/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    :try_start_1
    iget-object v0, p0, Ld/a/d/d;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0}, Le/i;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
