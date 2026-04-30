.class public Lcom/facebook/imagepipeline/k/l;
.super Ljava/lang/Object;
.source "BranchOnSeparateImagesProducer.java"

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

.field private final b:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/l;->a:Lcom/facebook/imagepipeline/k/cl;

    .line 29
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/l;->b:Lcom/facebook/imagepipeline/k/cl;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/l;)Lcom/facebook/imagepipeline/k/cl;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/l;->b:Lcom/facebook/imagepipeline/k/cl;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 2
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
    .line 36
    new-instance v0, Lcom/facebook/imagepipeline/k/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/imagepipeline/k/n;-><init>(Lcom/facebook/imagepipeline/k/l;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/k/m;)V

    .line 37
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/l;->a:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 38
    return-void
.end method
