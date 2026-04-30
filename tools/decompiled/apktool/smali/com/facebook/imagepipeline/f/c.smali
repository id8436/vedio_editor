.class public Lcom/facebook/imagepipeline/f/c;
.super Lcom/facebook/imagepipeline/f/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/f/a",
        "<",
        "Lcom/facebook/d/h/a",
        "<TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/ct;Lcom/facebook/imagepipeline/i/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/k/ct;",
            "Lcom/facebook/imagepipeline/i/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/f/a;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/ct;Lcom/facebook/imagepipeline/i/b;)V

    .line 43
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/ct;Lcom/facebook/imagepipeline/i/b;)Lcom/facebook/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/k/ct;",
            "Lcom/facebook/imagepipeline/i/b;",
            ")",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/imagepipeline/f/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/f/c;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/ct;Lcom/facebook/imagepipeline/i/b;)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/d/h/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 54
    return-void
.end method

.method protected a(Lcom/facebook/d/h/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/facebook/imagepipeline/f/a;->b(Ljava/lang/Object;Z)V

    .line 59
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/f/c;->a(Lcom/facebook/d/h/a;)V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/f/c;->a(Lcom/facebook/d/h/a;Z)V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/f/c;->j()Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    invoke-super {p0}, Lcom/facebook/imagepipeline/f/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h/a;

    invoke-static {v0}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method
