.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetTextEditorConfigAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xc8

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 38
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 40
    aget-object v2, p1, v0

    .line 41
    if-eqz v2, :cond_3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string/jumbo v3, "clientId"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v3, "{server_root_url}/v2/assets/standalone?{key_client_id_param}={clientId}"

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v11, :cond_0

    .line 50
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->getInstance(Landroid/content/Context;)Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;

    move-result-object v4

    .line 52
    const-string/jumbo v0, "config"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 53
    const-string/jumbo v0, "CBSTR"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "cb="

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 54
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;->CURRENT_CBSTR_VERSION:Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v0, v8, v9}, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->getLongPreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;J)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_2

    .line 55
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v0

    const-string/jumbo v8, "scripts"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v8, "text_editor"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v3

    if-ne v3, v11, :cond_1

    .line 57
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v8, "text_editor_js.txt"

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v8, v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->writeFileToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "text_editor_config.txt"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->writeFileToDisk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;->CURRENT_CBSTR_VERSION:Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;

    invoke-virtual {v4, v0, v6, v7}, Lcom/behance/sdk/util/BehanceSDKSharedPreferencesManager;->savePreference(Lcom/behance/sdk/enums/BehanceSDKPreferenceTypeLong;J)Z

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 79
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "Text editor js download failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V
    :try_end_0
    .catch Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 72
    invoke-virtual {v1, v10}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "null params"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 76
    invoke-virtual {v1, v10}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetTextEditorConfigParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;->onGetConfigFailure(Ljava/lang/Exception;)V

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTextEditorConfigTaskListener;->onGetConfigSuccess(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTextEditorConfigAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
