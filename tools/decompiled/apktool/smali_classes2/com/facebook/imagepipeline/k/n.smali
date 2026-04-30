.class Lcom/facebook/imagepipeline/k/n;
.super Lcom/facebook/imagepipeline/k/w;
.source "BranchOnSeparateImagesProducer.java"


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
.field final synthetic a:Lcom/facebook/imagepipeline/k/l;

.field private b:Lcom/facebook/imagepipeline/k/cm;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/l;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
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
    .line 46
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/n;->a:Lcom/facebook/imagepipeline/k/l;

    .line 47
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 48
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/n;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/l;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/k/m;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/k/n;-><init>(Lcom/facebook/imagepipeline/k/l;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/n;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/imagepipeline/k/dg;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/d;)Z

    move-result v1

    .line 56
    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/n;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v2

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, p1, v0}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 59
    :cond_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 60
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/n;->a:Lcom/facebook/imagepipeline/k/l;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/l;->a(Lcom/facebook/imagepipeline/k/l;)Lcom/facebook/imagepipeline/k/cl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/n;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/n;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 64
    :cond_2
    return-void

    .line 57
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/n;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/n;->a:Lcom/facebook/imagepipeline/k/l;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/l;->a(Lcom/facebook/imagepipeline/k/l;)Lcom/facebook/imagepipeline/k/cl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/n;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/n;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 69
    return-void
.end method
