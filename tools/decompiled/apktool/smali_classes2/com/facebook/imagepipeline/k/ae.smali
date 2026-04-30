.class public Lcom/facebook/imagepipeline/k/ae;
.super Lcom/facebook/imagepipeline/k/br;
.source "EncodedCacheKeyMultiplexProducer.java"


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
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/imagepipeline/c/k;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/br;-><init>(Lcom/facebook/imagepipeline/k/cl;)V

    .line 31
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ae;->b:Lcom/facebook/imagepipeline/c/k;

    .line 32
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
    .line 35
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ae;->b:Lcom/facebook/imagepipeline/c/k;

    .line 37
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v2

    .line 36
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/cm;->e()Lcom/facebook/imagepipeline/l/c;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/imagepipeline/h/d;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/ae;->a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lcom/facebook/imagepipeline/k/cm;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/ae;->a(Lcom/facebook/imagepipeline/k/cm;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
