.class public Lcom/facebook/imagepipeline/c/ai;
.super Ljava/lang/Object;
.source "SmallCacheIfRequestedDiskCachePolicy.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/w;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/g;

.field private final b:Lcom/facebook/imagepipeline/c/g;

.field private final c:Lcom/facebook/imagepipeline/c/k;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/ai;->a:Lcom/facebook/imagepipeline/c/g;

    .line 35
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/ai;->b:Lcom/facebook/imagepipeline/c/g;

    .line 36
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/ai;->c:Lcom/facebook/imagepipeline/c/k;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/l/a;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/ai;->c:Lcom/facebook/imagepipeline/c/k;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->a()Lcom/facebook/imagepipeline/l/b;

    move-result-object v1

    sget-object v2, Lcom/facebook/imagepipeline/l/b;->a:Lcom/facebook/imagepipeline/l/b;

    if-ne v1, v2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/ai;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v0, p3}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/ai;->a:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v0, p3}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/ai;->c:Lcom/facebook/imagepipeline/c/k;

    invoke-interface {v0, p2, p3}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->a()Lcom/facebook/imagepipeline/l/b;

    move-result-object v1

    sget-object v2, Lcom/facebook/imagepipeline/l/b;->a:Lcom/facebook/imagepipeline/l/b;

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/ai;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/ai;->a:Lcom/facebook/imagepipeline/c/g;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    goto :goto_0
.end method
