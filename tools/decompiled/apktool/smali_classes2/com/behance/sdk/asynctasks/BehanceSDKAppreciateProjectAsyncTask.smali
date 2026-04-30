.class public Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKAppreciateProjectAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private appreciateProjectParams:Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;

    .line 55
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0xc8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 61
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 63
    aget-object v0, p1, v8

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->appreciateProjectParams:Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    .line 65
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->appreciateProjectParams:Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;->getProjectId()Ljava/lang/String;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "project_id"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "{server_root_url}/v2/projects/{project_id}/appreciate?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Appreciate Project url - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->appreciateProjectParams:Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    sget-object v4, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v5, "Appreciate Project response for [project id - %s ] : %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    .line 83
    if-ne v1, v10, :cond_3

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "http_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    if-ne v0, v10, :cond_1

    .line 87
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 100
    :goto_0
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Appreciate Project http response status code - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_1
    return-object v2

    .line 88
    :cond_1
    const/16 v1, 0x194

    if-ne v0, v1, :cond_2

    .line 89
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "HTTP Response code 404 when trying to appreciate project [Project ID - %s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v4, "Project not found"

    invoke-direct {v1, v4}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 92
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem trying to appreciate project [projectId - %s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-interface {v1, v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 106
    invoke-virtual {v2, v9}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 107
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_2
    :try_start_1
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Unexpected HTTP Response code when trying to appreciate project [Project ID - %s] [Response code - %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid server response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 97
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem trying to appreciate project [projectId - %s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v8

    invoke-interface {v1, v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 112
    invoke-virtual {v2, v9}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 113
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->appreciateProjectParams:Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;->onAppreciateProjectAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->appreciateProjectParams:Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;->onAppreciateProjectAsyncTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
