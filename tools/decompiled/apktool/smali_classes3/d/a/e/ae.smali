.class Ld/a/e/ae;
.super Le/a;
.source "Http2Stream.java"


# instance fields
.field final synthetic a:Ld/a/e/ab;


# direct methods
.method constructor <init>(Ld/a/e/ab;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Ld/a/e/ae;->a:Ld/a/e/ab;

    invoke-direct {p0}, Le/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 593
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 594
    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 597
    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Ld/a/e/ae;->a:Ld/a/e/ab;

    sget-object v1, Ld/a/e/b;->f:Ld/a/e/b;

    invoke-virtual {v0, v1}, Ld/a/e/ab;->b(Ld/a/e/b;)V

    .line 590
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Ld/a/e/ae;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/a/e/ae;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 602
    :cond_0
    return-void
.end method
