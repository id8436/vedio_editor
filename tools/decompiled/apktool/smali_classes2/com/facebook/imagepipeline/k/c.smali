.class Lcom/facebook/imagepipeline/k/c;
.super Lcom/facebook/imagepipeline/k/w;
.source "AddImageTransformMetaDataProducer.java"


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


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/b;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/c;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/c;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->c(Lcom/facebook/imagepipeline/h/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->l()V

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/c;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/c;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method
