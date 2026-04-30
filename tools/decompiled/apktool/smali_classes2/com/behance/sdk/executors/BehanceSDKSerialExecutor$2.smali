.class Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;
.super Ljava/lang/Object;
.source "BehanceSDKSerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;->this$0:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    iput-object p2, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;->this$0:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    invoke-virtual {v0}, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->scheduleNext()V

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor$2;->this$0:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    invoke-virtual {v1}, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;->scheduleNext()V

    .line 52
    throw v0
.end method
