.class Ld/a/e/k;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Ld/a/e/b;

.field final synthetic d:Ld/a/e/j;


# direct methods
.method varargs constructor <init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILd/a/e/b;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Ld/a/e/k;->d:Ld/a/e/j;

    iput p4, p0, Ld/a/e/k;->a:I

    iput-object p5, p0, Ld/a/e/k;->c:Ld/a/e/b;

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Ld/a/e/k;->d:Ld/a/e/j;

    iget v1, p0, Ld/a/e/k;->a:I

    iget-object v2, p0, Ld/a/e/k;->c:Ld/a/e/b;

    invoke-virtual {v0, v1, v2}, Ld/a/e/j;->b(ILd/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method
