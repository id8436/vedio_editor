.class Lcom/facebook/imagepipeline/k/cx;
.super Lcom/facebook/imagepipeline/k/g;
.source "ThreadHandoffProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cu;

.field final synthetic b:Lcom/facebook/imagepipeline/k/cv;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/cv;Lcom/facebook/imagepipeline/k/cu;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cx;->b:Lcom/facebook/imagepipeline/k/cv;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cx;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cx;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/cu;->a()V

    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cx;->b:Lcom/facebook/imagepipeline/k/cv;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cv;->b(Lcom/facebook/imagepipeline/k/cv;)Lcom/facebook/imagepipeline/k/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cx;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/k/cy;->b(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method
