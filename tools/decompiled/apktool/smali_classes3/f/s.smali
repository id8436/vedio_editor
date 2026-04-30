.class Lf/s;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf/av;

.field final synthetic b:Lf/r;


# direct methods
.method constructor <init>(Lf/r;Lf/av;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lf/s;->b:Lf/r;

    iput-object p2, p0, Lf/s;->a:Lf/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lf/s;->b:Lf/r;

    iget-object v0, v0, Lf/r;->b:Lf/q;

    iget-object v0, v0, Lf/q;->b:Lf/g;

    invoke-interface {v0}, Lf/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lf/s;->b:Lf/r;

    iget-object v0, v0, Lf/r;->a:Lf/j;

    iget-object v1, p0, Lf/s;->b:Lf/r;

    iget-object v1, v1, Lf/r;->b:Lf/q;

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lf/j;->onFailure(Lf/g;Ljava/lang/Throwable;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lf/s;->b:Lf/r;

    iget-object v0, v0, Lf/r;->a:Lf/j;

    iget-object v1, p0, Lf/s;->b:Lf/r;

    iget-object v1, v1, Lf/r;->b:Lf/q;

    iget-object v2, p0, Lf/s;->a:Lf/av;

    invoke-interface {v0, v1, v2}, Lf/j;->onResponse(Lf/g;Lf/av;)V

    goto :goto_0
.end method
