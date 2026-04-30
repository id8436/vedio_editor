.class final Le/v;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Le/j;


# instance fields
.field public final a:Le/f;

.field public final b:Le/ab;

.field c:Z


# direct methods
.method constructor <init>(Le/ab;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Le/f;

    invoke-direct {v0}, Le/f;-><init>()V

    iput-object v0, p0, Le/v;->a:Le/f;

    .line 32
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Le/v;->b:Le/ab;

    .line 34
    return-void
.end method


# virtual methods
.method public a(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Le/v;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 332
    iget-boolean v0, p0, Le/v;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    cmp-long v0, p4, p2

    if-gez v0, :cond_6

    .line 334
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex=%s toIndex=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 335
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 338
    :goto_0
    cmp-long v0, v2, p4

    if-gez v0, :cond_5

    .line 339
    iget-object v0, p0, Le/v;->a:Le/f;

    move v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Le/f;->a(BJJ)J

    move-result-wide v0

    .line 340
    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    .line 350
    :goto_1
    return-wide v0

    .line 344
    :cond_3
    iget-object v0, p0, Le/v;->a:Le/f;

    iget-wide v0, v0, Le/f;->b:J

    .line 345
    cmp-long v4, v0, p4

    if-gez v4, :cond_4

    iget-object v4, p0, Le/v;->b:Le/ab;

    iget-object v5, p0, Le/v;->a:Le/f;

    const-wide/16 v8, 0x2000

    invoke-interface {v4, v5, v8, v9}, Le/ab;->a(Le/f;J)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    :cond_4
    move-wide v0, v6

    goto :goto_1

    :cond_5
    move-wide v0, v6

    .line 350
    goto :goto_1

    :cond_6
    move-wide v2, p2

    goto :goto_0
.end method

.method public a(Le/aa;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 160
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-wide v0, v2

    .line 163
    :cond_1
    :goto_0
    iget-object v4, p0, Le/v;->b:Le/ab;

    iget-object v5, p0, Le/v;->a:Le/f;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Le/ab;->a(Le/f;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, p0, Le/v;->a:Le/f;

    invoke-virtual {v4}, Le/f;->h()J

    move-result-wide v4

    .line 165
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 166
    add-long/2addr v0, v4

    .line 167
    iget-object v6, p0, Le/v;->a:Le/f;

    invoke-interface {p1, v6, v4, v5}, Le/aa;->a_(Le/f;J)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v4, p0, Le/v;->a:Le/f;

    invoke-virtual {v4}, Le/f;->b()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 171
    iget-object v2, p0, Le/v;->a:Le/f;

    invoke-virtual {v2}, Le/f;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 172
    iget-object v2, p0, Le/v;->a:Le/f;

    iget-object v3, p0, Le/v;->a:Le/f;

    invoke-virtual {v3}, Le/f;->b()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Le/aa;->a_(Le/f;J)V

    .line 174
    :cond_3
    return-wide v0
.end method

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

    .line 41
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    cmp-long v2, p2, v4

    if-gez v2, :cond_1

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

    .line 43
    :cond_1
    iget-boolean v2, p0, Le/v;->c:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iget-object v2, p0, Le/v;->a:Le/f;

    iget-wide v2, v2, Le/f;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 46
    iget-object v2, p0, Le/v;->b:Le/ab;

    iget-object v3, p0, Le/v;->a:Le/f;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Le/ab;->a(Le/f;J)J

    move-result-wide v2

    .line 47
    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 51
    :goto_0
    return-wide v0

    .line 50
    :cond_3
    iget-object v0, p0, Le/v;->a:Le/f;

    iget-wide v0, v0, Le/f;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 51
    iget-object v2, p0, Le/v;->a:Le/f;

    invoke-virtual {v2, p1, v0, v1}, Le/f;->a(Le/f;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a()Le/ac;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Le/v;->b:Le/ab;

    invoke-interface {v0}, Le/ab;->a()Le/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Le/v;->a:Le/f;

    iget-object v1, p0, Le/v;->b:Le/ab;

    invoke-virtual {v0, v1}, Le/f;->a(Le/ab;)J

    .line 191
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0, p1}, Le/f;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Le/v;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 61
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Le/v;->a(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0, p1}, Le/f;->a([B)V

    .line 134
    return-void

    .line 123
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 125
    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v2, p0, Le/v;->a:Le/f;

    iget-wide v2, v2, Le/f;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 127
    iget-object v2, p0, Le/v;->a:Le/f;

    iget-object v3, p0, Le/v;->a:Le/f;

    iget-wide v4, v3, Le/f;->b:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, Le/f;->a([BII)I

    move-result v2

    .line 128
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    add-int/2addr v0, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    throw v1
.end method

.method public a(JLe/k;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    const/4 v5, 0x0

    invoke-virtual {p3}, Le/k;->g()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Le/v;->a(JLe/k;II)Z

    move-result v0

    return v0
.end method

.method public a(JLe/k;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 398
    iget-boolean v1, p0, Le/v;->c:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    if-ltz p4, :cond_1

    if-ltz p5, :cond_1

    .line 403
    invoke-virtual {p3}, Le/k;->g()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_2

    .line 411
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    .line 406
    :goto_1
    if-ge v1, p5, :cond_3

    .line 407
    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 408
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Le/v;->b(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    iget-object v4, p0, Le/v;->a:Le/f;

    invoke-virtual {v4, v2, v3}, Le/f;->b(J)B

    move-result v2

    add-int v3, p4, v1

    invoke-virtual {p3, v3}, Le/k;->a(I)B

    move-result v3

    if-ne v2, v3, :cond_1

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-boolean v0, p0, Le/v;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iget-object v0, p0, Le/v;->a:Le/f;

    iget-wide v0, v0, Le/f;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 67
    iget-object v0, p0, Le/v;->b:Le/ab;

    iget-object v1, p0, Le/v;->a:Le/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Le/ab;->a(Le/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Le/f;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Le/v;->a:Le/f;

    return-object v0
.end method

.method public c(J)Le/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Le/v;->a(J)V

    .line 84
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0, p1, p2}, Le/f;->c(J)Le/k;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    iget-boolean v0, p0, Le/v;->c:Z

    if-eqz v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/v;->c:Z

    .line 455
    iget-object v0, p0, Le/v;->b:Le/ab;

    invoke-interface {v0}, Le/ab;->close()V

    .line 456
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->s()V

    goto :goto_0
.end method

.method public e(J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    .line 217
    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Le/v;->a(BJJ)J

    move-result-wide v0

    .line 218
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/v;->a:Le/f;

    invoke-virtual {v2, v0, v1}, Le/f;->f(J)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_1
    return-object v0

    .line 216
    :cond_1
    const-wide/16 v0, 0x1

    add-long v4, p1, v0

    goto :goto_0

    .line 219
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    .line 220
    invoke-virtual {p0, v4, v5}, Le/v;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/v;->a:Le/f;

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Le/f;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    .line 221
    invoke-virtual {p0, v0, v1}, Le/v;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0, v4, v5}, Le/f;->b(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 222
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0, v4, v5}, Le/f;->f(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 224
    :cond_3
    new-instance v1, Le/f;

    invoke-direct {v1}, Le/f;-><init>()V

    .line 225
    iget-object v0, p0, Le/v;->a:Le/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Le/v;->a:Le/f;

    invoke-virtual {v6}, Le/f;->b()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Le/f;->a(Le/f;JJ)Le/f;

    .line 226
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/v;->a:Le/f;

    invoke-virtual {v3}, Le/f;->b()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    invoke-virtual {v1}, Le/f;->o()Le/k;

    move-result-object v1

    invoke-virtual {v1}, Le/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Le/v;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/v;->b:Le/ab;

    iget-object v1, p0, Le/v;->a:Le/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Le/ab;->a(Le/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Le/w;

    invoke-direct {v0, p0}, Le/w;-><init>(Le/v;)V

    return-object v0
.end method

.method public g(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Le/v;->a(J)V

    .line 113
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0, p1, p2}, Le/f;->g(J)[B

    move-result-object v0

    return-object v0
.end method

.method public h(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 312
    iget-boolean v0, p0, Le/v;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->b()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 318
    iget-object v2, p0, Le/v;->a:Le/f;

    invoke-virtual {v2, v0, v1}, Le/f;->h(J)V

    .line 319
    sub-long/2addr p1, v0

    .line 313
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    .line 314
    iget-object v0, p0, Le/v;->a:Le/f;

    iget-wide v0, v0, Le/f;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Le/v;->b:Le/ab;

    iget-object v1, p0, Le/v;->a:Le/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Le/ab;->a(Le/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 321
    :cond_2
    return-void
.end method

.method public i()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Le/v;->a(J)V

    .line 74
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->i()B

    move-result v0

    return v0
.end method

.method public j()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Le/v;->a(J)V

    .line 247
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->j()S

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Le/v;->a(J)V

    .line 257
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->k()I

    move-result v0

    return v0
.end method

.method public l()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Le/v;->a(J)V

    .line 252
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->l()S

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Le/v;->a(J)V

    .line 262
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->m()I

    move-result v0

    return v0
.end method

.method public n()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 294
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Le/v;->a(J)V

    move v0, v1

    .line 296
    :goto_0
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Le/v;->b(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Le/v;->a:Le/f;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Le/f;->b(J)B

    move-result v2

    .line 298
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    .line 300
    :cond_2
    if-nez v0, :cond_4

    .line 301
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 302
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    .line 301
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Le/v;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Le/v;->a:Le/f;

    iget-object v1, p0, Le/v;->b:Le/ab;

    invoke-virtual {v0, v1}, Le/f;->a(Le/ab;)J

    .line 108
    iget-object v0, p0, Le/v;->a:Le/f;

    invoke-virtual {v0}, Le/f;->r()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/v;->b:Le/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
