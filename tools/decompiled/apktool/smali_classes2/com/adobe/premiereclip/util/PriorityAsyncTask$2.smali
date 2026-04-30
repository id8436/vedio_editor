.class Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;
.super Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;)V
    .locals 1

    .prologue
    .line 290
    iput-object p1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$WorkerRunnable;-><init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->access$200(Lcom/adobe/premiereclip/util/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 296
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    iget-object v1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    iget-object v2, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->access$300(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
