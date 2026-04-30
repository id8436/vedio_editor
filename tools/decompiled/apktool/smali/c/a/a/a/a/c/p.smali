.class public abstract Lc/a/a/a/a/c/p;
.super Lc/a/a/a/a/c/a;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lc/a/a/a/a/c/l;
.implements Lc/a/a/a/a/c/u;
.implements Lc/a/a/a/a/c/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/a/a/c/a",
        "<TParams;TProgress;TResult;>;",
        "Lc/a/a/a/a/c/l",
        "<",
        "Lc/a/a/a/a/c/y;",
        ">;",
        "Lc/a/a/a/a/c/u;",
        "Lc/a/a/a/a/c/y;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/a/a/c/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lc/a/a/a/a/c/a;-><init>()V

    .line 37
    new-instance v0, Lc/a/a/a/a/c/v;

    invoke-direct {v0}, Lc/a/a/a/a/c/v;-><init>()V

    iput-object v0, p0, Lc/a/a/a/a/c/p;->a:Lc/a/a/a/a/c/v;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/a/a/c/y;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->b()Lc/a/a/a/a/c/j;

    move-result-object v0

    sget-object v1, Lc/a/a/a/a/c/j;->a:Lc/a/a/a/a/c/j;

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    check-cast v0, Lc/a/a/a/a/c/l;

    invoke-interface {v0, p1}, Lc/a/a/a/a/c/l;->addDependency(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lc/a/a/a/a/c/q;

    invoke-direct {v0, p1, p0}, Lc/a/a/a/a/c/q;-><init>(Ljava/util/concurrent/Executor;Lc/a/a/a/a/c/p;)V

    .line 43
    invoke-super {p0, v0, p2}, Lc/a/a/a/a/c/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lc/a/a/a/a/c/a;

    .line 44
    return-void
.end method

.method public synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lc/a/a/a/a/c/y;

    invoke-virtual {p0, p1}, Lc/a/a/a/a/c/p;->a(Lc/a/a/a/a/c/y;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    check-cast v0, Lc/a/a/a/a/c/l;

    invoke-interface {v0}, Lc/a/a/a/a/c/l;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1}, Lc/a/a/a/a/c/o;->a(Lc/a/a/a/a/c/u;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()Lc/a/a/a/a/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/a/a/a/a/c/l",
            "<",
            "Lc/a/a/a/a/c/y;",
            ">;:",
            "Lc/a/a/a/a/c/u;",
            ":",
            "Lc/a/a/a/a/c/y;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lc/a/a/a/a/c/p;->a:Lc/a/a/a/a/c/v;

    return-object v0
.end method

.method public getDependencies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc/a/a/a/a/c/y;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    check-cast v0, Lc/a/a/a/a/c/l;

    invoke-interface {v0}, Lc/a/a/a/a/c/l;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lc/a/a/a/a/c/o;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    invoke-interface {v0}, Lc/a/a/a/a/c/u;->getPriority()Lc/a/a/a/a/c/o;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    check-cast v0, Lc/a/a/a/a/c/y;

    invoke-interface {v0}, Lc/a/a/a/a/c/y;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    check-cast v0, Lc/a/a/a/a/c/y;

    invoke-interface {v0, p1}, Lc/a/a/a/a/c/y;->setError(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public setFinished(Z)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lc/a/a/a/a/c/p;->e()Lc/a/a/a/a/c/l;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/u;

    check-cast v0, Lc/a/a/a/a/c/y;

    invoke-interface {v0, p1}, Lc/a/a/a/a/c/y;->setFinished(Z)V

    .line 82
    return-void
.end method
