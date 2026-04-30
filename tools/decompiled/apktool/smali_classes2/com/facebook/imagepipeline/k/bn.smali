.class Lcom/facebook/imagepipeline/k/bn;
.super Ljava/lang/Object;
.source "MediaVariationsIndexDatabase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/imagepipeline/l/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/imagepipeline/k/bm;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bm;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bn;->b:Lcom/facebook/imagepipeline/k/bm;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bn;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bn;->b:Lcom/facebook/imagepipeline/k/bm;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bn;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/k/bm;->a(Lcom/facebook/imagepipeline/k/bm;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/bn;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
