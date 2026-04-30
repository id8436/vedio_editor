.class Ld/a/e/m;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ld/a/e/ai;

.field final synthetic f:Ld/a/e/j;


# direct methods
.method varargs constructor <init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ZIILd/a/e/ai;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Ld/a/e/m;->f:Ld/a/e/j;

    iput-boolean p4, p0, Ld/a/e/m;->a:Z

    iput p5, p0, Ld/a/e/m;->c:I

    iput p6, p0, Ld/a/e/m;->d:I

    iput-object p7, p0, Ld/a/e/m;->e:Ld/a/e/ai;

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Ld/a/e/m;->f:Ld/a/e/j;

    iget-boolean v1, p0, Ld/a/e/m;->a:Z

    iget v2, p0, Ld/a/e/m;->c:I

    iget v3, p0, Ld/a/e/m;->d:I

    iget-object v4, p0, Ld/a/e/m;->e:Ld/a/e/ai;

    invoke-virtual {v0, v1, v2, v3, v4}, Ld/a/e/j;->b(ZIILd/a/e/ai;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    goto :goto_0
.end method
