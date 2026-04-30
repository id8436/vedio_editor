.class public abstract Lcom/facebook/imagepipeline/k/ay;
.super Ljava/lang/Object;
.source "LocalFetchProducer.java"

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
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/aj;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/ay;->a:Ljava/util/concurrent/Executor;

    .line 36
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/ay;->b:Lcom/facebook/imagepipeline/memory/aj;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/imagepipeline/l/a;)Lcom/facebook/imagepipeline/h/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/h/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    if-gtz p2, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ay;->b:Lcom/facebook/imagepipeline/memory/aj;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/aj;->b(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 91
    :goto_0
    new-instance v0, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {p1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    .line 94
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 91
    return-object v0

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/ay;->b:Lcom/facebook/imagepipeline/memory/aj;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/memory/aj;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/d/d/b;->a(Ljava/io/InputStream;)V

    .line 94
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

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
    .line 44
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v3

    .line 45
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v6

    .line 47
    new-instance v0, Lcom/facebook/imagepipeline/k/az;

    .line 51
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/ay;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/az;-><init>(Lcom/facebook/imagepipeline/k/ay;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/l/a;)V

    .line 70
    new-instance v1, Lcom/facebook/imagepipeline/k/ba;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/k/ba;-><init>(Lcom/facebook/imagepipeline/k/ay;Lcom/facebook/imagepipeline/k/cu;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 77
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/ay;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method protected b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/h/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ay;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method
