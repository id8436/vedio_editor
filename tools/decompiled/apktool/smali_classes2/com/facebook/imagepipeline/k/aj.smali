.class Lcom/facebook/imagepipeline/k/aj;
.super Ljava/lang/Object;
.source "HttpUrlConnectionNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/ah;

.field final synthetic b:Lcom/facebook/imagepipeline/k/bz;

.field final synthetic c:Lcom/facebook/imagepipeline/k/ai;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ai;Lcom/facebook/imagepipeline/k/ah;Lcom/facebook/imagepipeline/k/bz;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aj;->c:Lcom/facebook/imagepipeline/k/ai;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/aj;->a:Lcom/facebook/imagepipeline/k/ah;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/aj;->b:Lcom/facebook/imagepipeline/k/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aj;->c:Lcom/facebook/imagepipeline/k/ai;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/aj;->a:Lcom/facebook/imagepipeline/k/ah;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/aj;->b:Lcom/facebook/imagepipeline/k/bz;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/k/ai;->b(Lcom/facebook/imagepipeline/k/ah;Lcom/facebook/imagepipeline/k/bz;)V

    .line 62
    return-void
.end method
