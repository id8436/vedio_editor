.class public Lcom/facebook/imagepipeline/k/af;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
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

.field private final b:Lcom/facebook/imagepipeline/c/k;

.field private final c:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
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
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;",
            "Lcom/facebook/imagepipeline/c/k;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/af;->a:Lcom/facebook/imagepipeline/c/ad;

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/af;->b:Lcom/facebook/imagepipeline/c/k;

    .line 39
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/af;->c:Lcom/facebook/imagepipeline/k/cl;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v2

    .line 49
    const-string/jumbo v3, "EncodedMemoryCacheProducer"

    invoke-interface {v2, v1, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lcom/facebook/imagepipeline/k/af;->b:Lcom/facebook/imagepipeline/c/k;

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/facebook/imagepipeline/c/k;->c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/facebook/imagepipeline/k/af;->a:Lcom/facebook/imagepipeline/c/ad;

    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;)Lcom/facebook/d/h/a;

    move-result-object v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    new-instance v5, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v5, v4}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V

    .line 58
    invoke-virtual {v5, v3}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/c/a/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    const-string/jumbo v3, "EncodedMemoryCacheProducer"

    .line 63
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v6, "true"

    .line 64
    invoke-static {v0, v6}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 60
    :cond_0
    invoke-interface {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 67
    const/4 v0, 0x1

    invoke-interface {p1, v5, v0}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-static {v5}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    invoke-static {v4}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 99
    :goto_0
    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v5}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    invoke-static {v4}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0

    .line 74
    :cond_1
    :try_start_4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->e()Lcom/facebook/imagepipeline/l/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v5

    sget-object v6, Lcom/facebook/imagepipeline/l/c;->c:Lcom/facebook/imagepipeline/l/c;

    .line 75
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/l/c;->a()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 76
    const-string/jumbo v3, "EncodedMemoryCacheProducer"

    .line 79
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v5, "false"

    .line 80
    invoke-static {v0, v5}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 76
    :cond_2
    invoke-interface {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    invoke-static {v4}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 86
    :cond_3
    :try_start_5
    new-instance v5, Lcom/facebook/imagepipeline/k/ag;

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/af;->a:Lcom/facebook/imagepipeline/c/ad;

    invoke-direct {v5, p1, v6, v3}, Lcom/facebook/imagepipeline/k/ag;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/c/a/f;)V

    .line 89
    const-string/jumbo v3, "EncodedMemoryCacheProducer"

    .line 92
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v0, "cached_value_found"

    const-string/jumbo v6, "false"

    .line 93
    invoke-static {v0, v6}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 89
    :cond_4
    invoke-interface {v2, v1, v3, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/af;->c:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v0, v5, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 97
    invoke-static {v4}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0
.end method
