.class public Lcom/facebook/imagepipeline/k/bb;
.super Lcom/facebook/imagepipeline/k/ay;
.source "LocalFileFetchProducer.java"


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/ay;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/l/a;)Lcom/facebook/imagepipeline/h/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/io/FileInputStream;

    .line 36
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->n()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->n()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/facebook/imagepipeline/k/bb;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "LocalFileFetchProducer"

    return-object v0
.end method
