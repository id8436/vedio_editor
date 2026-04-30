.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetTeamsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 37
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 40
    const/4 v0, 0x0

    :try_start_0
    aget-object v3, p1, v0

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    const-string/jumbo v4, "clientId"

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v4, "{server_root_url}/v2/teams?{key_client_id_param}={clientId}"

    invoke-static {v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v4, "sort"

    const-string/jumbo v5, "relevance"

    invoke-static {v0, v4, v5}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->getSearchString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 48
    const-string/jumbo v5, "search"

    invoke-static {v0, v5, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v4

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "teams"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 60
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 61
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    new-instance v5, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;

    invoke-direct {v5}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;-><init>()V

    .line 63
    const-string/jumbo v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->setId(I)V

    .line 64
    const-string/jumbo v6, "display_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->setDisplayName(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->setName(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v6, "slug"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->setSlug(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->setUrl(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v6, "images"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    const/16 v6, 0x32

    const-string/jumbo v7, "50"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->addProfileImage(ILjava/lang/String;)V

    .line 71
    const/16 v6, 0x64

    const-string/jumbo v7, "100"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->addProfileImage(ILjava/lang/String;)V

    .line 72
    const/16 v6, 0x73

    const-string/jumbo v7, "115"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->addProfileImage(ILjava/lang/String;)V

    .line 73
    const/16 v6, 0x8a

    const-string/jumbo v7, "138"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->addProfileImage(ILjava/lang/String;)V

    .line 74
    const/16 v6, 0xe6

    const-string/jumbo v7, "230"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->addProfileImage(ILjava/lang/String;)V

    .line 75
    const/16 v6, 0x114

    const-string/jumbo v7, "276"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;->addProfileImage(ILjava/lang/String;)V

    .line 77
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 80
    :cond_2
    invoke-virtual {v2, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :goto_1
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 83
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 87
    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;->onGetTeamsFailure(Ljava/lang/Exception;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetTeamsTaskListener;->onGetTeamsSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetTeamsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
