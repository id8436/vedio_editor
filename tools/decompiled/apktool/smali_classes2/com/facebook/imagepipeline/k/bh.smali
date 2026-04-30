.class Lcom/facebook/imagepipeline/k/bh;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/imagepipeline/l/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/o;

.field final synthetic b:Lcom/facebook/imagepipeline/k/cm;

.field final synthetic c:Lcom/facebook/imagepipeline/l/f;

.field final synthetic d:Lcom/facebook/imagepipeline/l/a;

.field final synthetic e:Lcom/facebook/imagepipeline/d/d;

.field final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic g:Lcom/facebook/imagepipeline/k/bg;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bh;->g:Lcom/facebook/imagepipeline/k/bg;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bh;->a:Lcom/facebook/imagepipeline/k/o;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bh;->b:Lcom/facebook/imagepipeline/k/cm;

    iput-object p4, p0, Lcom/facebook/imagepipeline/k/bh;->c:Lcom/facebook/imagepipeline/l/f;

    iput-object p5, p0, Lcom/facebook/imagepipeline/k/bh;->d:Lcom/facebook/imagepipeline/l/a;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/bh;->e:Lcom/facebook/imagepipeline/d/d;

    iput-object p7, p0, Lcom/facebook/imagepipeline/k/bh;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/l;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-virtual {p1}, La/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object p1

    .line 111
    :cond_1
    :try_start_0
    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bh;->g:Lcom/facebook/imagepipeline/k/bg;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bh;->a:Lcom/facebook/imagepipeline/k/o;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bh;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    move-object p1, v8

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bh;->g:Lcom/facebook/imagepipeline/k/bg;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bh;->a:Lcom/facebook/imagepipeline/k/o;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bh;->b:Lcom/facebook/imagepipeline/k/cm;

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bh;->c:Lcom/facebook/imagepipeline/l/f;

    .line 119
    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/bh;->d:Lcom/facebook/imagepipeline/l/a;

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/bh;->e:Lcom/facebook/imagepipeline/d/d;

    iget-object v7, p0, Lcom/facebook/imagepipeline/k/bh;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    invoke-static/range {v0 .. v7}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Ljava/util/List;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    move-object p1, v8

    .line 125
    goto :goto_0
.end method
