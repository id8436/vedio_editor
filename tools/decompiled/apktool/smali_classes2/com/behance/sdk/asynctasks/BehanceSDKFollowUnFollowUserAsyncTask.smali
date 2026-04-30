.class public Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKFollowUnFollowUserAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;",
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
.field private followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;

    .line 57
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0xc8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 62
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 63
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 65
    aget-object v0, p1, v9

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v1, "user_id"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v1, "{server_root_url}/v2/users/{user_id}/follow?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Follow/Unfollow user url - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    move-object v1, v0

    .line 87
    :goto_0
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    sget-object v4, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v5, "Follow/UnFollow user response for [userId - %s ] [Follow - %s] : %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v8}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    .line 92
    if-ne v1, v12, :cond_3

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "http_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    if-ne v0, v12, :cond_2

    .line 96
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 101
    :goto_1
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Follow/Unfollow user http response status code - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v1, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    :goto_2
    return-object v2

    .line 84
    :cond_1
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpDeleteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem trying to follow/unfollow user [userId - %s] [Follow user - %s]"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v9

    iget-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-interface {v1, v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 107
    invoke-virtual {v2, v10}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 108
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :catch_1
    move-exception v0

    .line 110
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Problem trying to follow/unfollow user [userId - %s] [Follow user - %s]"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v9

    iget-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v10

    invoke-interface {v1, v0, v4, v5}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 113
    invoke-virtual {v2, v10}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 114
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
    .line 121
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;->onFollowUserAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->followUserParams:Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;->onFollowUserAsyncTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
