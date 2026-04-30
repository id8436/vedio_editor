.class Lcom/facebook/imagepipeline/k/bf;
.super Lcom/facebook/imagepipeline/k/g;
.source "LocalVideoThumbnailProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cu;

.field final synthetic b:Lcom/facebook/imagepipeline/k/bd;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bd;Lcom/facebook/imagepipeline/k/cu;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bf;->b:Lcom/facebook/imagepipeline/k/bd;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bf;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bf;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/cu;->a()V

    .line 93
    return-void
.end method
