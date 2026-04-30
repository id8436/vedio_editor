.class public Lcom/facebook/imagepipeline/k/cc;
.super Lcom/facebook/imagepipeline/k/w;
.source "PostprocessedBitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/c/a/f;

.field private final b:Z

.field private final c:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;ZLcom/facebook/imagepipeline/c/ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/c/a/f;",
            "Z",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 101
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cc;->a:Lcom/facebook/c/a/f;

    .line 102
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/k/cc;->b:Z

    .line 103
    iput-object p4, p0, Lcom/facebook/imagepipeline/k/cc;->c:Lcom/facebook/imagepipeline/c/ad;

    .line 104
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/d/h/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cc;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cc;->b:Z

    if-eqz v0, :cond_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cc;->c:Lcom/facebook/imagepipeline/c/ad;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/cc;->a:Lcom/facebook/c/a/f;

    .line 121
    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cc;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cc;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    if-eqz v1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cc;->a(Lcom/facebook/d/h/a;Z)V

    return-void
.end method
