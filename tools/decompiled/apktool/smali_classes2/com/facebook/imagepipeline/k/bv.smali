.class Lcom/facebook/imagepipeline/k/bv;
.super Lcom/facebook/imagepipeline/k/d;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/bt;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/bt;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bv;->a:Lcom/facebook/imagepipeline/k/bt;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/bt;Lcom/facebook/imagepipeline/k/bs;)V
    .locals 0

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/bv;-><init>(Lcom/facebook/imagepipeline/k/bt;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bv;->a:Lcom/facebook/imagepipeline/k/bt;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/k/bt;->a(Lcom/facebook/imagepipeline/k/bv;)V

    .line 510
    return-void
.end method

.method protected a(F)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bv;->a:Lcom/facebook/imagepipeline/k/bt;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/imagepipeline/k/bt;->a(Lcom/facebook/imagepipeline/k/bv;F)V

    .line 515
    return-void
.end method

.method protected a(Ljava/io/Closeable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bv;->a:Lcom/facebook/imagepipeline/k/bt;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/k/bt;->a(Lcom/facebook/imagepipeline/k/bv;Ljava/io/Closeable;Z)V

    .line 500
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 496
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/bv;->a(Ljava/io/Closeable;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bv;->a:Lcom/facebook/imagepipeline/k/bt;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/imagepipeline/k/bt;->a(Lcom/facebook/imagepipeline/k/bv;Ljava/lang/Throwable;)V

    .line 505
    return-void
.end method
