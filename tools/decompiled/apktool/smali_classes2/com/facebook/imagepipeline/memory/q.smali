.class Lcom/facebook/imagepipeline/memory/q;
.super Lcom/facebook/imagepipeline/memory/r;
.source "FlexByteArrayPool.java"


# direct methods
.method public constructor <init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;Lcom/facebook/imagepipeline/memory/af;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/r;-><init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;Lcom/facebook/imagepipeline/memory/af;)V

    .line 72
    return-void
.end method


# virtual methods
.method g(I)Lcom/facebook/imagepipeline/memory/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/i",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/imagepipeline/memory/y;

    .line 77
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/q;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/q;->b:Lcom/facebook/imagepipeline/memory/ae;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/ae;->f:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/y;-><init>(III)V

    .line 76
    return-object v0
.end method
