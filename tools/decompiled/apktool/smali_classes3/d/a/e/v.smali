.class Ld/a/e/v;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Ld/a/e/ab;

.field final synthetic c:Ld/a/e/u;


# direct methods
.method varargs constructor <init>(Ld/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Ld/a/e/ab;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Ld/a/e/v;->c:Ld/a/e/u;

    iput-object p4, p0, Ld/a/e/v;->a:Ld/a/e/ab;

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 628
    :try_start_0
    iget-object v0, p0, Ld/a/e/v;->c:Ld/a/e/u;

    iget-object v0, v0, Ld/a/e/u;->c:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->c:Ld/a/e/s;

    iget-object v1, p0, Ld/a/e/v;->a:Ld/a/e/ab;

    invoke-virtual {v0, v1}, Ld/a/e/s;->a(Ld/a/e/ab;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    invoke-static {}, Ld/a/g/i;->b()Ld/a/g/i;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ld/a/e/v;->c:Ld/a/e/u;

    iget-object v4, v4, Ld/a/e/u;->c:Ld/a/e/j;

    iget-object v4, v4, Ld/a/e/j;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ld/a/g/i;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    :try_start_1
    iget-object v0, p0, Ld/a/e/v;->a:Ld/a/e/ab;

    sget-object v1, Ld/a/e/b;->b:Ld/a/e/b;

    invoke-virtual {v0, v1}, Ld/a/e/ab;->a(Ld/a/e/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 633
    :catch_1
    move-exception v0

    goto :goto_0
.end method
