.class Lcom/facebook/imagepipeline/k/bx;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/bz;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/ah;

.field final synthetic b:Lcom/facebook/imagepipeline/k/bw;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bx;->b:Lcom/facebook/imagepipeline/k/bw;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bx;->a:Lcom/facebook/imagepipeline/k/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bx;->b:Lcom/facebook/imagepipeline/k/bw;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bx;->a:Lcom/facebook/imagepipeline/k/ah;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;)V

    .line 83
    return-void
.end method

.method public a(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bx;->b:Lcom/facebook/imagepipeline/k/bw;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bx;->a:Lcom/facebook/imagepipeline/k/ah;

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;Ljava/io/InputStream;I)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bx;->b:Lcom/facebook/imagepipeline/k/bw;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bx;->a:Lcom/facebook/imagepipeline/k/ah;

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/k/bw;->a(Lcom/facebook/imagepipeline/k/bw;Lcom/facebook/imagepipeline/k/ah;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method
