.class Lcom/facebook/imagepipeline/k/y;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/co;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/imagepipeline/k/o;

.field final synthetic d:Lcom/facebook/imagepipeline/k/cm;

.field final synthetic e:Lcom/facebook/imagepipeline/k/x;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/x;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/y;->e:Lcom/facebook/imagepipeline/k/x;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/k/y;->c:Lcom/facebook/imagepipeline/k/o;

    iput-object p5, p0, Lcom/facebook/imagepipeline/k/y;->d:Lcom/facebook/imagepipeline/k/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(La/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/y;->b(La/l;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(La/l;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    invoke-static {p1}, Lcom/facebook/imagepipeline/k/x;->a(La/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    const-string/jumbo v2, "DiskCacheProducer"

    invoke-interface {v0, v1, v2, v6}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/y;->c:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 103
    :goto_0
    return-object v6

    .line 82
    :cond_0
    invoke-virtual {p1}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    const-string/jumbo v2, "DiskCacheProducer"

    invoke-virtual {p1}, La/l;->f()Ljava/lang/Exception;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/y;->e:Lcom/facebook/imagepipeline/k/x;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/x;->a(Lcom/facebook/imagepipeline/k/x;)Lcom/facebook/imagepipeline/k/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->c:Lcom/facebook/imagepipeline/k/o;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/y;->d:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/d;

    .line 87
    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    const-string/jumbo v3, "DiskCacheProducer"

    iget-object v4, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    .line 91
    invoke-static {v4, v5, v7}, Lcom/facebook/imagepipeline/k/x;->a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    .line 88
    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->c:Lcom/facebook/imagepipeline/k/o;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 93
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->c:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v1, v0, v7}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 94
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/d;->close()V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    const-string/jumbo v2, "DiskCacheProducer"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/y;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v4, p0, Lcom/facebook/imagepipeline/k/y;->b:Ljava/lang/String;

    const/4 v5, 0x0

    .line 99
    invoke-static {v3, v4, v5}, Lcom/facebook/imagepipeline/k/x;->a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 96
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/y;->e:Lcom/facebook/imagepipeline/k/x;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/x;->a(Lcom/facebook/imagepipeline/k/x;)Lcom/facebook/imagepipeline/k/cl;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/y;->c:Lcom/facebook/imagepipeline/k/o;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/y;->d:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0
.end method
