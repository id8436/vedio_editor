.class Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;
.super Ljava/lang/Object;
.source "BehanceSDKSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;->this$0:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    iput-object p2, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;->val$taskName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;->val$taskName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$1;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
