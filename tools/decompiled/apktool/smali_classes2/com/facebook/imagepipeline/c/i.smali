.class Lcom/facebook/imagepipeline/c/i;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/c/a/f;

.field final synthetic b:Lcom/facebook/imagepipeline/h/d;

.field final synthetic c:Lcom/facebook/imagepipeline/c/g;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/i;->c:Lcom/facebook/imagepipeline/c/g;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/i;->a:Lcom/facebook/c/a/f;

    iput-object p3, p0, Lcom/facebook/imagepipeline/c/i;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/i;->c:Lcom/facebook/imagepipeline/c/g;

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/i;->a:Lcom/facebook/c/a/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/i;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/i;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/al;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/i;->a:Lcom/facebook/c/a/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/i;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/c/al;->b(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)Z

    .line 249
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/i;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v0}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 251
    return-void

    .line 248
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/i;->c:Lcom/facebook/imagepipeline/c/g;

    invoke-static {v1}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/al;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/c/i;->a:Lcom/facebook/c/a/f;

    iget-object v3, p0, Lcom/facebook/imagepipeline/c/i;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/c/al;->b(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)Z

    .line 249
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/i;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-static {v1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    throw v0
.end method
