.class final Lcom/facebook/imagepipeline/c/y;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/am",
        "<",
        "Lcom/facebook/imagepipeline/memory/ah;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/memory/ah;)I
    .locals 1

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/facebook/imagepipeline/memory/ah;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/imagepipeline/memory/ah;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/y;->a(Lcom/facebook/imagepipeline/memory/ah;)I

    move-result v0

    return v0
.end method
