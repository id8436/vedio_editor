.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetProjectsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;",
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
.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;

    .line 61
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;",
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
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 70
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string/jumbo v1, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "{server_root_url}/v2/projects?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const/4 v0, 0x0

    .line 75
    array-length v3, p1

    if-ne v3, v8, :cond_7

    .line 76
    const/4 v3, 0x0

    aget-object v3, p1, v3

    .line 77
    iput-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    .line 78
    if-eqz v3, :cond_7

    .line 79
    const-string/jumbo v0, "page"

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getPageNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "per_page"

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getPageSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v4, "sort"

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const-string/jumbo v4, "time"

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_1
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getFieldId()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    const-string/jumbo v4, "field"

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_2
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    const-string/jumbo v4, "country"

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_3
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getState()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "All States"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 105
    const-string/jumbo v4, "state"

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_4
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "All Cities"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 109
    const-string/jumbo v4, "city"

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_5
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 114
    const-string/jumbo v4, "search"

    invoke-static {v1, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_6
    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_7
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get Projects async task request url - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Get projects async task response: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v1, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;

    invoke-direct {v1}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;-><init>()V

    .line 127
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseJustProjects(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem getting Projects from server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 132
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem getting Projects from server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 137
    invoke-virtual {v2, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
    .line 144
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;->onGetProjectsAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;->onGetProjectsAsyncTaskSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
