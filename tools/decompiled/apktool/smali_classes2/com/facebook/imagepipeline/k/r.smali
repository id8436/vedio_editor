.class Lcom/facebook/imagepipeline/k/r;
.super Lcom/facebook/imagepipeline/k/t;
.source "DecodeProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/q;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 376
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/r;->a:Lcom/facebook/imagepipeline/k/q;

    .line 377
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/k/t;-><init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V

    .line 378
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;)I
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->k()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized a(Lcom/facebook/imagepipeline/h/d;Z)Z
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    if-nez p2, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/d;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Lcom/facebook/imagepipeline/h/g;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-static {v0, v0, v0}, Lcom/facebook/imagepipeline/h/f;->a(IZZ)Lcom/facebook/imagepipeline/h/g;

    move-result-object v0

    return-object v0
.end method
