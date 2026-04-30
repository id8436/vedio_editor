.class public Lcom/facebook/imagepipeline/c/x;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/d/d/m;Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/b/f;)Lcom/facebook/imagepipeline/c/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/imagepipeline/c/ae;",
            ">;",
            "Lcom/facebook/d/g/b;",
            "Lcom/facebook/imagepipeline/b/f;",
            ")",
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Lcom/facebook/imagepipeline/c/y;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/c/y;-><init>()V

    .line 33
    new-instance v2, Lcom/facebook/imagepipeline/c/ag;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/c/ag;-><init>()V

    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/c/m;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/c/m;-><init>(Lcom/facebook/imagepipeline/c/am;Lcom/facebook/imagepipeline/c/q;Lcom/facebook/d/d/m;Lcom/facebook/imagepipeline/b/f;Z)V

    .line 43
    invoke-interface {p1, v0}, Lcom/facebook/d/g/b;->a(Lcom/facebook/d/g/a;)V

    .line 45
    return-object v0
.end method
