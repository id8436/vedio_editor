.class Lcom/facebook/imagepipeline/k/cw;
.super Lcom/facebook/imagepipeline/k/cu;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/cu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/k/co;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/facebook/imagepipeline/k/o;

.field final synthetic e:Lcom/facebook/imagepipeline/k/cm;

.field final synthetic f:Lcom/facebook/imagepipeline/k/cv;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/cv;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cw;->f:Lcom/facebook/imagepipeline/k/cv;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/cw;->b:Lcom/facebook/imagepipeline/k/co;

    iput-object p7, p0, Lcom/facebook/imagepipeline/k/cw;->c:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/imagepipeline/k/cw;->d:Lcom/facebook/imagepipeline/k/o;

    iput-object p9, p0, Lcom/facebook/imagepipeline/k/cw;->e:Lcom/facebook/imagepipeline/k/cm;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/cu;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cw;->b:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cw;->c:Ljava/lang/String;

    const-string/jumbo v2, "BackgroundThreadHandoffProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cw;->f:Lcom/facebook/imagepipeline/k/cv;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cv;->a(Lcom/facebook/imagepipeline/k/cv;)Lcom/facebook/imagepipeline/k/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cw;->d:Lcom/facebook/imagepipeline/k/o;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/cw;->e:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 44
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
