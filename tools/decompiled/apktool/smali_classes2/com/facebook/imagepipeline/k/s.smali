.class Lcom/facebook/imagepipeline/k/s;
.super Lcom/facebook/imagepipeline/k/t;
.source "DecodeProducer.java"


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/q;

.field private final c:Lcom/facebook/imagepipeline/g/f;

.field private final d:Lcom/facebook/imagepipeline/g/e;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/g/f;Lcom/facebook/imagepipeline/g/e;Z)V
    .locals 1
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
            "Lcom/facebook/imagepipeline/g/f;",
            "Lcom/facebook/imagepipeline/g/e;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 410
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/s;->a:Lcom/facebook/imagepipeline/k/q;

    .line 411
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/facebook/imagepipeline/k/t;-><init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V

    .line 412
    invoke-static {p4}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/f;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/s;->c:Lcom/facebook/imagepipeline/g/f;

    .line 413
    invoke-static {p5}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/e;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/s;->d:Lcom/facebook/imagepipeline/g/e;

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/imagepipeline/k/s;->e:I

    .line 415
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;)I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/s;->c:Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/g/f;->a()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized a(Lcom/facebook/imagepipeline/h/d;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 419
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/d;Z)Z

    move-result v1

    .line 420
    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->e(Lcom/facebook/imagepipeline/h/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/s;->c:Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/g/f;->a(Lcom/facebook/imagepipeline/h/d;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 424
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/s;->c:Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/g/f;->b()I

    move-result v2

    .line 425
    iget v3, p0, Lcom/facebook/imagepipeline/k/s;->e:I

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/s;->d:Lcom/facebook/imagepipeline/g/e;

    iget v4, p0, Lcom/facebook/imagepipeline/k/s;->e:I

    .line 426
    invoke-interface {v3, v4}, Lcom/facebook/imagepipeline/g/e;->a(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 430
    iput v2, p0, Lcom/facebook/imagepipeline/k/s;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    .line 432
    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()Lcom/facebook/imagepipeline/h/g;
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/s;->d:Lcom/facebook/imagepipeline/g/e;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/s;->c:Lcom/facebook/imagepipeline/g/f;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/g/f;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/g/e;->b(I)Lcom/facebook/imagepipeline/h/g;

    move-result-object v0

    return-object v0
.end method
