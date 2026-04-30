.class Lcom/facebook/imagepipeline/k/az;
.super Lcom/facebook/imagepipeline/k/cu;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/cu",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/l/a;

.field final synthetic c:Lcom/facebook/imagepipeline/k/ay;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/ay;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/l/a;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/az;->c:Lcom/facebook/imagepipeline/k/ay;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/az;->b:Lcom/facebook/imagepipeline/l/a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/cu;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 67
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/az;->a(Lcom/facebook/imagepipeline/h/d;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/az;->d()Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/imagepipeline/h/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/az;->c:Lcom/facebook/imagepipeline/k/ay;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/az;->b:Lcom/facebook/imagepipeline/l/a;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/k/ay;->a(Lcom/facebook/imagepipeline/l/a;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/d;->l()V

    goto :goto_0
.end method
