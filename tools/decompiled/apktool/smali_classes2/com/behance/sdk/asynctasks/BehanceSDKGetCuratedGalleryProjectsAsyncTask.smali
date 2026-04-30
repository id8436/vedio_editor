.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetCuratedGalleryProjectsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;",
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
.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;

.field private taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;

    .line 62
    return-void
.end method

.method private getCuratedGalleryProjects(Ljava/lang/String;IILcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;",
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
            Lcom/behance/sdk/exception/BehanceSDKHTTPStatusCodeNotOKException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string/jumbo v2, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v2, "site_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v2, "{server_root_url}/v2/projects?{key_client_id_param}={clientId}"

    invoke-static {v2, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->ORGANIZATION:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    if-ne p4, v2, :cond_2

    .line 103
    const-string/jumbo v2, "network"

    invoke-static {v0, v2, p1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    :goto_0
    const-string/jumbo v2, "page"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string/jumbo v2, "per_page"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Get Projects of Curated Gallery url - %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Get Projects of Curated Gallery response: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v3, "http_code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 121
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 122
    new-instance v2, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;

    invoke-direct {v2}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;-><init>()V

    .line 123
    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/parser/BehanceSDKProjectDTOParser;->parseJustProjects(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_1
    :goto_1
    return-object v1

    .line 104
    :cond_2
    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;->SERVED_SITE:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    if-ne p4, v2, :cond_0

    .line 105
    const-string/jumbo v2, "served"

    invoke-static {v0, v2, p1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_3
    const/16 v0, 0x194

    if-ne v2, v0, :cond_4

    .line 128
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "HTTP Response code 404 when trying to  fetch Projects of Curated Gallery. [Gallery ID - %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v2, "Curated Gallery not found"

    invoke-direct {v0, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Unexpected HTTP Response code when trying to fetch Projects of Curated Gallery"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 141
    invoke-virtual {p5, v7}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_1

    .line 132
    :cond_4
    :try_start_1
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Unexpected HTTP Response code when trying to fetch Projects of Curated Gallery. [Gallery ID - %s] [Response code - %d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 132
    invoke-interface {v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid server response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;",
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    new-instance v5, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v5}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 68
    aget-object v0, p1, v6

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getCuratedGalleryId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getGalleryType()Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    move-result-object v4

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getPageNumber()I

    move-result v2

    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getPageSize()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->getCuratedGalleryProjects(Ljava/lang/String;IILcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-virtual {v5, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    return-object v5

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v2, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Unknown problem fetching Projects of Curated Gallery [Gallery ID - %s]"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v5, v7}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 80
    invoke-virtual {v5, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem fetching Projects of Curated Gallery"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {v5, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 85
    invoke-virtual {v5, v7}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
    .line 148
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;->onGetCuratedGalleryProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->taskParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-interface {v1, v0, v2}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;->onGetCuratedGalleryProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
