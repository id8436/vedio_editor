.class public Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKPostUserSettingsOnServerAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;",
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
.field private saveSettingsParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;

    .line 61
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 67
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 71
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "{server_root_url}/v2/settings/browsing?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const/4 v0, 0x0

    .line 76
    array-length v1, p1

    if-ne v1, v8, :cond_2

    .line 77
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->saveSettingsParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->saveSettingsParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->saveSettingsParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;->getSettings()Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;

    move-result-object v0

    .line 83
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    new-instance v5, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v6, "safe"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;->isSafeBrowsingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_1
    invoke-direct {v5, v6, v0}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v1}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Save user settings async task response: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "http_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 108
    :goto_2
    return-object v2

    .line 84
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 96
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem saving user settings on server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 101
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 102
    :catch_1
    move-exception v0

    .line 103
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem saving user settings on server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 106
    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
    .line 113
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->saveSettingsParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;->onPostUserSettingsOnServerAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->saveSettingsParams:Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;->onPostUserSettingsOnServerAsyncTaskSuccess(Ljava/lang/Boolean;Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
