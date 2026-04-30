.class Lcom/facebook/imagepipeline/memory/p;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Lcom/facebook/d/h/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/h/i",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/o;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/o;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/p;->a:Lcom/facebook/imagepipeline/memory/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/p;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/p;->a:Lcom/facebook/imagepipeline/memory/o;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/o;->a([B)V

    .line 46
    return-void
.end method
