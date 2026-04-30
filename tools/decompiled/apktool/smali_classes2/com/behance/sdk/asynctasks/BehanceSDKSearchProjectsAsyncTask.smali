.class public Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKSearchProjectsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;",
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
.field private taskHandler:Lcom/behance/sdk/IBehanceSDKSearchProjectListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/IBehanceSDKSearchProjectListener;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/IBehanceSDKSearchProjectListener;

    .line 60
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;",
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

    .line 65
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 69
    :try_start_0
    array-length v0, p1

    if-ne v0, v8, :cond_7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_7

    .line 71
    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 72
    iput-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string/jumbo v3, "clientId"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v3, "{server_root_url}/v2/projects?{key_client_id_param}={clientId}"

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v3, "page"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getPageNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string/jumbo v3, "per_page"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getPageSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;->FEATURED_DATE:Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    .line 84
    :cond_0
    const-string/jumbo v4, "sort"

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getTimeSpan()Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    const-string/jumbo v4, "time"

    invoke-virtual {v3}, Lcom/behance/sdk/enums/BehanceSDKProjectsTimeSpan;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getFieldId()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    const-string/jumbo v4, "field"

    invoke-static {v0, v4, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_2
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    const-string/jumbo v4, "country"

    invoke-static {v0, v4, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_3
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getState()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "All States"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 105
    const-string/jumbo v4, "state"

    invoke-static {v0, v4, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_4
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getCity()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "All Cities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 109
    const-string/jumbo v4, "city"

    invoke-static {v0, v4, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_5
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;->getSearchString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 114
    const-string/jumbo v3, "q"

    invoke-static {v0, v3, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_6
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Get Projects async task request url - %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Get projects async task response: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v2, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;

    invoke-direct {v2}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;-><init>()V

    .line 128
    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseJustProjects(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V

    .line 147
    :goto_0
    return-object v1

    .line 132
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 133
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v2, "BehanceSDKSearchProjectsTaskParams cannot be null"

    invoke-direct {v0, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem getting Projects from server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 140
    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem getting Projects from server"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v2, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 145
    invoke-virtual {v1, v8}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKSearchProjectsTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/IBehanceSDKSearchProjectListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/IBehanceSDKSearchProjectListener;->onSearchProjectsFailure(Ljava/lang/Exception;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/IBehanceSDKSearchProjectListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/behance/sdk/IBehanceSDKSearchProjectListener;->onSearchProjectsSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKSearchProjectsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
