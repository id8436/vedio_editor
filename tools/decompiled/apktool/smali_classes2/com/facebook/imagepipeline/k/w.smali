.class public abstract Lcom/facebook/imagepipeline/k/w;
.super Lcom/facebook/imagepipeline/k/d;
.source "DelegatingConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/k/d",
        "<TI;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/o",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/d;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/w;->a:Lcom/facebook/imagepipeline/k/o;

    .line 20
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/w;->a:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 34
    return-void
.end method

.method protected a(F)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/w;->a:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 39
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/w;->a:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public d()Lcom/facebook/imagepipeline/k/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/k/o",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/w;->a:Lcom/facebook/imagepipeline/k/o;

    return-object v0
.end method
