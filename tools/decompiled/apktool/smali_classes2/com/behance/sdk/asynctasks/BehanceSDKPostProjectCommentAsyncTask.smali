.class public Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKPostProjectCommentAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;

    .line 53
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xc9

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 59
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 61
    aget-object v0, p1, v8

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->getCommentContent()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->getProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 67
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string/jumbo v4, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v4, "project_id"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v4, "{server_root_url}/v2/projects/{project_id}/comments?{key_client_id_param}={clientId}"

    invoke-static {v4, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 75
    sget-object v4, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v5, "Post Project comment url - %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    new-instance v5, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v6, "comment"

    invoke-direct {v5, v6, v0}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v0

    iget-object v5, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-virtual {v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    const-string/jumbo v4, "User must be verified"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->setUserVerified(Z)V

    .line 85
    :cond_0
    sget-object v4, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v5, "Post Project comment response: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    .line 88
    if-ne v1, v11, :cond_3

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "http_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    if-ne v0, v11, :cond_2

    .line 92
    const-string/jumbo v3, "comment_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 100
    :goto_0
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Post WIP commenet http response status code - %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_1
    :goto_1
    return-object v2

    .line 94
    :cond_2
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unexpected HTTP Response code when trying to comment on project [Project ID - %s] [Response code - %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid server response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 97
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem trying to post WIP comment"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 105
    invoke-virtual {v2, v9}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem trying to post WIP comment"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 111
    invoke-virtual {v2, v9}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 112
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;->onPostProjectCommentAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->postCommentParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;->onPostProjectCommentAsyncTaskSuccess(ILcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
