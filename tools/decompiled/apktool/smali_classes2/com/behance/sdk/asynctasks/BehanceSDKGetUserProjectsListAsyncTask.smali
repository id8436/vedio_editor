.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetUserProjectsListAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;

    .line 58
    return-void
.end method

.method private getUserProjects(Ljava/lang/String;IZLcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/behance/sdk/exception/BehanceSDKProjectParseException;,
            Lcom/behance/sdk/exception/BehanceSDKHTTPStatusCodeNotOKException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "user_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "{server_root_url}/v2/users/{user_id}/projects?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string/jumbo v1, "page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "per_page"

    const/16 v2, 0x18

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Get user projects URL - %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Get user projects response: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v2, "http_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 128
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 129
    new-instance v1, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;

    invoke-direct {v1}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;-><init>()V

    .line 130
    invoke-virtual {v1, v0, p3}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseJustProjects(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 132
    :cond_0
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Unexpected HTTP Response code when trying to fetch User Projects. [User ID - %s] [Response code - %d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 132
    invoke-interface {v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    const/16 v2, 0x2711

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid server response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 136
    invoke-virtual {p4, v5}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 62
    new-instance v0, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 63
    array-length v1, p1

    if-eq v1, v4, :cond_0

    .line 64
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v2, "User Id is required"

    invoke-direct {v1, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 65
    invoke-virtual {v0, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 106
    :goto_0
    return-object v0

    .line 69
    :cond_0
    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    .line 70
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->getPageNumber()I

    move-result v1

    if-lez v1, :cond_4

    .line 79
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->getPageNumber()I

    move-result v1

    move v2, v3

    .line 81
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :goto_2
    iget-object v7, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-virtual {v7}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;->isIncludePrivateProjects()Z

    move-result v7

    invoke-direct {p0, v5, v1, v7, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->getUserProjects(Ljava/lang/String;IZLcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)Ljava/util/List;

    move-result-object v7

    .line 84
    if-eqz v7, :cond_1

    .line 85
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 89
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x18

    if-lt v7, v8, :cond_2

    .line 90
    invoke-virtual {v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 95
    :cond_2
    invoke-virtual {v0, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v6, "Unknown problem fetching Project List for User [User ID - %s]"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-interface {v2, v1, v6, v7}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v0, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 93
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_2

    .line 100
    :catch_1
    move-exception v1

    .line 101
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v6, "Unknown problem fetching Project List for User [User ID - %s]"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-interface {v2, v1, v6, v7}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v2, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 104
    invoke-virtual {v0, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0

    :cond_4
    move v2, v4

    move v1, v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;->onGetUserProjectsListFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProjectsListAsyncTaskListener;->onGetUserProjectsListSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProjectsListAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
