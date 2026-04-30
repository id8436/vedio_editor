.class Lcom/facebook/imagepipeline/k/cg;
.super Lcom/facebook/imagepipeline/k/g;
.source "PostprocessorProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cd;

.field final synthetic b:Lcom/facebook/imagepipeline/k/cf;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/imagepipeline/k/cd;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cg;->b:Lcom/facebook/imagepipeline/k/cf;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cg;->a:Lcom/facebook/imagepipeline/k/cd;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cg;->b:Lcom/facebook/imagepipeline/k/cf;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cf;->a(Lcom/facebook/imagepipeline/k/cf;)V

    .line 113
    return-void
.end method
