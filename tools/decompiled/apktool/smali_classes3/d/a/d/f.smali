.class final Ld/a/d/f;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Le/aa;


# instance fields
.field final synthetic a:Ld/a/d/a;

.field private final b:Le/n;

.field private c:Z

.field private d:J


# direct methods
.method constructor <init>(Ld/a/d/a;J)V
    .locals 2

    .prologue
    .line 277
    iput-object p1, p0, Ld/a/d/f;->a:Ld/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Le/n;

    iget-object v1, p0, Ld/a/d/f;->a:Ld/a/d/a;

    iget-object v1, v1, Ld/a/d/a;->d:Le/i;

    invoke-interface {v1}, Le/i;->a()Le/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Le/n;-><init>(Le/ac;)V

    iput-object v0, p0, Ld/a/d/f;->b:Le/n;

    .line 278
    iput-wide p2, p0, Ld/a/d/f;->d:J

    .line 279
    return-void
.end method


# virtual methods
.method public a()Le/ac;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ld/a/d/f;->b:Le/n;

    return-object v0
.end method

.method public a_(Le/f;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-boolean v0, p0, Ld/a/d/f;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Le/f;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ld/a/c;->a(JJJ)V

    .line 288
    iget-wide v0, p0, Ld/a/d/f;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 289
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ld/a/d/f;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    iget-object v0, p0, Ld/a/d/f;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0, p1, p2, p3}, Le/i;->a_(Le/f;J)V

    .line 293
    iget-wide v0, p0, Ld/a/d/f;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Ld/a/d/f;->d:J

    .line 294
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-boolean v0, p0, Ld/a/d/f;->c:Z

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/d/f;->c:Z

    .line 304
    iget-wide v0, p0, Ld/a/d/f;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    iget-object v0, p0, Ld/a/d/f;->a:Ld/a/d/a;

    iget-object v1, p0, Ld/a/d/f;->b:Le/n;

    invoke-virtual {v0, v1}, Ld/a/d/a;->a(Le/n;)V

    .line 306
    iget-object v0, p0, Ld/a/d/f;->a:Ld/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Ld/a/d/a;->e:I

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-boolean v0, p0, Ld/a/d/f;->c:Z

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Ld/a/d/f;->a:Ld/a/d/a;

    iget-object v0, v0, Ld/a/d/a;->d:Le/i;

    invoke-interface {v0}, Le/i;->flush()V

    goto :goto_0
.end method
