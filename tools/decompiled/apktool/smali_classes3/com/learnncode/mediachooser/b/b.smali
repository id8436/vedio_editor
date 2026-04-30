.class public abstract Lcom/learnncode/mediachooser/b/b;
.super Ljava/lang/Object;
.source "MediaAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/concurrent/ThreadFactory;

.field private static final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/learnncode/mediachooser/b/h;

.field private static volatile f:Ljava/util/concurrent/Executor;


# instance fields
.field private final g:Lcom/learnncode/mediachooser/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/learnncode/mediachooser/b/l",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile i:Lcom/learnncode/mediachooser/b/k;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 196
    new-instance v0, Lcom/learnncode/mediachooser/b/c;

    invoke-direct {v0}, Lcom/learnncode/mediachooser/b/c;-><init>()V

    sput-object v0, Lcom/learnncode/mediachooser/b/b;->c:Ljava/util/concurrent/ThreadFactory;

    .line 204
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/learnncode/mediachooser/b/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 210
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/learnncode/mediachooser/b/b;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/learnncode/mediachooser/b/b;->c:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/learnncode/mediachooser/b/b;->a:Ljava/util/concurrent/Executor;

    .line 218
    new-instance v0, Lcom/learnncode/mediachooser/b/i;

    invoke-direct {v0, v9}, Lcom/learnncode/mediachooser/b/i;-><init>(Lcom/learnncode/mediachooser/b/c;)V

    sput-object v0, Lcom/learnncode/mediachooser/b/b;->b:Ljava/util/concurrent/Executor;

    .line 223
    new-instance v0, Lcom/learnncode/mediachooser/b/h;

    invoke-direct {v0, v9}, Lcom/learnncode/mediachooser/b/h;-><init>(Lcom/learnncode/mediachooser/b/c;)V

    sput-object v0, Lcom/learnncode/mediachooser/b/b;->e:Lcom/learnncode/mediachooser/b/h;

    .line 225
    sget-object v0, Lcom/learnncode/mediachooser/b/b;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/learnncode/mediachooser/b/b;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    sget-object v0, Lcom/learnncode/mediachooser/b/k;->a:Lcom/learnncode/mediachooser/b/k;

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->i:Lcom/learnncode/mediachooser/b/k;

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 232
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 293
    new-instance v0, Lcom/learnncode/mediachooser/b/d;

    invoke-direct {v0, p0}, Lcom/learnncode/mediachooser/b/d;-><init>(Lcom/learnncode/mediachooser/b/b;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->g:Lcom/learnncode/mediachooser/b/l;

    .line 304
    new-instance v0, Lcom/learnncode/mediachooser/b/e;

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/b;->g:Lcom/learnncode/mediachooser/b/l;

    invoke-direct {v0, p0, v1}, Lcom/learnncode/mediachooser/b/e;-><init>(Lcom/learnncode/mediachooser/b/b;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->h:Ljava/util/concurrent/FutureTask;

    .line 319
    return-void
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/learnncode/mediachooser/b/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/learnncode/mediachooser/b/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/learnncode/mediachooser/b/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/learnncode/mediachooser/b/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/learnncode/mediachooser/b/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/learnncode/mediachooser/b/b;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 323
    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/learnncode/mediachooser/b/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 330
    sget-object v0, Lcom/learnncode/mediachooser/b/b;->e:Lcom/learnncode/mediachooser/b/h;

    new-instance v1, Lcom/learnncode/mediachooser/b/g;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/learnncode/mediachooser/b/g;-><init>(Lcom/learnncode/mediachooser/b/b;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/learnncode/mediachooser/b/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/b/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/b/b;->b(Ljava/lang/Object;)V

    .line 644
    :goto_0
    sget-object v0, Lcom/learnncode/mediachooser/b/k;->c:Lcom/learnncode/mediachooser/b/k;

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->i:Lcom/learnncode/mediachooser/b/k;

    .line 645
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0, p1}, Lcom/learnncode/mediachooser/b/b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/learnncode/mediachooser/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/learnncode/mediachooser/b/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/b;->i:Lcom/learnncode/mediachooser/b/k;

    sget-object v1, Lcom/learnncode/mediachooser/b/k;->a:Lcom/learnncode/mediachooser/b/k;

    if-eq v0, v1, :cond_0

    .line 584
    sget-object v0, Lcom/learnncode/mediachooser/b/f;->a:[I

    iget-object v1, p0, Lcom/learnncode/mediachooser/b/b;->i:Lcom/learnncode/mediachooser/b/k;

    invoke-virtual {v1}, Lcom/learnncode/mediachooser/b/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 595
    :cond_0
    sget-object v0, Lcom/learnncode/mediachooser/b/k;->b:Lcom/learnncode/mediachooser/b/k;

    iput-object v0, p0, Lcom/learnncode/mediachooser/b/b;->i:Lcom/learnncode/mediachooser/b/k;

    .line 597
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/b/b;->a()V

    .line 599
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/b;->g:Lcom/learnncode/mediachooser/b/l;

    iput-object p2, v0, Lcom/learnncode/mediachooser/b/l;->b:[Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/b;->h:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 602
    return-object p0

    .line 586
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 385
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/learnncode/mediachooser/b/b;->b()V

    .line 415
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 397
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/learnncode/mediachooser/b/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
