.class Lcom/facebook/imagepipeline/k/z;
.super Lcom/facebook/imagepipeline/k/g;
.source "DiskCacheReadProducer.java"


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/imagepipeline/k/x;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/x;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/z;->b:Lcom/facebook/imagepipeline/k/x;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/z;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/z;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    return-void
.end method
