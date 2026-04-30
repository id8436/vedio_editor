.class public Lcom/facebook/imagepipeline/k/cv;
.super Ljava/lang/Object;
.source "ThreadHandoffProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/k/cy;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/cy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/cy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/cl;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cv;->a:Lcom/facebook/imagepipeline/k/cl;

    .line 28
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cv;->b:Lcom/facebook/imagepipeline/k/cy;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cv;)Lcom/facebook/imagepipeline/k/cl;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cv;->a:Lcom/facebook/imagepipeline/k/cl;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/cv;)Lcom/facebook/imagepipeline/k/cy;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cv;->b:Lcom/facebook/imagepipeline/k/cy;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v3

    .line 34
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/k/cw;

    const-string/jumbo v4, "BackgroundThreadHandoffProducer"

    move-object v1, p0

    move-object v2, p1

    move-object v6, v3

    move-object v7, v5

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/k/cw;-><init>(Lcom/facebook/imagepipeline/k/cv;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 54
    new-instance v1, Lcom/facebook/imagepipeline/k/cx;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/k/cx;-><init>(Lcom/facebook/imagepipeline/k/cv;Lcom/facebook/imagepipeline/k/cu;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 62
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cv;->b:Lcom/facebook/imagepipeline/k/cy;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/k/cy;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
