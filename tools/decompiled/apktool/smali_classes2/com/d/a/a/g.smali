.class public abstract Lcom/d/a/a/g;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field protected a:Lcom/d/a/a/q;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/d/a/a/g;
    .locals 0

    .prologue
    .line 506
    return-object p0
.end method

.method public a(Lcom/d/a/a/b/b;)Lcom/d/a/a/g;
    .locals 0

    .prologue
    .line 534
    return-object p0
.end method

.method public a(Lcom/d/a/a/q;)Lcom/d/a/a/g;
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/d/a/a/g;->a:Lcom/d/a/a/q;

    .line 463
    return-object p0
.end method

.method public a(Lcom/d/a/a/r;)Lcom/d/a/a/g;
    .locals 1

    .prologue
    .line 548
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a()Lcom/d/a/a/q;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/d/a/a/g;->a:Lcom/d/a/a/q;

    return-object v0
.end method

.method public abstract a(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/d/a/a/a;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-virtual {p0, p1}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0, p2}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method public abstract a(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public a([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-static {}, Lcom/d/a/a/b;->a()Lcom/d/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/d/a/a/g;->a(Lcom/d/a/a/a;[BII)V

    .line 1019
    return-void
.end method

.method public abstract a([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/d/a/a/g;
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/d/a/a/g;->c()V

    .line 735
    return-void
.end method

.method public b(Lcom/d/a/a/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    invoke-interface {p1}, Lcom/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/g;->c(Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1676
    new-instance v0, Lcom/d/a/a/f;

    invoke-direct {v0, p1, p0}, Lcom/d/a/a/f;-><init>(Ljava/lang/String;Lcom/d/a/a/g;)V

    throw v0
.end method

.method public abstract f()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final h()V
    .locals 0

    .prologue
    .line 1679
    invoke-static {}, Lcom/d/a/a/e/j;->a()V

    return-void
.end method
