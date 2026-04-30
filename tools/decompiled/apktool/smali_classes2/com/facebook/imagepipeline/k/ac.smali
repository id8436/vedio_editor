.class Lcom/facebook/imagepipeline/k/ac;
.super Lcom/facebook/imagepipeline/k/w;
.source "DiskCacheWriteProducer.java"


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
.field private final a:Lcom/facebook/imagepipeline/k/cm;

.field private final b:Lcom/facebook/imagepipeline/c/w;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/c/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            "Lcom/facebook/imagepipeline/c/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 84
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ac;->a:Lcom/facebook/imagepipeline/k/cm;

    .line 85
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/ac;->b:Lcom/facebook/imagepipeline/c/w;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/c/w;Lcom/facebook/imagepipeline/k/ab;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/k/ac;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/c/w;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 3

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ac;->b:Lcom/facebook/imagepipeline/c/w;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ac;->a:Lcom/facebook/imagepipeline/k/cm;

    .line 93
    invoke-interface {v1}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/ac;->a:Lcom/facebook/imagepipeline/k/cm;

    .line 94
    invoke-interface {v2}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/c/w;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ac;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 98
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ac;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method
