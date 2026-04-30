.class Lcom/facebook/imagepipeline/k/dc;
.super Ljava/lang/Object;
.source "ThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Lcom/facebook/imagepipeline/k/db;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/db;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/dc;->b:Lcom/facebook/imagepipeline/k/db;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/dc;->a:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dc;->b:Lcom/facebook/imagepipeline/k/db;

    iget-object v2, v0, Lcom/facebook/imagepipeline/k/db;->a:Lcom/facebook/imagepipeline/k/cz;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dc;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/k/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/dc;->a:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/k/cm;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/imagepipeline/k/cz;->b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 117
    return-void
.end method
