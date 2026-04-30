.class Ld/a/d/h;
.super Ld/a/d/c;
.source "Http1Codec.java"


# instance fields
.field final synthetic e:Ld/a/d/a;

.field private f:Z


# direct methods
.method constructor <init>(Ld/a/d/a;)V
    .locals 1

    .prologue
    .line 495
    iput-object p1, p0, Ld/a/d/h;->e:Ld/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld/a/d/c;-><init>(Ld/a/d/a;Ld/a/d/b;)V

    .line 496
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
    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    .line 500
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

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

    .line 501
    :cond_0
    iget-boolean v2, p0, Ld/a/d/h;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1
    iget-boolean v2, p0, Ld/a/d/h;->f:Z

    if-eqz v2, :cond_2

    .line 510
    :goto_0
    return-wide v0

    .line 504
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ld/a/d/c;->a(Le/f;J)J

    move-result-wide v2

    .line 505
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 506
    iput-boolean v5, p0, Ld/a/d/h;->f:Z

    .line 507
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Ld/a/d/h;->a(ZLjava/io/IOException;)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 510
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
    .line 514
    iget-boolean v0, p0, Ld/a/d/h;->b:Z

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-boolean v0, p0, Ld/a/d/h;->f:Z

    if-nez v0, :cond_1

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld/a/d/h;->a(ZLjava/io/IOException;)V

    .line 518
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a/d/h;->b:Z

    goto :goto_0
.end method
