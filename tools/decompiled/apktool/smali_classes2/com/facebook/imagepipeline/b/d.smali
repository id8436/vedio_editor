.class public Lcom/facebook/imagepipeline/b/d;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.java"

# interfaces
.implements Lcom/facebook/d/n/a;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/b/b;

.field private final b:Lcom/facebook/imagepipeline/memory/o;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/ad;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/ad;->b()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/b/d;->b:Lcom/facebook/imagepipeline/memory/o;

    .line 36
    new-instance v0, Lcom/facebook/imagepipeline/b/b;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/ad;->e()Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/b/b;-><init>(Lcom/facebook/imagepipeline/memory/aj;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/b/d;->a:Lcom/facebook/imagepipeline/b/b;

    .line 37
    return-void
.end method
