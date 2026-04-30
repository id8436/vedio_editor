.class Ld/a/e/w;
.super Ld/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Ld/a/e/u;


# direct methods
.method varargs constructor <init>(Ld/a/e/u;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Ld/a/e/w;->a:Ld/a/e/u;

    invoke-direct {p0, p2, p3}, Ld/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Ld/a/e/w;->a:Ld/a/e/u;

    iget-object v0, v0, Ld/a/e/u;->c:Ld/a/e/j;

    iget-object v0, v0, Ld/a/e/j;->c:Ld/a/e/s;

    iget-object v1, p0, Ld/a/e/w;->a:Ld/a/e/u;

    iget-object v1, v1, Ld/a/e/u;->c:Ld/a/e/j;

    invoke-virtual {v0, v1}, Ld/a/e/s;->a(Ld/a/e/j;)V

    .line 680
    return-void
.end method
