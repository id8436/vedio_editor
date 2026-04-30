.class final Lf/q;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lf/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lf/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/g",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lf/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lf/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lf/q;->a:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p2, p0, Lf/q;->b:Lf/g;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Lf/av;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/av",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lf/q;->b:Lf/g;

    invoke-interface {v0}, Lf/g;->a()Lf/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Lf/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    const-string/jumbo v0, "callback == null"

    invoke-static {p1, v0}, Lf/bb;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lf/q;->b:Lf/g;

    new-instance v1, Lf/r;

    invoke-direct {v1, p0, p1}, Lf/r;-><init>(Lf/q;Lf/j;)V

    invoke-interface {v0, v1}, Lf/g;->a(Lf/j;)V

    .line 84
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lf/q;->b:Lf/g;

    invoke-interface {v0}, Lf/g;->b()Z

    move-result v0

    return v0
.end method

.method public c()Lf/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lf/q;

    iget-object v1, p0, Lf/q;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lf/q;->b:Lf/g;

    invoke-interface {v2}, Lf/g;->c()Lf/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf/q;-><init>(Ljava/util/concurrent/Executor;Lf/g;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lf/q;->c()Lf/g;

    move-result-object v0

    return-object v0
.end method
