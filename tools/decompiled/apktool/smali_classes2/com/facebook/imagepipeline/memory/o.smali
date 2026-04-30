.class public Lcom/facebook/imagepipeline/memory/o;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final a:Lcom/facebook/imagepipeline/memory/q;

.field private final b:Lcom/facebook/d/h/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/i",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p2, Lcom/facebook/imagepipeline/memory/ae;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/memory/q;

    .line 41
    invoke-static {}, Lcom/facebook/imagepipeline/memory/x;->a()Lcom/facebook/imagepipeline/memory/x;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/q;-><init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;Lcom/facebook/imagepipeline/memory/af;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/q;

    .line 42
    new-instance v0, Lcom/facebook/imagepipeline/memory/p;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/memory/p;-><init>(Lcom/facebook/imagepipeline/memory/o;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/o;->b:Lcom/facebook/d/h/i;

    .line 48
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/facebook/d/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/d/h/a",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/q;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/q;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/o;->b:Lcom/facebook/d/h/i;

    invoke-static {v0, v1}, Lcom/facebook/d/h/a;->a(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/o;->a:Lcom/facebook/imagepipeline/memory/q;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/q;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
