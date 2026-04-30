.class public Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKEditProfileAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;

    .line 47
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;
    .locals 14

    .prologue
    const/16 v13, 0xc8

    const/4 v12, 0x0

    const/4 v6, 0x1

    .line 51
    new-instance v7, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;

    invoke-direct {v7}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;-><init>()V

    .line 53
    aget-object v2, p1, v12

    .line 57
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string/jumbo v1, "clientId"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "{server_root_url}/v2/profile/editor?{key_client_id_param}={clientId}"

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v3, "token_type"

    const-string/jumbo v4, "device_token"

    invoke-direct {v1, v3, v4}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v9

    .line 66
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "first_name"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getLastName()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "last_name"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getOccupation()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "occupation"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_2
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getCompany()Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "company"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getWebsite()Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "website"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_4
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 88
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "country"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_5
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getState()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 92
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "state"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_6
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 96
    new-instance v3, Lcom/behance/sdk/network/BehanceNameValuePair;

    const-string/jumbo v4, "city"

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/network/BehanceNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_7
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v8, v0, v3, v9}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Update Profile server response - %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "http_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    const-string/jumbo v3, "updated"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    sget-object v3, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "Update Profile [HTTP Response code - %s] [Updated - %s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-interface {v3, v4, v5}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    if-ne v0, v13, :cond_a

    .line 109
    if-ne v1, v6, :cond_8

    .line 110
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setProfileUpdateFailed(Z)V

    .line 118
    :cond_8
    :goto_0
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getProfileImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getImage()Lcom/behance/sdk/project/modules/ImageModule;

    move-result-object v1

    .line 120
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 121
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_b

    .line 126
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 127
    new-instance v0, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 128
    const-string/jumbo v1, "image"

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getImage()Lcom/behance/sdk/project/modules/ImageModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/project/modules/ImageModule;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/octet-stream"

    const-string/jumbo v4, "binary"

    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayInputStream;)V

    .line 129
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v0, v2, v9}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPatchRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 130
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 131
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "http_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 133
    const-string/jumbo v0, "updated"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 146
    :goto_1
    if-ne v1, v13, :cond_c

    .line 147
    if-ne v0, v6, :cond_9

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setProfileAvatarUpdateFailed(Z)V

    .line 165
    :cond_9
    :goto_2
    return-object v7

    .line 113
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setExceptionOccurred(Z)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setProfileUpdateFailed(Z)V

    .line 115
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Invalid server response saving user profile"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->addException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Unknown problem saving user profile"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v7, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setExceptionOccurred(Z)V

    .line 162
    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->addException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 135
    :cond_b
    :try_start_1
    const-string/jumbo v1, "client_id"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v1, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 137
    new-instance v4, Lcom/behance/sdk/network/HttpPatch;

    invoke-direct {v4, v1}, Lcom/behance/sdk/network/HttpPatch;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v5, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v1, v5}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 139
    const-string/jumbo v5, "image"

    new-instance v8, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->getImage()Lcom/behance/sdk/project/modules/ImageModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/project/modules/ImageModule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v5, v8}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 140
    invoke-virtual {v4, v1}, Lcom/behance/sdk/network/HttpPatch;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 141
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    move v1, v0

    move v0, v6

    .line 143
    goto :goto_1

    .line 151
    :cond_c
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setProfileAvatarUpdateFailed(Z)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setExceptionOccurred(Z)V

    .line 153
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Invalid server response saving user profile avatar"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->addException(Ljava/lang/Exception;)V

    goto :goto_2

    .line 156
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->setProfileAvatarUpdateFailed(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;->onEditProfileTaskFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->taskHandler:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;->onEditProfileTaskSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V

    return-void
.end method
