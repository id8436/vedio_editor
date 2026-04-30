.class Lcom/facebook/imagepipeline/c/o;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/am",
        "<",
        "Lcom/facebook/imagepipeline/c/r",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/c/am;

.field final synthetic b:Lcom/facebook/imagepipeline/c/m;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/am;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/o;->b:Lcom/facebook/imagepipeline/c/m;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/o;->a:Lcom/facebook/imagepipeline/c/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/c/r;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/r",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/o;->a:Lcom/facebook/imagepipeline/c/am;

    iget-object v1, p1, Lcom/facebook/imagepipeline/c/r;->b:Lcom/facebook/d/h/a;

    invoke-virtual {v1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/c/am;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 161
    check-cast p1, Lcom/facebook/imagepipeline/c/r;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/o;->a(Lcom/facebook/imagepipeline/c/r;)I

    move-result v0

    return v0
.end method
