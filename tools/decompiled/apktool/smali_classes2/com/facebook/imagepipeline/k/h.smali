.class public Lcom/facebook/imagepipeline/k/h;
.super Lcom/facebook/imagepipeline/k/j;
.source "BitmapMemoryCacheGetProducer.java"


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/imagepipeline/c/k;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/k/j;-><init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/k/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/c/a/f;",
            ")",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "BitmapMemoryCacheGetProducer"

    return-object v0
.end method
