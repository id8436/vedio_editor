.class public Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKSearchTagsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string/jumbo v3, "clientId"

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v3, "{server_root_url}/v2/tags?{key_client_id_param}={clientId}"

    invoke-static {v3, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string/jumbo v3, "category"

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->getCategories()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string/jumbo v3, "q"

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->getTextQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 52
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/behance/sdk/dto/parser/BehanceSDKTagParser;->parse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-object v1

    .line 54
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 55
    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    invoke-virtual {v1, v5}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
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
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;->onSearchTagsFailure(Ljava/lang/Exception;)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKSearchTagsTaskListener;->onSearchTagsSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchTagsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
