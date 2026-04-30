.class public Lcom/facebook/imagepipeline/k/aa;
.super Ljava/lang/Object;
.source "DiskCacheWriteProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/c/w;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/c/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/c/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aa;->a:Lcom/facebook/imagepipeline/k/cl;

    .line 37
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/aa;->b:Lcom/facebook/imagepipeline/c/w;

    .line 38
    return-void
.end method

.method private b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->e()Lcom/facebook/imagepipeline/l/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/l/c;->b:Lcom/facebook/imagepipeline/l/c;

    .line 50
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-interface {p1, v2, v0}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lcom/facebook/imagepipeline/k/ac;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/aa;->b:Lcom/facebook/imagepipeline/c/w;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/facebook/imagepipeline/k/ac;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/c/w;Lcom/facebook/imagepipeline/k/ab;)V

    move-object p1, v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aa;->a:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
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
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/aa;->b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 44
    return-void
.end method
