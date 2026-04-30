.class Lcom/facebook/imagepipeline/c/ak;
.super Ljava/lang/Object;
.source "SplitCachesByImageSizeDiskCachePolicy.java"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "La/l",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/c/g;

.field final synthetic b:Lcom/facebook/c/a/f;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/facebook/imagepipeline/c/aj;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/aj;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/ak;->d:Lcom/facebook/imagepipeline/c/aj;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/ak;->a:Lcom/facebook/imagepipeline/c/g;

    iput-object p3, p0, Lcom/facebook/imagepipeline/c/ak;->b:Lcom/facebook/c/a/f;

    iput-object p4, p0, Lcom/facebook/imagepipeline/c/ak;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(La/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/ak;->b(La/l;)La/l;

    move-result-object v0

    return-object v0
.end method

.method public b(La/l;)La/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/facebook/imagepipeline/c/aj;->a(La/l;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/l;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/ak;->a:Lcom/facebook/imagepipeline/c/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/ak;->b:Lcom/facebook/c/a/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/ak;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object p1

    goto :goto_0
.end method
