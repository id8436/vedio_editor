.class public Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKAddProjectModuleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MODULE_IMAGE_KEY:Ljava/lang/String; = "image"

.field private static final MODULE_TYPE_IMAGE_VALUE:Ljava/lang/String; = "image"

.field private static final MODULE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final PROJECTID_KEY:Ljava/lang/String; = "{PROJECTID}"


# instance fields
.field private listener:Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 38
    aget-object v5, p1, v0

    .line 39
    new-instance v6, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 41
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    const-string/jumbo v1, "clientId"

    invoke-virtual {v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v1, "{server_root_url}/v2/project/editor/{project_id}/modules?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    const-string/jumbo v1, "access_token"

    invoke-static {v0, v1, v7}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    const-string/jumbo v1, "{PROJECTID}"

    invoke-virtual {v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 52
    new-instance v0, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 53
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "text/plain; charset=ISO-8859-1"

    const-string/jumbo v3, "8bit"

    const-string/jumbo v4, "image"

    const-string/jumbo v9, "ISO-8859-1"

    .line 54
    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 53
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 55
    const-string/jumbo v1, "image"

    invoke-virtual {v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->getImage()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/octet-stream"

    const-string/jumbo v4, "binary"

    .line 56
    invoke-virtual {v5}, Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;->getImage()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setChunked(Z)V

    .line 59
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v0, v2, v7}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 63
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 72
    :goto_0
    return-object v6

    .line 65
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v6, v10}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 70
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v6, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKAddProjectModuleTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-interface {v1, v0}, Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;->onFailure(Lcom/behance/sdk/exception/BehanceSDKException;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKADDProjectModuleListener;->onSuccess()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKAddProjectModuleAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
