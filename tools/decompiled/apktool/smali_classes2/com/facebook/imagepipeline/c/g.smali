.class public Lcom/facebook/imagepipeline/c/g;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/c/b/ab;

.field private final c:Lcom/facebook/imagepipeline/memory/aj;

.field private final d:Lcom/facebook/imagepipeline/memory/am;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lcom/facebook/imagepipeline/c/al;

.field private final h:Lcom/facebook/imagepipeline/c/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/imagepipeline/c/g;

    sput-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/c/b/ab;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/memory/am;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ab;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/g;->b:Lcom/facebook/c/b/ab;

    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/c/g;->c:Lcom/facebook/imagepipeline/memory/aj;

    .line 58
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/g;->d:Lcom/facebook/imagepipeline/memory/am;

    .line 59
    iput-object p4, p0, Lcom/facebook/imagepipeline/c/g;->e:Ljava/util/concurrent/Executor;

    .line 60
    iput-object p5, p0, Lcom/facebook/imagepipeline/c/g;->f:Ljava/util/concurrent/Executor;

    .line 61
    iput-object p6, p0, Lcom/facebook/imagepipeline/c/g;->h:Lcom/facebook/imagepipeline/c/ab;

    .line 62
    invoke-static {}, Lcom/facebook/imagepipeline/c/al;->a()Lcom/facebook/imagepipeline/c/al;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/g;->g:Lcom/facebook/imagepipeline/c/al;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/al;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->g:Lcom/facebook/imagepipeline/c/al;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/memory/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/c/g;->b(Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/c/g;->c(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    return-void
.end method

.method private b(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)La/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/d;",
            ")",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v1, "Found image for %s in staging area"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->h:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/c/ab;->c(Lcom/facebook/c/a/f;)V

    .line 318
    invoke-static {p2}, La/l;->a(Ljava/lang/Object;)La/l;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/c/a/f;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/c/h;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/imagepipeline/c/h;-><init>(Lcom/facebook/imagepipeline/c/g;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/c/a/f;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/g;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, La/l;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 213
    sget-object v1, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v2, "Failed to schedule disk-cache read for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 217
    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 213
    invoke-static {v1, v0, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {v0}, La/l;->a(Ljava/lang/Exception;)La/l;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/c/ab;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->h:Lcom/facebook/imagepipeline/c/ab;

    return-object v0
.end method

.method private b(Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/memory/ah;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v1, "Disk cache read for %s"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->b:Lcom/facebook/c/b/ab;

    invoke-interface {v0, p1}, Lcom/facebook/c/b/ab;->a(Lcom/facebook/c/a/f;)Lcom/facebook/b/a;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    sget-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v1, "Disk cache miss for %s"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->h:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/c/ab;->g()V

    .line 332
    const/4 v0, 0x0

    .line 347
    :goto_0
    return-object v0

    .line 334
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/g;->h:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/c/ab;->f()V

    .line 339
    invoke-interface {v0}, Lcom/facebook/b/a;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/c/g;->c:Lcom/facebook/imagepipeline/memory/aj;

    invoke-interface {v0}, Lcom/facebook/b/a;->b()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {v2, v1, v0}, Lcom/facebook/imagepipeline/memory/aj;->b(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/ah;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 343
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 346
    sget-object v1, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 352
    sget-object v1, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v2, "Exception reading from cache for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/facebook/imagepipeline/c/g;->h:Lcom/facebook/imagepipeline/c/ab;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/c/ab;->h()V

    .line 354
    throw v0

    .line 343
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/memory/am;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->d:Lcom/facebook/imagepipeline/memory/am;

    return-object v0
.end method

.method private c(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V
    .locals 6

    .prologue
    .line 365
    sget-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v1, "About to write to disk-cache for key %s"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->b:Lcom/facebook/c/b/ab;

    new-instance v1, Lcom/facebook/imagepipeline/c/j;

    invoke-direct {v1, p0, p2}, Lcom/facebook/imagepipeline/c/j;-><init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/h/d;)V

    invoke-interface {v0, p1, v1}, Lcom/facebook/c/b/ab;->a(Lcom/facebook/c/a/f;Lcom/facebook/c/a/l;)Lcom/facebook/b/a;

    .line 375
    sget-object v0, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v1, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 379
    sget-object v1, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v2, "Failed to write to disk-cache for key %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/c/a/f;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "La/l",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->g:Lcom/facebook/imagepipeline/c/al;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/al;->a(Lcom/facebook/c/a/f;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/c/g;->b(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)La/l;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/c/g;->b(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V
    .locals 7

    .prologue
    .line 229
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {p2}, Lcom/facebook/imagepipeline/h/d;->e(Lcom/facebook/imagepipeline/h/d;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Z)V

    .line 233
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->g:Lcom/facebook/imagepipeline/c/al;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/c/al;->a(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    .line 234
    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/c/a/f;)V

    .line 239
    invoke-static {p2}, Lcom/facebook/imagepipeline/h/d;->a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/imagepipeline/c/i;

    invoke-direct {v2, p0, p1, v1}, Lcom/facebook/imagepipeline/c/i;-><init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 256
    sget-object v2, Lcom/facebook/imagepipeline/c/g;->a:Ljava/lang/Class;

    const-string/jumbo v3, "Failed to schedule disk-cache write for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 260
    invoke-interface {p1}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 256
    invoke-static {v2, v0, v3, v4}, Lcom/facebook/d/e/a;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->g:Lcom/facebook/imagepipeline/c/al;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/c/al;->b(Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)Z

    .line 262
    invoke-static {v1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/c/a/f;)Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->g:Lcom/facebook/imagepipeline/c/al;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/c/al;->b(Lcom/facebook/c/a/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/c/g;->b:Lcom/facebook/c/b/ab;

    invoke-interface {v0, p1}, Lcom/facebook/c/b/ab;->b(Lcom/facebook/c/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
