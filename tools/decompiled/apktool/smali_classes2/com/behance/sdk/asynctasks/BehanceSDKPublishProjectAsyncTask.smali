.class public Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKPublishProjectAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PROJECTID_KEY:Ljava/lang/String; = "{PROJECTID}"

.field private static final PUBLISHED:Ljava/lang/String; = "1"

.field private static final PUBLISHED_KEY:Ljava/lang/String; = "published"


# instance fields
.field private listener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 37
    new-instance v1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 38
    aget-object v0, p1, v0

    .line 41
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 42
    const-string/jumbo v3, "clientId"

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v3, "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

    invoke-static {v3, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "{PROJECTID}"

    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;->getProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    const-string/jumbo v3, "access_token"

    .line 50
    invoke-static {v0, v3, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    new-instance v3, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 53
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setBrowserCompatible(Z)V

    .line 54
    const-string/jumbo v4, "published"

    const-string/jumbo v5, "text/plain; charset=UTF-8"

    const-string/jumbo v6, "8bit"

    const-string/jumbo v7, "1"

    const-string/jumbo v8, "UTF-8"

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 54
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 56
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPutRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 69
    :goto_0
    return-object v1

    .line 61
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 62
    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v1, v9}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 66
    new-instance v2, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v2, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKPublishProjectTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-interface {v1, v0}, Lcom/behance/sdk/IBehanceSDKProjectPublishListener;->onFailure(Lcom/behance/sdk/exception/BehanceSDKException;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    const-string/jumbo v1, "12345"

    invoke-interface {v0, v1}, Lcom/behance/sdk/IBehanceSDKProjectPublishListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKPublishProjectAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
