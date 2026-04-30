.class Lcom/facebook/imagepipeline/c/p;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/d/h/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/h/i",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/c/r;

.field final synthetic b:Lcom/facebook/imagepipeline/c/m;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/r;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/p;->b:Lcom/facebook/imagepipeline/c/m;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/p;->a:Lcom/facebook/imagepipeline/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/p;->b:Lcom/facebook/imagepipeline/c/m;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/p;->a:Lcom/facebook/imagepipeline/c/r;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/m;->a(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/r;)V

    .line 263
    return-void
.end method
