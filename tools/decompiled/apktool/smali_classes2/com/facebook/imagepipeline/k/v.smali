.class Lcom/facebook/imagepipeline/k/v;
.super Lcom/facebook/imagepipeline/k/g;
.source "DecodeProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/q;

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/imagepipeline/k/t;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/q;Z)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/v;->c:Lcom/facebook/imagepipeline/k/t;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/v;->a:Lcom/facebook/imagepipeline/k/q;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/k/v;->b:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/v;->b:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/v;->c:Lcom/facebook/imagepipeline/k/t;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/t;->c(Lcom/facebook/imagepipeline/k/t;)V

    .line 163
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/v;->c:Lcom/facebook/imagepipeline/k/t;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/k/t;)Lcom/facebook/imagepipeline/k/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/v;->c:Lcom/facebook/imagepipeline/k/t;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/t;->b(Lcom/facebook/imagepipeline/k/t;)Lcom/facebook/imagepipeline/k/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->b()Z

    .line 156
    :cond_0
    return-void
.end method
