.class public abstract Lcom/adobe/premiereclip/util/PriorityAsyncTask;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


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
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Lcom/adobe/premiereclip/util/PriorityAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->CPU_COUNT:I

    .line 185
    sget v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->CORE_POOL_SIZE:I

    .line 186
    sget v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 189
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$1;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$1;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 197
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 203
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->CORE_POOL_SIZE:I

    sget v3, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 211
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;-><init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask$1;)V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 216
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->PENDING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 290
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;-><init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mWorker:Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;

    .line 300
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;

    iget-object v1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mWorker:Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;-><init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/util/concurrent/Callable;J)V

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 315
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/util/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 613
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 642
    :goto_0
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->FINISHED:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    .line 643
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 273
    const-class v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    monitor-enter v1

    .line 274
    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sHandler:Lcom/adobe/premiereclip/util/PriorityAsyncTask$InternalHandler;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$InternalHandler;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$InternalHandler;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sHandler:Lcom/adobe/premiereclip/util/PriorityAsyncTask$InternalHandler;

    .line 277
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sHandler:Lcom/adobe/premiereclip/util/PriorityAsyncTask$InternalHandler;

    monitor-exit v1

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 326
    invoke-static {}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 319
    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 283
    sput-object p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 284
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 476
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/adobe/premiereclip/util/PriorityAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/adobe/premiereclip/util/PriorityAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 543
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/adobe/premiereclip/util/PriorityAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/adobe/premiereclip/util/PriorityAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    sget-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->PENDING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 582
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$4;->$SwitchMap$com$adobe$premiereclip$util$PriorityAsyncTask$Status:[I

    iget-object v1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 593
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->RUNNING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    iput-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    .line 595
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->onPreExecute()V

    .line 597
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mWorker:Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 600
    return-object p0

    .line 584
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mStatus:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->onCancelled()V

    .line 414
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 382
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 395
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-static {}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 634
    :cond_0
    return-void
.end method
