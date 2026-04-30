.class Lcom/facebook/imagepipeline/c/h;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/c/a/f;

.field final synthetic c:Lcom/facebook/imagepipeline/c/g;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/g;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/c/a/f;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/h/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/al;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/c/al;->a(Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_2

    .line 177
    invoke-static {}, Lcom/facebook/imagepipeline/c/g;->a()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "Found image for %s in staging area"

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-interface {v3}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-static {v1}, Lcom/facebook/imagepipeline/c/g;->b(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-interface {v1, v2}, Lcom/facebook/imagepipeline/c/ab;->c(Lcom/facebook/c/a/f;)V

    .line 179
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/c/a/f;)V

    .line 198
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-static {}, Lcom/facebook/imagepipeline/c/g;->a()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 200
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/h/d;->close()V

    .line 203
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 181
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/c/g;->a()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-interface {v2}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/g;->b(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/ab;->e()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/h;->c:Lcom/facebook/imagepipeline/c/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    :try_start_1
    new-instance v0, Lcom/facebook/imagepipeline/h/d;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/h/d;-><init>(Lcom/facebook/d/h/a;)V

    .line 189
    iget-object v2, p0, Lcom/facebook/imagepipeline/c/h;->b:Lcom/facebook/c/a/f;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/c/a/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const/4 v0, 0x0

    .line 205
    :cond_3
    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/c/h;->a()Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method
