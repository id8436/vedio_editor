.class Lf/r;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/j;

.field final synthetic b:Lf/q;


# direct methods
.method constructor <init>(Lf/q;Lf/j;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lf/r;->b:Lf/q;

    iput-object p2, p0, Lf/r;->a:Lf/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lf/g;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lf/r;->b:Lf/q;

    iget-object v0, v0, Lf/q;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lf/t;

    invoke-direct {v1, p0, p2}, Lf/t;-><init>(Lf/r;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public onResponse(Lf/g;Lf/av;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/g",
            "<TT;>;",
            "Lf/av",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lf/r;->b:Lf/q;

    iget-object v0, v0, Lf/q;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lf/s;

    invoke-direct {v1, p0, p2}, Lf/s;-><init>(Lf/r;Lf/av;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method
