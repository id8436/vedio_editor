.class Lcom/facebook/imagepipeline/k/ak;
.super Lcom/facebook/imagepipeline/k/g;
.source "HttpUrlConnectionNetworkFetcher.java"


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Lcom/facebook/imagepipeline/k/bz;

.field final synthetic c:Lcom/facebook/imagepipeline/k/ai;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ai;Ljava/util/concurrent/Future;Lcom/facebook/imagepipeline/k/bz;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ak;->c:Lcom/facebook/imagepipeline/k/ai;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ak;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/ak;->b:Lcom/facebook/imagepipeline/k/bz;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ak;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ak;->b:Lcom/facebook/imagepipeline/k/bz;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/bz;->a()V

    .line 71
    :cond_0
    return-void
.end method
