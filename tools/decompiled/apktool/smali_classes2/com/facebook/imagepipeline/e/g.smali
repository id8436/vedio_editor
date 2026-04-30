.class public Lcom/facebook/imagepipeline/e/g;
.super Ljava/lang/Object;
.source "ImagePipeline.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final b:Lcom/facebook/imagepipeline/e/s;

.field private final c:Lcom/facebook/imagepipeline/i/b;

.field private final d:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/c/g;

.field private final h:Lcom/facebook/imagepipeline/c/g;

.field private final i:Lcom/facebook/imagepipeline/c/k;

.field private final j:Lcom/facebook/imagepipeline/k/cy;

.field private final k:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/e/g;->a:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/e/s;Ljava/util/Set;Lcom/facebook/d/d/m;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cy;Lcom/facebook/d/d/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/e/s;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/imagepipeline/i/b;",
            ">;",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;",
            "Lcom/facebook/imagepipeline/c/g;",
            "Lcom/facebook/imagepipeline/c/g;",
            "Lcom/facebook/imagepipeline/c/k;",
            "Lcom/facebook/imagepipeline/k/cy;",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/g;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    iput-object p1, p0, Lcom/facebook/imagepipeline/e/g;->b:Lcom/facebook/imagepipeline/e/s;

    .line 82
    new-instance v0, Lcom/facebook/imagepipeline/i/a;

    invoke-direct {v0, p2}, Lcom/facebook/imagepipeline/i/a;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/g;->c:Lcom/facebook/imagepipeline/i/b;

    .line 83
    iput-object p3, p0, Lcom/facebook/imagepipeline/e/g;->d:Lcom/facebook/d/d/m;

    .line 84
    iput-object p4, p0, Lcom/facebook/imagepipeline/e/g;->e:Lcom/facebook/imagepipeline/c/ad;

    .line 85
    iput-object p5, p0, Lcom/facebook/imagepipeline/e/g;->f:Lcom/facebook/imagepipeline/c/ad;

    .line 86
    iput-object p6, p0, Lcom/facebook/imagepipeline/e/g;->g:Lcom/facebook/imagepipeline/c/g;

    .line 87
    iput-object p7, p0, Lcom/facebook/imagepipeline/e/g;->h:Lcom/facebook/imagepipeline/c/g;

    .line 88
    iput-object p8, p0, Lcom/facebook/imagepipeline/e/g;->i:Lcom/facebook/imagepipeline/c/k;

    .line 89
    iput-object p9, p0, Lcom/facebook/imagepipeline/e/g;->j:Lcom/facebook/imagepipeline/k/cy;

    .line 90
    iput-object p10, p0, Lcom/facebook/imagepipeline/e/g;->k:Lcom/facebook/d/d/m;

    .line 91
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/l/c;Ljava/lang/Object;)Lcom/facebook/e/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<TT;>;>;",
            "Lcom/facebook/imagepipeline/l/a;",
            "Lcom/facebook/imagepipeline/l/c;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 550
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/e/g;->a(Lcom/facebook/imagepipeline/l/a;)Lcom/facebook/imagepipeline/i/b;

    move-result-object v3

    .line 555
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->l()Lcom/facebook/imagepipeline/l/c;

    move-result-object v0

    .line 554
    invoke-static {v0, p3}, Lcom/facebook/imagepipeline/l/c;->a(Lcom/facebook/imagepipeline/l/c;Lcom/facebook/imagepipeline/l/c;)Lcom/facebook/imagepipeline/l/c;

    move-result-object v5

    .line 557
    new-instance v0, Lcom/facebook/imagepipeline/k/ct;

    .line 559
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/g;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    .line 564
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->c()Lcom/facebook/imagepipeline/l/f;

    move-result-object v1

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/d/m/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 567
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/l/a;->k()Lcom/facebook/imagepipeline/d/c;

    move-result-object v8

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/k/ct;-><init>(Lcom/facebook/imagepipeline/l/a;Ljava/lang/String;Lcom/facebook/imagepipeline/k/co;Ljava/lang/Object;Lcom/facebook/imagepipeline/l/c;ZZLcom/facebook/imagepipeline/d/c;)V

    .line 568
    invoke-static {p1, v0, v3}, Lcom/facebook/imagepipeline/f/c;->a(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/ct;Lcom/facebook/imagepipeline/i/b;)Lcom/facebook/e/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 573
    :goto_0
    return-object v0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    invoke-static {v0}, Lcom/facebook/e/g;->a(Ljava/lang/Throwable;)Lcom/facebook/e/f;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/l/a;)Lcom/facebook/imagepipeline/i/b;
    .locals 4

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->p()Lcom/facebook/imagepipeline/i/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/g;->c:Lcom/facebook/imagepipeline/i/b;

    .line 612
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/i/a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/imagepipeline/i/b;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/g;->c:Lcom/facebook/imagepipeline/i/b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->p()Lcom/facebook/imagepipeline/i/b;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/i/a;-><init>([Lcom/facebook/imagepipeline/i/b;)V

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/g;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;Lcom/facebook/imagepipeline/l/c;)Lcom/facebook/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/l/a;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/l/c;",
            ")",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/g;->b:Lcom/facebook/imagepipeline/e/s;

    .line 219
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/e/s;->a(Lcom/facebook/imagepipeline/l/a;)Lcom/facebook/imagepipeline/k/cl;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/facebook/imagepipeline/e/g;->a(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/l/c;Ljava/lang/Object;)Lcom/facebook/e/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-static {v0}, Lcom/facebook/e/g;->a(Ljava/lang/Throwable;)Lcom/facebook/e/f;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/facebook/imagepipeline/c/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/g;->e:Lcom/facebook/imagepipeline/c/ad;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/c/k;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/g;->i:Lcom/facebook/imagepipeline/c/k;

    return-object v0
.end method
