.class public Lcom/facebook/imagepipeline/memory/u;
.super Ljava/lang/Object;
.source "NativePooledByteBufferFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/memory/aj;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/am;

.field private final b:Lcom/facebook/imagepipeline/memory/s;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/s;Lcom/facebook/imagepipeline/memory/am;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/u;->b:Lcom/facebook/imagepipeline/memory/s;

    .line 36
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/u;->a:Lcom/facebook/imagepipeline/memory/am;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/imagepipeline/memory/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/u;->b:Lcom/facebook/imagepipeline/memory/s;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/v;-><init>(Lcom/facebook/imagepipeline/memory/s;)V

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/u;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/v;)Lcom/facebook/imagepipeline/memory/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/v;->close()V

    .line 61
    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/v;->close()V

    throw v1
.end method

.method public a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/imagepipeline/memory/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/u;->b:Lcom/facebook/imagepipeline/memory/s;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/v;-><init>(Lcom/facebook/imagepipeline/memory/s;I)V

    .line 101
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/u;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/v;)Lcom/facebook/imagepipeline/memory/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/v;->close()V

    .line 101
    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/v;->close()V

    throw v1
.end method

.method a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/v;)Lcom/facebook/imagepipeline/memory/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/u;->a:Lcom/facebook/imagepipeline/memory/am;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/memory/am;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 122
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/v;->a()Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Lcom/facebook/imagepipeline/memory/t;
    .locals 3

    .prologue
    .line 75
    new-instance v1, Lcom/facebook/imagepipeline/memory/v;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/u;->b:Lcom/facebook/imagepipeline/memory/s;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/memory/v;-><init>(Lcom/facebook/imagepipeline/memory/s;I)V

    .line 78
    const/4 v0, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/imagepipeline/memory/v;->write([BII)V

    .line 79
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/v;->a()Lcom/facebook/imagepipeline/memory/t;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/v;->close()V

    .line 79
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_1
    invoke-static {v0}, Lcom/facebook/d/d/p;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/v;->close()V

    throw v0
.end method

.method public a()Lcom/facebook/imagepipeline/memory/v;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/facebook/imagepipeline/memory/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/u;->b:Lcom/facebook/imagepipeline/memory/s;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/v;-><init>(Lcom/facebook/imagepipeline/memory/s;)V

    return-object v0
.end method

.method public a(I)Lcom/facebook/imagepipeline/memory/v;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/imagepipeline/memory/v;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/u;->b:Lcom/facebook/imagepipeline/memory/s;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/v;-><init>(Lcom/facebook/imagepipeline/memory/s;I)V

    return-object v0
.end method

.method public synthetic b(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/u;->a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/memory/u;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([B)Lcom/facebook/imagepipeline/memory/ah;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/u;->a([B)Lcom/facebook/imagepipeline/memory/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/facebook/imagepipeline/memory/al;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/u;->a()Lcom/facebook/imagepipeline/memory/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lcom/facebook/imagepipeline/memory/al;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/u;->a(I)Lcom/facebook/imagepipeline/memory/v;

    move-result-object v0

    return-object v0
.end method
