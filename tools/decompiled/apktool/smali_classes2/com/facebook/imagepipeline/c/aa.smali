.class final Lcom/facebook/imagepipeline/c/aa;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/af",
        "<",
        "Lcom/facebook/c/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/c/ab;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/ab;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/aa;->a:Lcom/facebook/imagepipeline/c/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aa;->a:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/ab;->d()V

    .line 32
    return-void
.end method

.method public a(Lcom/facebook/c/a/f;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aa;->a:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/ab;->b(Lcom/facebook/c/a/f;)V

    .line 27
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/facebook/c/a/f;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/aa;->a(Lcom/facebook/c/a/f;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/aa;->a:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/ab;->c()V

    .line 37
    return-void
.end method
