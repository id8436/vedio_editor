.class Lcom/facebook/imagepipeline/k/cs;
.super Lcom/facebook/imagepipeline/k/g;
.source "ResizeAndRotateProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cp;

.field final synthetic b:Lcom/facebook/imagepipeline/k/o;

.field final synthetic c:Lcom/facebook/imagepipeline/k/cq;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/cq;Lcom/facebook/imagepipeline/k/cp;Lcom/facebook/imagepipeline/k/o;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cs;->c:Lcom/facebook/imagepipeline/k/cq;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cs;->a:Lcom/facebook/imagepipeline/k/cp;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/cs;->b:Lcom/facebook/imagepipeline/k/o;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cs;->c:Lcom/facebook/imagepipeline/k/cq;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cq;->b(Lcom/facebook/imagepipeline/k/cq;)Lcom/facebook/imagepipeline/k/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->a()V

    .line 118
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cs;->c:Lcom/facebook/imagepipeline/k/cq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/k/cq;->a(Lcom/facebook/imagepipeline/k/cq;Z)Z

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cs;->b:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 121
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cs;->c:Lcom/facebook/imagepipeline/k/cq;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cq;->a(Lcom/facebook/imagepipeline/k/cq;)Lcom/facebook/imagepipeline/k/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cs;->c:Lcom/facebook/imagepipeline/k/cq;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cq;->b(Lcom/facebook/imagepipeline/k/cq;)Lcom/facebook/imagepipeline/k/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->b()Z

    .line 114
    :cond_0
    return-void
.end method
