.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetCitiesAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;

    .line 37
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 45
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string/jumbo v1, "clientId"

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "{server_root_url}/v2/locations/cities?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    const-string/jumbo v1, "country_code"

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    const-string/jumbo v1, "region"

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 60
    const-string/jumbo v1, "query"

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_2
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get Cities URL - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get cities response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "results"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v1, v2

    .line 75
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 76
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    check-cast v0, Lorg/json/JSONObject;

    .line 79
    new-instance v6, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-direct {v6}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;-><init>()V

    .line 80
    const-string/jumbo v7, "location_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setId(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v7, "name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setDisplayName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    invoke-virtual {v3, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_1
    return-object v3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem getting Cities from server"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v3, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 90
    invoke-virtual {v3, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem getting Cities from server"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 94
    invoke-virtual {v3, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;->onGetCitiesFailure(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/lang/Exception;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;->onGetCitiesSuccess(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
