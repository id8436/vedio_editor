.class Lcom/facebook/imagepipeline/k/cr;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ap;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cp;

.field final synthetic b:Lcom/facebook/imagepipeline/k/cq;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/cq;Lcom/facebook/imagepipeline/k/cp;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cr;->b:Lcom/facebook/imagepipeline/k/cq;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cr;->a:Lcom/facebook/imagepipeline/k/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cr;->b:Lcom/facebook/imagepipeline/k/cq;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/k/cq;->a(Lcom/facebook/imagepipeline/k/cq;Lcom/facebook/imagepipeline/h/d;Z)V

    .line 103
    return-void
.end method
