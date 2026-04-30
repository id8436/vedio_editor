.class public La/l;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/Executor;

.field private static volatile d:La/s;

.field private static m:La/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/l",
            "<*>;"
        }
    .end annotation
.end field

.field private static n:La/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/l",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static o:La/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/l",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static p:La/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/l",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Exception;

.field private j:Z

.field private k:La/u;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/j",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-static {}, La/d;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, La/l;->a:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-static {}, La/d;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, La/l;->c:Ljava/util/concurrent/Executor;

    .line 48
    invoke-static {}, La/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, La/l;->b:Ljava/util/concurrent/Executor;

    .line 1027
    new-instance v0, La/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/l;->m:La/l;

    .line 1028
    new-instance v0, La/l;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, La/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/l;->n:La/l;

    .line 1029
    new-instance v0, La/l;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, La/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, La/l;->o:La/l;

    .line 1030
    new-instance v0, La/l;

    invoke-direct {v0, v2}, La/l;-><init>(Z)V

    sput-object v0, La/l;->p:La/l;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/l;->e:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/l;->l:Ljava/util/List;

    .line 101
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/l;->e:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/l;->l:Ljava/util/List;

    .line 104
    invoke-virtual {p0, p1}, La/l;->b(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/l;->e:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/l;->l:Ljava/util/List;

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, La/l;->g()Z

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/l;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Exception;)La/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "La/l",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, La/t;

    invoke-direct {v0}, La/t;-><init>()V

    .line 222
    invoke-virtual {v0, p0}, La/t;->b(Ljava/lang/Exception;)V

    .line 223
    invoke-virtual {v0}, La/t;->a()La/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)La/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "La/l",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    sget-object v0, La/l;->m:La/l;

    .line 214
    :goto_0
    return-object v0

    .line 209
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 210
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, La/l;->n:La/l;

    goto :goto_0

    :cond_1
    sget-object v0, La/l;->o:La/l;

    goto :goto_0

    .line 212
    :cond_2
    new-instance v0, La/t;

    invoke-direct {v0}, La/t;-><init>()V

    .line 213
    invoke-virtual {v0, p0}, La/t;->b(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v0}, La/t;->a()La/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "La/l",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La/l;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;La/g;)La/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;La/g;)La/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/g;",
            ")",
            "La/l",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v1, La/t;

    invoke-direct {v1}, La/t;-><init>()V

    .line 348
    :try_start_0
    new-instance v0, La/r;

    invoke-direct {v0, p2, v1, p0}, La/r;-><init>(La/g;La/t;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    invoke-virtual {v1}, La/t;->a()La/l;

    move-result-object v0

    return-object v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v2, La/k;

    invoke-direct {v2, v0}, La/k;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, La/t;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a()La/s;
    .locals 1

    .prologue
    .line 79
    sget-object v0, La/l;->d:La/s;

    return-object v0
.end method

.method static synthetic a(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, La/l;->c(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V

    return-void
.end method

.method static synthetic b(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V
    .locals 0

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, La/l;->d(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V

    return-void
.end method

.method private static c(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/t",
            "<TTContinuationResult;>;",
            "La/j",
            "<TTResult;TTContinuationResult;>;",
            "La/l",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 863
    :try_start_0
    new-instance v0, La/o;

    invoke-direct {v0, p4, p0, p1, p2}, La/o;-><init>(La/g;La/t;La/j;La/l;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    new-instance v1, La/k;

    invoke-direct {v1, v0}, La/k;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, La/t;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static d(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/t",
            "<TTContinuationResult;>;",
            "La/j",
            "<TTResult;",
            "La/l",
            "<TTContinuationResult;>;>;",
            "La/l",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 908
    :try_start_0
    new-instance v0, La/p;

    invoke-direct {v0, p4, p0, p1, p2}, La/p;-><init>(La/g;La/t;La/j;La/l;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    new-instance v1, La/k;

    invoke-direct {v1, v0}, La/k;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, La/t;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 953
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 954
    :try_start_0
    iget-object v0, p0, La/l;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    :try_start_1
    invoke-interface {v0, p0}, La/j;->a(La/l;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    :try_start_2
    throw v0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 959
    :catch_1
    move-exception v0

    .line 960
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 963
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La/l;->l:Ljava/util/List;

    .line 964
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 965
    return-void
.end method


# virtual methods
.method public a(La/j;)La/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;TTContinuationResult;>;)",
            "La/l",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 672
    sget-object v0, La/l;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/l;->a(La/j;Ljava/util/concurrent/Executor;La/g;)La/l;

    move-result-object v0

    return-object v0
.end method

.method public a(La/j;Ljava/util/concurrent/Executor;La/g;)La/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "La/g;",
            ")",
            "La/l",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v2, La/t;

    invoke-direct {v2}, La/t;-><init>()V

    .line 648
    iget-object v6, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 649
    :try_start_0
    invoke-virtual {p0}, La/l;->b()Z

    move-result v7

    .line 650
    if-nez v7, :cond_0

    .line 651
    iget-object v8, p0, La/l;->l:Ljava/util/List;

    new-instance v0, La/m;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, La/m;-><init>(La/l;La/t;La/j;Ljava/util/concurrent/Executor;La/g;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    if-eqz v7, :cond_1

    .line 661
    invoke-static {v2, p1, p0, p2, p3}, La/l;->c(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V

    .line 663
    :cond_1
    invoke-virtual {v2}, La/t;->a()La/l;

    move-result-object v0

    return-object v0

    .line 659
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(La/j;)La/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;",
            "La/l",
            "<TTContinuationResult;>;>;)",
            "La/l",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 726
    sget-object v0, La/l;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/l;->b(La/j;Ljava/util/concurrent/Executor;La/g;)La/l;

    move-result-object v0

    return-object v0
.end method

.method public b(La/j;Ljava/util/concurrent/Executor;La/g;)La/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TTResult;",
            "La/l",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "La/g;",
            ")",
            "La/l",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 701
    new-instance v2, La/t;

    invoke-direct {v2}, La/t;-><init>()V

    .line 702
    iget-object v6, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 703
    :try_start_0
    invoke-virtual {p0}, La/l;->b()Z

    move-result v7

    .line 704
    if-nez v7, :cond_0

    .line 705
    iget-object v8, p0, La/l;->l:Ljava/util/List;

    new-instance v0, La/n;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, La/n;-><init>(La/l;La/t;La/j;Ljava/util/concurrent/Executor;La/g;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    if-eqz v7, :cond_1

    .line 715
    invoke-static {v2, p1, p0, p2, p3}, La/l;->d(La/t;La/j;La/l;Ljava/util/concurrent/Executor;La/g;)V

    .line 717
    :cond_1
    invoke-virtual {v2}, La/t;->a()La/l;

    move-result-object v0

    return-object v0

    .line 713
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-boolean v0, p0, La/l;->f:Z

    monitor-exit v1

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/Exception;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1003
    iget-object v2, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 1004
    :try_start_0
    iget-boolean v3, p0, La/l;->f:Z

    if-eqz v3, :cond_0

    .line 1005
    monitor-exit v2

    .line 1014
    :goto_0
    return v0

    .line 1007
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/l;->f:Z

    .line 1008
    iput-object p1, p0, La/l;->i:Ljava/lang/Exception;

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, La/l;->j:Z

    .line 1010
    iget-object v0, p0, La/l;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1011
    invoke-direct {p0}, La/l;->h()V

    .line 1012
    iget-boolean v0, p0, La/l;->j:Z

    if-nez v0, :cond_1

    invoke-static {}, La/l;->a()La/s;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1013
    new-instance v0, La/u;

    invoke-direct {v0, p0}, La/u;-><init>(La/l;)V

    iput-object v0, p0, La/l;->k:La/u;

    .line 1014
    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 987
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    iget-boolean v2, p0, La/l;->f:Z

    if-eqz v2, :cond_0

    .line 989
    const/4 v0, 0x0

    monitor-exit v1

    .line 995
    :goto_0
    return v0

    .line 991
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, La/l;->f:Z

    .line 992
    iput-object p1, p0, La/l;->h:Ljava/lang/Object;

    .line 993
    iget-object v2, p0, La/l;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 994
    invoke-direct {p0}, La/l;->h()V

    .line 995
    monitor-exit v1

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-boolean v0, p0, La/l;->g:Z

    monitor-exit v1

    return v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-virtual {p0}, La/l;->f()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, La/l;->h:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, La/l;->i:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, La/l;->j:Z

    .line 167
    iget-object v0, p0, La/l;->k:La/u;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, La/l;->k:La/u;

    invoke-virtual {v0}, La/u;->a()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, La/l;->k:La/u;

    .line 172
    :cond_0
    iget-object v0, p0, La/l;->i:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 971
    iget-object v1, p0, La/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-boolean v2, p0, La/l;->f:Z

    if-eqz v2, :cond_0

    .line 973
    const/4 v0, 0x0

    monitor-exit v1

    .line 979
    :goto_0
    return v0

    .line 975
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, La/l;->f:Z

    .line 976
    const/4 v2, 0x1

    iput-boolean v2, p0, La/l;->g:Z

    .line 977
    iget-object v2, p0, La/l;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 978
    invoke-direct {p0}, La/l;->h()V

    .line 979
    monitor-exit v1

    goto :goto_0

    .line 980
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
