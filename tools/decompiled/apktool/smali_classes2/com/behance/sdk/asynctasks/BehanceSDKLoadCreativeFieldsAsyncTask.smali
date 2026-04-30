.class public Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKLoadCreativeFieldsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final FIELDS_JSON_TAG:Ljava/lang/String; = "fields"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final POPULAR_JSON_TAG:Ljava/lang/String; = "popular"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private iUserCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

.field private taskHandler:Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->taskHandler:Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;

    .line 66
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 71
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;-><init>()V

    .line 74
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string/jumbo v3, "clientId"

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->iUserCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    invoke-interface {v4}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v3, "{server_root_url}/v2/fields?{key_client_id_param}={clientId}"

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get creative fields response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 85
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "popular"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v0, v1

    .line 87
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 88
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 89
    new-instance v8, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    invoke-direct {v8}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;-><init>()V

    .line 90
    const-string/jumbo v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-virtual {v8, v9}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setId(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setName(Ljava/lang/String;)V

    .line 93
    sget-object v7, Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;->POPULAR:Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;

    invoke-virtual {v8, v7}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setCategory(Lcom/behance/sdk/enums/BehanceSDKCreativeFieldCategory;)V

    .line 94
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const-string/jumbo v0, "fields"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 97
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 98
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 99
    const-string/jumbo v0, "id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    .line 108
    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 104
    :cond_1
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;-><init>()V

    .line 105
    invoke-virtual {v0, v7}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setId(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v2, v11}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->setExceptionOccurred(Z)V

    .line 113
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->setException(Ljava/lang/Exception;)V

    .line 115
    :goto_3
    return-object v2

    .line 110
    :cond_2
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->taskHandler:Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;->onLoadCreativeFieldsFailure(Ljava/lang/Exception;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->taskHandler:Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;->onLoadCreativeFieldsSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKCreativeFieldsTaskResult;)V

    return-void
.end method

.method public setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->iUserCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    .line 133
    return-void
.end method
