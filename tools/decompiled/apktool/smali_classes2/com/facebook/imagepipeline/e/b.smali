.class public Lcom/facebook/imagepipeline/e/b;
.super Ljava/lang/Object;
.source "DiskStorageCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/e/f;


# instance fields
.field private a:Lcom/facebook/imagepipeline/e/c;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/e/c;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/imagepipeline/e/b;->a:Lcom/facebook/imagepipeline/e/c;

    .line 28
    return-void
.end method

.method public static a(Lcom/facebook/c/b/l;Lcom/facebook/c/b/p;)Lcom/facebook/c/b/s;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/imagepipeline/e/b;->a(Lcom/facebook/c/b/l;Lcom/facebook/c/b/p;Ljava/util/concurrent/Executor;)Lcom/facebook/c/b/s;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/c/b/l;Lcom/facebook/c/b/p;Ljava/util/concurrent/Executor;)Lcom/facebook/c/b/s;
    .locals 12

    .prologue
    .line 40
    new-instance v1, Lcom/facebook/c/b/w;

    .line 41
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->f()J

    move-result-wide v2

    .line 42
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->e()J

    move-result-wide v4

    .line 43
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/facebook/c/b/w;-><init>(JJJ)V

    .line 45
    new-instance v2, Lcom/facebook/c/b/s;

    .line 47
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->g()Lcom/facebook/c/b/aa;

    move-result-object v4

    .line 49
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->i()Lcom/facebook/c/a/d;

    move-result-object v6

    .line 50
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->h()Lcom/facebook/c/a/a;

    move-result-object v7

    .line 51
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->j()Lcom/facebook/d/a/b;

    move-result-object v8

    .line 52
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->k()Landroid/content/Context;

    move-result-object v9

    .line 54
    invoke-virtual {p0}, Lcom/facebook/c/b/l;->l()Z

    move-result v11

    move-object v3, p1

    move-object v5, v1

    move-object v10, p2

    invoke-direct/range {v2 .. v11}, Lcom/facebook/c/b/s;-><init>(Lcom/facebook/c/b/p;Lcom/facebook/c/b/aa;Lcom/facebook/c/b/w;Lcom/facebook/c/a/d;Lcom/facebook/c/a/a;Lcom/facebook/d/a/b;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V

    .line 45
    return-object v2
.end method


# virtual methods
.method public a(Lcom/facebook/c/b/l;)Lcom/facebook/c/b/ab;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/b;->a:Lcom/facebook/imagepipeline/e/c;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/e/c;->a(Lcom/facebook/c/b/l;)Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/e/b;->a(Lcom/facebook/c/b/l;Lcom/facebook/c/b/p;)Lcom/facebook/c/b/s;

    move-result-object v0

    return-object v0
.end method
