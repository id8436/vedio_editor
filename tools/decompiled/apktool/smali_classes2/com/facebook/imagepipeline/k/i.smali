.class public Lcom/facebook/imagepipeline/k/i;
.super Lcom/facebook/imagepipeline/k/br;
.source "BitmapMemoryCacheKeyMultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/br",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/facebook/c/a/f;",
        "Lcom/facebook/imagepipeline/l/c;",
        ">;",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/c/k;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/br;-><init>(Lcom/facebook/imagepipeline/k/cl;)V

    .line 33
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/i;->b:Lcom/facebook/imagepipeline/c/k;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/k/cm;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/l/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/i;->b:Lcom/facebook/imagepipeline/c/k;

    .line 40
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    .line 41
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/k;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 42
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/cm;->e()Lcom/facebook/imagepipeline/l/c;

    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/facebook/d/h/a;->b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/i;->a(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/facebook/imagepipeline/k/cm;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/i;->a(Lcom/facebook/imagepipeline/k/cm;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
