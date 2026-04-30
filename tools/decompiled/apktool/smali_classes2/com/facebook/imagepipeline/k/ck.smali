.class Lcom/facebook/imagepipeline/k/ck;
.super Lcom/facebook/imagepipeline/k/w;
.source "PostprocessorProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/cd;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/cf;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ck;->a:Lcom/facebook/imagepipeline/k/cd;

    .line 307
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/imagepipeline/k/ce;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ck;-><init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/cf;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/d/h/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ck;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 302
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ck;->a(Lcom/facebook/d/h/a;Z)V

    return-void
.end method
