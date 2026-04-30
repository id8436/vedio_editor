.class final Lcom/facebook/imagepipeline/c/b;
.super Ljava/lang/Object;
.source "BitmapCountingMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/c/am",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
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
.method public a(Lcom/facebook/imagepipeline/h/b;)I
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/b;->a()I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/c/b;->a(Lcom/facebook/imagepipeline/h/b;)I

    move-result v0

    return v0
.end method
