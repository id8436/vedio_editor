.class public Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKCreateProjectDraftAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final FIELDS_KEY:Ljava/lang/String; = "fields"

.field private static final LICENSE_KEY:Ljava/lang/String; = "license"

.field private static final MATURE_CONTENT_KEY:Ljava/lang/String; = "mature_content"

.field private static final MODULE_IMAGE_KEY:Ljava/lang/String; = "image"

.field public static final PROJECT:Ljava/lang/String; = "project"

.field public static final PROJECT_ID:Ljava/lang/String; = "id"

.field private static final TAGS_KEY:Ljava/lang/String; = "tags"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"


# instance fields
.field private listener:Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;

    .line 47
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;",
            ")",
            "Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 52
    new-instance v7, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-direct {v7}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;-><init>()V

    .line 54
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p1, v1

    .line 55
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    const-string/jumbo v3, "clientId"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v3, "{server_root_url}/v2/project/editor?{key_client_id_param}={clientId}"

    invoke-static {v3, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 61
    if-eqz v8, :cond_8

    .line 62
    const-string/jumbo v3, "access_token"

    invoke-static {v1, v3, v8}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 66
    :goto_0
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;->getBehanceSDKProjectDraftOptions()Lcom/behance/sdk/BehanceSDKProjectDraftOptions;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_5

    .line 69
    new-instance v0, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setChunked(Z)V

    .line 72
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    const-string/jumbo v3, "title"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    const-string/jumbo v5, "8bit"

    const-string/jumbo v9, "UTF-8"

    .line 75
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 74
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 78
    :cond_0
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getProjectDescription()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    const-string/jumbo v3, "description"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    const-string/jumbo v5, "8bit"

    const-string/jumbo v9, "UTF-8"

    .line 81
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 80
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 84
    :cond_1
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getProjectTags()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    const-string/jumbo v3, "tags"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    const-string/jumbo v5, "8bit"

    const-string/jumbo v9, "UTF-8"

    .line 87
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 91
    :cond_2
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getCreativeFields()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    const-string/jumbo v3, "fields"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    const-string/jumbo v5, "8bit"

    const-string/jumbo v9, "UTF-8"

    .line 94
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 97
    :cond_3
    const-string/jumbo v1, ""

    .line 98
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->isProjectContainsAdultContent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    const-string/jumbo v1, "1"

    .line 103
    :goto_1
    const-string/jumbo v3, "mature_content"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    const-string/jumbo v5, "8bit"

    const-string/jumbo v9, "UTF-8"

    .line 104
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 103
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 106
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getProjectCopyrightSettings()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    const-string/jumbo v3, "license"

    const-string/jumbo v4, "text/plain; charset=UTF-8"

    const-string/jumbo v5, "8bit"

    .line 109
    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 108
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 112
    :cond_4
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->getCoverImage()Ljava/io/File;

    move-result-object v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    const-string/jumbo v1, "image"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/octet-stream"

    const-string/jumbo v4, "binary"

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v0, v2, v8}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_7

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 121
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    .line 133
    :goto_2
    return-object v7

    .line 101
    :cond_6
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 123
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 124
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "project"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 127
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v7, v10}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setExceptionOccurred(Z)V

    .line 131
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->setException(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_8
    move-object v6, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKCreateProjectDraftTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-interface {v1, v0}, Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;->onFailure(Lcom/behance/sdk/exception/BehanceSDKException;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->listener:Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/behance/sdk/IBehanceSDKCreateProjectDraftListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKCreateProjectDraftAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKAsyncTaskResultWrapper;)V

    return-void
.end method
