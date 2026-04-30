.class Lcom/facebook/imagepipeline/k/bk;
.super Lcom/facebook/imagepipeline/k/w;
.source "MediaVariationsFallbackProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/bg;

.field private final b:Lcom/facebook/imagepipeline/k/cm;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bk;->a:Lcom/facebook/imagepipeline/k/bg;

    .line 302
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 303
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bk;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 304
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/h/d;)V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bk;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->c()Lcom/facebook/imagepipeline/l/f;

    move-result-object v1

    .line 318
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bk;->a:Lcom/facebook/imagepipeline/k/bg;

    .line 324
    invoke-static {v2}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/bg;)Lcom/facebook/imagepipeline/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bk;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 326
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bk;->a:Lcom/facebook/imagepipeline/k/bg;

    invoke-static {v2}, Lcom/facebook/imagepipeline/k/bg;->b(Lcom/facebook/imagepipeline/k/bg;)Lcom/facebook/imagepipeline/k/bl;

    move-result-object v2

    .line 327
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/l/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0, p1}, Lcom/facebook/imagepipeline/k/bl;->a(Ljava/lang/String;Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 1

    .prologue
    .line 308
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 309
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/bk;->a(Lcom/facebook/imagepipeline/h/d;)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/bk;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 312
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 295
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/bk;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method
