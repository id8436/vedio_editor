.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetStatesOfCountryAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private countryId:Ljava/lang/String;

.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 45
    aget-object v0, p1, v3

    .line 47
    array-length v2, p1

    if-eq v2, v8, :cond_0

    .line 48
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "Missing country ID"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 49
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    move-object v0, v1

    .line 94
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->countryId:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string/jumbo v4, "countryId"

    iget-object v5, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->countryId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v4, "clientId"

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v0, "{server_root_url}/v2/locations/regions?country_code={countryId}&{key_client_id_param}={clientId}"

    invoke-static {v0, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get States of Country URL - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get States of Country [Country id - %s ] response: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->countryId:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "results"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v3

    .line 72
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 73
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    check-cast v0, Lorg/json/JSONObject;

    .line 76
    new-instance v6, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-direct {v6}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;-><init>()V

    .line 77
    const-string/jumbo v7, "short_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->setId(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v7, "long_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->setDisplayName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 84
    invoke-virtual {v1, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move-object v0, v1

    .line 94
    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem getting States of Country from server"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 89
    :catch_1
    move-exception v0

    .line 90
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem getting States of Country from server"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 92
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->countryId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;->onGetStatesFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->countryId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;->onGetStatesSuccess(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
