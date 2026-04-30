.class public Lcom/facebook/imagepipeline/c/z;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheFactory.java"


# direct methods
.method public static a(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/ab;)Lcom/facebook/imagepipeline/c/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;",
            "Lcom/facebook/imagepipeline/c/ab;",
            ")",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-interface {p1, p0}, Lcom/facebook/imagepipeline/c/ab;->b(Lcom/facebook/imagepipeline/c/m;)V

    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/c/aa;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/c/aa;-><init>(Lcom/facebook/imagepipeline/c/ab;)V

    .line 40
    new-instance v1, Lcom/facebook/imagepipeline/c/ac;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/c/ac;-><init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/af;)V

    return-object v1
.end method
