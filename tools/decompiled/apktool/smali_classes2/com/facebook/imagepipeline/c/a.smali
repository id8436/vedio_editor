.class public Lcom/facebook/imagepipeline/c/a;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/d/d/m;Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/b/f;Z)Lcom/facebook/imagepipeline/c/m;
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
            "Z)",
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Lcom/facebook/imagepipeline/c/b;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/c/b;-><init>()V

    .line 33
    new-instance v2, Lcom/facebook/imagepipeline/c/f;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/c/f;-><init>()V

    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/c/m;

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/c/m;-><init>(Lcom/facebook/imagepipeline/c/am;Lcom/facebook/imagepipeline/c/q;Lcom/facebook/d/d/m;Lcom/facebook/imagepipeline/b/f;Z)V

    .line 43
    invoke-interface {p1, v0}, Lcom/facebook/d/g/b;->a(Lcom/facebook/d/g/a;)V

    .line 45
    return-object v0
.end method
