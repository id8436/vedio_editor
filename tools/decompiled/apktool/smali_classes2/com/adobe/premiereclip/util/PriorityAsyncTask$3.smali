.class Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;
.super Lcom/adobe/premiereclip/util/PriorityFutureTask;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/premiereclip/util/PriorityFutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/util/concurrent/Callable;J)V
    .locals 1

    .prologue
    .line 300
    iput-object p1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    invoke-direct {p0, p2, p3, p4}, Lcom/adobe/premiereclip/util/PriorityFutureTask;-><init>(Ljava/util/concurrent/Callable;J)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->access$400(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 313
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string/jumbo v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 307
    :catch_1
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing doInBackground()"

    .line 309
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 310
    :catch_2
    move-exception v0

    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$3;->this$0:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;->access$400(Lcom/adobe/premiereclip/util/PriorityAsyncTask;Ljava/lang/Object;)V

    goto :goto_0
.end method
