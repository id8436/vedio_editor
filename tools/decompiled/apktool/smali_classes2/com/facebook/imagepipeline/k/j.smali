.class public Lcom/facebook/imagepipeline/k/j;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheProducer.java"

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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/j;->a:Lcom/facebook/imagepipeline/c/ad;

    .line 39
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/j;->b:Lcom/facebook/imagepipeline/c/k;

    .line 40
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/j;->c:Lcom/facebook/imagepipeline/k/cl;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/j;)Lcom/facebook/imagepipeline/c/ad;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/j;->a:Lcom/facebook/imagepipeline/c/ad;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/k/o;
    .locals 1
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
            ")",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/k/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/k/k;-><init>(Lcom/facebook/imagepipeline/k/j;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 9
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
    const/4 v1, 0x0

    .line 48
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v2

    .line 49
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/facebook/imagepipeline/k/j;->b:Lcom/facebook/imagepipeline/c/k;

    invoke-interface {v5, v0, v4}, Lcom/facebook/imagepipeline/c/k;->a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v4

    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/j;->a:Lcom/facebook/imagepipeline/c/ad;

    invoke-interface {v0, v4}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;)Lcom/facebook/d/h/a;

    move-result-object v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    invoke-virtual {v5}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/b;->c()Lcom/facebook/imagepipeline/h/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/h/g;->c()Z

    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/j;->a()Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v8, "true"

    .line 64
    invoke-static {v0, v8}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 60
    :goto_0
    invoke-interface {v2, v3, v7, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 68
    :cond_0
    invoke-interface {p1, v5, v6}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 69
    invoke-virtual {v5}, Lcom/facebook/d/h/a;->close()V

    .line 70
    if-eqz v6, :cond_2

    .line 95
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 64
    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->e()Lcom/facebook/imagepipeline/l/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v0

    sget-object v5, Lcom/facebook/imagepipeline/l/c;->d:Lcom/facebook/imagepipeline/l/c;

    .line 76
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v5, "false"

    .line 81
    invoke-static {v0, v5}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 77
    :goto_2
    invoke-interface {v2, v3, v4, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 81
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/facebook/imagepipeline/k/j;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v1, "cached_value_found"

    const-string/jumbo v5, "false"

    .line 92
    invoke-static {v1, v5}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 88
    :cond_5
    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/j;->c:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_1
.end method
