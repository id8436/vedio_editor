.class Lcom/facebook/imagepipeline/k/k;
.super Lcom/facebook/imagepipeline/k/w;
.source "BitmapMemoryCacheProducer.java"


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
.field final synthetic a:Lcom/facebook/c/a/f;

.field final synthetic b:Lcom/facebook/imagepipeline/k/j;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/j;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/c/a/f;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/k;->b:Lcom/facebook/imagepipeline/k/j;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/k;->a:Lcom/facebook/c/a/f;

    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/d/h/a;Z)V
    .locals 4
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
    .line 106
    if-nez p1, :cond_1

    .line 107
    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/k;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/k;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 119
    :cond_2
    if-nez p2, :cond_5

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/k;->b:Lcom/facebook/imagepipeline/k/j;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/j;->a(Lcom/facebook/imagepipeline/k/j;)Lcom/facebook/imagepipeline/c/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/k;->a:Lcom/facebook/c/a/f;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_5

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/b;->c()Lcom/facebook/imagepipeline/h/g;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Lcom/facebook/d/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/h/b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/b;->c()Lcom/facebook/imagepipeline/h/g;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Lcom/facebook/imagepipeline/h/g;->c()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Lcom/facebook/imagepipeline/h/g;->a()I

    move-result v0

    invoke-interface {v2}, Lcom/facebook/imagepipeline/h/g;->a()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/k;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 135
    :cond_5
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/k;->b:Lcom/facebook/imagepipeline/k/j;

    .line 136
    invoke-static {v0}, Lcom/facebook/imagepipeline/k/j;->a(Lcom/facebook/imagepipeline/k/j;)Lcom/facebook/imagepipeline/c/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/k;->a:Lcom/facebook/c/a/f;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/c/ad;->a(Ljava/lang/Object;Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 138
    if-eqz p2, :cond_6

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/k;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 141
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/k;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    if-eqz v1, :cond_7

    move-object p1, v1

    :cond_7
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0

    .line 144
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/k;->a(Lcom/facebook/d/h/a;Z)V

    return-void
.end method
