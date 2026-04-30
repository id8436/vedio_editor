.class Lcom/facebook/imagepipeline/k/bi;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

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

.field final synthetic e:Z

.field final synthetic f:Lcom/facebook/imagepipeline/k/bg;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bi;->f:Lcom/facebook/imagepipeline/k/bg;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/k/bi;->c:Lcom/facebook/imagepipeline/k/o;

    iput-object p5, p0, Lcom/facebook/imagepipeline/k/bi;->d:Lcom/facebook/imagepipeline/k/cm;

    iput-boolean p6, p0, Lcom/facebook/imagepipeline/k/bi;->e:Z

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
    .line 206
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/bi;->b(La/l;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b(La/l;)Ljava/lang/Void;
    .locals 10
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
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-static {p1}, Lcom/facebook/imagepipeline/k/bg;->a(La/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    const-string/jumbo v3, "MediaVariationsFallbackProducer"

    invoke-interface {v0, v1, v3, v9}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bi;->c:Lcom/facebook/imagepipeline/k/o;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    move v1, v2

    .line 243
    :goto_0
    if-eqz v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bi;->f:Lcom/facebook/imagepipeline/k/bg;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bi;->c:Lcom/facebook/imagepipeline/k/o;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bi;->d:Lcom/facebook/imagepipeline/k/cm;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 246
    :cond_0
    return-object v9

    .line 215
    :cond_1
    invoke-virtual {p1}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    const-string/jumbo v3, "MediaVariationsFallbackProducer"

    invoke-virtual {p1}, La/l;->f()Ljava/lang/Exception;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4, v9}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bi;->f:Lcom/facebook/imagepipeline/k/bg;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/bi;->c:Lcom/facebook/imagepipeline/k/o;

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bi;->d:Lcom/facebook/imagepipeline/k/cm;

    invoke-static {v0, v2, v3}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p1}, La/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/d;

    .line 221
    if-eqz v0, :cond_5

    .line 222
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v4, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    const-string/jumbo v5, "MediaVariationsFallbackProducer"

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v7, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/facebook/imagepipeline/k/bi;->e:Z

    .line 225
    invoke-static {v6, v7, v1, v8}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v6

    .line 222
    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/k/bi;->e:Z

    if-eqz v3, :cond_3

    .line 228
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bi;->c:Lcom/facebook/imagepipeline/k/o;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v3, v4}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bi;->c:Lcom/facebook/imagepipeline/k/o;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/k/bi;->e:Z

    invoke-interface {v3, v0, v4}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 231
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/d;->close()V

    .line 233
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/bi;->e:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    const-string/jumbo v4, "MediaVariationsFallbackProducer"

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/bi;->a:Lcom/facebook/imagepipeline/k/co;

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/bi;->b:Ljava/lang/String;

    .line 238
    invoke-static {v5, v6, v2, v2}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v2

    .line 235
    invoke-interface {v0, v3, v4, v2}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
