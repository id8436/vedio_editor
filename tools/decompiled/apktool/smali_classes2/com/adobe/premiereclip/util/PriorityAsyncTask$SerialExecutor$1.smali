.class Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor$1;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor$1;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;->scheduleNext()V

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor$1;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$SerialExecutor;->scheduleNext()V

    .line 238
    throw v0
.end method
