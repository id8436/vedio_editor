.class Lcom/facebook/imagepipeline/k/di;
.super Lcom/facebook/imagepipeline/k/cu;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/cu",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/h/d;

.field final synthetic c:Lcom/facebook/imagepipeline/k/dh;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/dh;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/di;->c:Lcom/facebook/imagepipeline/k/dh;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/di;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/cu;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 130
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 131
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/di;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 142
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/k/cu;->a(Ljava/lang/Exception;)V

    .line 143
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/di;->b(Lcom/facebook/imagepipeline/h/d;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/di;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 148
    invoke-super {p0}, Lcom/facebook/imagepipeline/k/cu;->b()V

    .line 149
    return-void
.end method

.method protected b(Lcom/facebook/imagepipeline/h/d;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/di;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 136
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/k/cu;->a(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/di;->a(Lcom/facebook/imagepipeline/h/d;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/di;->d()Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/imagepipeline/h/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/di;->c:Lcom/facebook/imagepipeline/k/dh;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/dh;->a(Lcom/facebook/imagepipeline/k/dh;)Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/aj;->b()Lcom/facebook/imagepipeline/memory/al;

    move-result-object v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/di;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/k/dh;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/memory/al;)V

    .line 115
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->c()Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 117
    :try_start_1
    new-instance v0, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v0, v2}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V

    .line 118
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/di;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {v0, v3}, Lcom/facebook/imagepipeline/h/d;->b(Lcom/facebook/imagepipeline/h/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-static {v2}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->close()V

    .line 119
    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {v2}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/al;->close()V

    throw v0
.end method
