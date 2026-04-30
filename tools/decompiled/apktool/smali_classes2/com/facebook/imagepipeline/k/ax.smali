.class Lcom/facebook/imagepipeline/k/ax;
.super Lcom/facebook/imagepipeline/k/g;
.source "LocalExifThumbnailProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cu;

.field final synthetic b:Lcom/facebook/imagepipeline/k/av;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/av;Lcom/facebook/imagepipeline/k/cu;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ax;->b:Lcom/facebook/imagepipeline/k/av;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ax;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ax;->a:Lcom/facebook/imagepipeline/k/cu;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/cu;->a()V

    .line 128
    return-void
.end method
