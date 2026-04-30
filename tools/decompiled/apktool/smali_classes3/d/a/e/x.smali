.class Ld/a/e/x;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Ld/a/e/al;

.field final synthetic c:Ld/a/e/u;


# direct methods
.method varargs constructor <init>(Ld/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Ld/a/e/al;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Ld/a/e/x;->c:Ld/a/e/u;

    iput-object p4, p0, Ld/a/e/x;->a:Ld/a/e/al;

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 696
    :try_start_0
    iget-object v0, p0, Ld/a/e/x;->c:Ld/a/e/u;

    iget-object v0, v0, Ld/a/e/u;->c:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->p:Ld/a/e/af;

    iget-object v1, p0, Ld/a/e/x;->a:Ld/a/e/al;

    invoke-virtual {v0, v1}, Ld/a/e/af;->a(Ld/a/e/al;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    goto :goto_0
.end method
