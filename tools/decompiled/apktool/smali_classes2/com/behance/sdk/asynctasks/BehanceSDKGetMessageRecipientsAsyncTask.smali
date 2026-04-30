.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetMessageRecipientsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private taskListener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskListener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;

    .line 45
    return-void
.end method

.method static synthetic access$300(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 49
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 51
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    if-eqz v0, :cond_2

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 57
    new-instance v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetContactSuggestionsCallable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetContactSuggestionsCallable;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$1;)V

    .line 58
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 60
    new-instance v4, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$1;)V

    .line 61
    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 64
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;

    .line 65
    invoke-virtual {v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    :cond_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;

    .line 72
    invoke-virtual {v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 87
    :cond_2
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v1, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v3, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v3, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 82
    invoke-virtual {v1, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskListener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;

    invoke-interface {v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;->onGetMessageRecipientSuggestionsTaskCancel()V

    .line 211
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->onCancelled(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskListener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;->onGetMessageRecipientSuggestionsTaskFailure(Ljava/lang/Exception;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->taskListener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetMessageRecipientsTaskListener;->onGetMessageRecipientSuggestionsTaskSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
