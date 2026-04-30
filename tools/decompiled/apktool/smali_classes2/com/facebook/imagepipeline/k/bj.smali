.class Lcom/facebook/imagepipeline/k/bj;
.super Lcom/facebook/imagepipeline/k/g;
.source "MediaVariationsFallbackProducer.java"


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/imagepipeline/k/bg;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bg;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bj;->b:Lcom/facebook/imagepipeline/k/bg;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    return-void
.end method
