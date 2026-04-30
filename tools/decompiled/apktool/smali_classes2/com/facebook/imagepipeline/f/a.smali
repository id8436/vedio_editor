.class public abstract Lcom/facebook/imagepipeline/f/a;
.super Lcom/facebook/e/a;
.source "AbstractProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/e/a",
        "<TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/ct;

.field private final b:Lcom/facebook/imagepipeline/i/b;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/ct;Lcom/facebook/imagepipeline/i/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/ct;",
            "Lcom/facebook/imagepipeline/i/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/e/a;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 39
    iput-object p3, p0, Lcom/facebook/imagepipeline/f/a;->b:Lcom/facebook/imagepipeline/i/b;

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->b:Lcom/facebook/imagepipeline/i/b;

    .line 41
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/k/ct;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 42
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/k/ct;->d()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 43
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/k/ct;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 44
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/k/ct;->f()Z

    move-result v4

    .line 40
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/i/b;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 45
    invoke-direct {p0}, Lcom/facebook/imagepipeline/f/a;->j()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/f/a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/imagepipeline/f/a;->k()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/f/a;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/f/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/f/a;F)Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/f/a;->a(F)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/facebook/e/a;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->b:Lcom/facebook/imagepipeline/i/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 86
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/ct;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 87
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/k/ct;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 89
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/k/ct;->f()Z

    move-result v3

    .line 85
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/i/b;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 91
    :cond_0
    return-void
.end method

.method private j()Lcom/facebook/imagepipeline/k/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/k/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/imagepipeline/f/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/f/b;-><init>(Lcom/facebook/imagepipeline/f/a;)V

    return-object v0
.end method

.method private declared-synchronized k()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/a;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Z)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/facebook/e/a;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->b:Lcom/facebook/imagepipeline/i/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 76
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/ct;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 77
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/k/ct;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    .line 78
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/k/ct;->f()Z

    move-result v3

    .line 75
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/i/b;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/facebook/e/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/facebook/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->b:Lcom/facebook/imagepipeline/i/b;

    iget-object v1, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/k/ct;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/i/b;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/f/a;->a:Lcom/facebook/imagepipeline/k/ct;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/ct;->i()V

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
