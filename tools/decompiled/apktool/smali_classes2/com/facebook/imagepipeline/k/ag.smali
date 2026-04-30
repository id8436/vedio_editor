.class Lcom/facebook/imagepipeline/k/ag;
.super Lcom/facebook/imagepipeline/k/w;
.source "EncodedMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/c/a/f;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/c/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;",
            "Lcom/facebook/c/a/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 111
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ag;->a:Lcom/facebook/imagepipeline/c/ad;

    .line 112
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/ag;->b:Lcom/facebook/c/a/f;

    .line 113
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 118
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ag;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 151
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->c()Lcom/facebook/d/h/a;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_3

    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->j()Lcom/facebook/c/a/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->j()Lcom/facebook/c/a/f;

    move-result-object v0

    .line 129
    :goto_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/ag;->a:Lcom/facebook/imagepipeline/c/ad;

    invoke-interface {v2, v0, v1}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 131
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 133
    if-eqz v2, :cond_3

    .line 136
    :try_start_1
    new-instance v1, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V

    .line 137
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/h/d;->b(Lcom/facebook/imagepipeline/h/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    invoke-static {v2}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 142
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ag;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 143
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ag;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 146
    invoke-static {v1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ag;->b:Lcom/facebook/c/a/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0

    .line 139
    :catchall_1
    move-exception v0

    invoke-static {v2}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0

    .line 146
    :catchall_2
    move-exception v0

    invoke-static {v1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    throw v0

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ag;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ag;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method
