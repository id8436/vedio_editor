.class public final Ld/d;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Ld/a/a/i;

.field final b:Ld/a/a/f;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Ld/d;->b:Ld/a/a/f;

    invoke-virtual {v0}, Ld/a/a/f;->close()V

    .line 392
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Ld/d;->b:Ld/a/a/f;

    invoke-virtual {v0}, Ld/a/a/f;->flush()V

    .line 388
    return-void
.end method
