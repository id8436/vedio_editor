.class Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;
.super Ljava/lang/Object;
.source "BehanceSDKGetProjectDetailsAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;


# direct methods
.method private constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$1;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;)V

    return-void
.end method

.method private recordAViewForProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 10

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x0

    .line 374
    new-instance v1, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;-><init>()V

    .line 376
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 377
    const-string/jumbo v2, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    invoke-static {v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->access$100(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->getProjectID()Ljava/lang/String;

    move-result-object v2

    .line 379
    const-string/jumbo v3, "project_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v3, "{server_root_url}/v2/projects/{project_id}/view?{key_client_id_param}={clientId}"

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    invoke-static {v4}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->access$100(Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v3

    .line 384
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-static {}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->access$200()Lcom/behance/sdk/logger/ILogger;

    move-result-object v4

    const-string/jumbo v5, "Record a view for Project response for [project id - %s ] : %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v2

    .line 387
    if-ne v2, v9, :cond_1

    .line 388
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v0, "http_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 390
    if-ne v0, v9, :cond_0

    .line 391
    const-string/jumbo v0, "appreciated"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUser(Z)V

    .line 392
    const-string/jumbo v0, "appreciated_on"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUserOn(J)V

    :goto_0
    move-object v0, v1

    .line 406
    :goto_1
    return-object v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUser(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-virtual {v1, v8}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUser(Z)V

    .line 401
    invoke-static {}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->access$200()Lcom/behance/sdk/logger/ILogger;

    move-result-object v2

    const-string/jumbo v3, "Problem recording view for Project"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    move-object v0, v1

    .line 406
    goto :goto_1

    .line 398
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->access$200()Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    const-string/jumbo v3, "Record a view for Project http response status code - %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 402
    :catch_1
    move-exception v0

    .line 403
    invoke-virtual {v1, v8}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUser(Z)V

    .line 404
    invoke-static {}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->access$200()Lcom/behance/sdk/logger/ILogger;

    move-result-object v2

    const-string/jumbo v3, "Problem recording view for Project"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public call()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;->recordAViewForProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask$RecordProjectViewCallable;->call()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    return-object v0
.end method
