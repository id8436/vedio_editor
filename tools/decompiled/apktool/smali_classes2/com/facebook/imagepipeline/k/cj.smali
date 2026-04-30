.class Lcom/facebook/imagepipeline/k/cj;
.super Lcom/facebook/imagepipeline/k/g;
.source "PostprocessorProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cd;

.field final synthetic b:Lcom/facebook/imagepipeline/k/ci;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ci;Lcom/facebook/imagepipeline/k/cd;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cj;->b:Lcom/facebook/imagepipeline/k/ci;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cj;->a:Lcom/facebook/imagepipeline/k/cd;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cj;->b:Lcom/facebook/imagepipeline/k/ci;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/ci;->a(Lcom/facebook/imagepipeline/k/ci;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cj;->b:Lcom/facebook/imagepipeline/k/ci;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/ci;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 354
    :cond_0
    return-void
.end method
