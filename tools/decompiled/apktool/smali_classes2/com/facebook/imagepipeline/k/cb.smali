.class public Lcom/facebook/imagepipeline/k/cb;
.super Ljava/lang/Object;
.source "PostprocessedBitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/ad;
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

.field private final b:Lcom/facebook/imagepipeline/c/k;

.field private final c:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/imagepipeline/c/k;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/cb;->a:Lcom/facebook/imagepipeline/c/ad;

    .line 41
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cb;->b:Lcom/facebook/imagepipeline/c/k;

    .line 42
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/cb;->c:Lcom/facebook/imagepipeline/k/cl;

    .line 43
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "PostprocessedBitmapMemoryCacheProducer"

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v1

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v3

    .line 53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v4

    .line 56
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/l/a;->o()Lcom/facebook/imagepipeline/l/h;

    move-result-object v5

    .line 57
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/facebook/imagepipeline/l/h;->b()Lcom/facebook/c/a/f;

    move-result-object v6

    if-nez v6, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cb;->c:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 86
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cb;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v6, p0, Lcom/facebook/imagepipeline/k/cb;->b:Lcom/facebook/imagepipeline/c/k;

    .line 63
    invoke-interface {v6, v3, v4}, Lcom/facebook/imagepipeline/c/k;->b(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/facebook/imagepipeline/k/cb;->a:Lcom/facebook/imagepipeline/c/ad;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;)Lcom/facebook/d/h/a;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cb;->a()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v5, "true"

    invoke-static {v0, v5}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 66
    :cond_2
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 71
    const/4 v0, 0x1

    invoke-interface {p1, v4, v0}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 72
    invoke-virtual {v4}, Lcom/facebook/d/h/a;->close()V

    goto :goto_0

    .line 74
    :cond_3
    instance-of v4, v5, Lcom/facebook/imagepipeline/l/i;

    .line 75
    new-instance v5, Lcom/facebook/imagepipeline/k/cc;

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/cb;->a:Lcom/facebook/imagepipeline/c/ad;

    invoke-direct {v5, p1, v3, v4, v6}, Lcom/facebook/imagepipeline/k/cc;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;ZLcom/facebook/imagepipeline/c/ad;)V

    .line 82
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/cb;->a()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v4, "false"

    invoke-static {v0, v4}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 80
    :cond_4
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cb;->c:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v0, v5, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0
.end method
