.class public Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final COM_ADOBE_AUTH_LINKING_STATUS:Ljava/lang/String; = "com.adobe.auth.linking-status"

.field private static final COM_ADOBE_AUTH_LINKING_WORKFLOW_URL:Ljava/lang/String; = "com.adobe.auth.linking-workflow-url"

.field private static final NOT_LINKED:Ljava/lang/String; = "not-linked"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private caller:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->caller:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;

    .line 59
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 63
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;-><init>()V

    .line 65
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getAdobeUserId()Ljava/lang/String;

    move-result-object v1

    .line 70
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string/jumbo v4, "user_id"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v4, "clientId"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v4, "{server_root_url}/v2/users/{user_id}?api_key={clientId}&user_token={usertoken}"

    invoke-static {v4, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 76
    sget-object v4, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v5, "Get user detail URL: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v4

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    sget-object v4, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v5, "Get user detail response: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "http_code"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 84
    const/16 v0, 0xc8

    if-ne v5, v0, :cond_0

    .line 85
    new-instance v0, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;

    invoke-direct {v0}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;-><init>()V

    .line 86
    const-string/jumbo v1, "user"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;->parse(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    :goto_0
    move-object v0, v2

    .line 126
    :goto_1
    return-object v0

    .line 88
    :cond_0
    const/16 v0, 0x193

    if-ne v5, v0, :cond_3

    .line 89
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v4, "HTTP 403 Response received when trying to fetch User Details. [User ID - %s] [Response code - %d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 89
    invoke-interface {v0, v4, v6}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v3}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 92
    const/4 v0, 0x0

    .line 93
    if-eqz v1, :cond_1

    .line 94
    const-string/jumbo v0, "com.adobe.auth.linking-status"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    :cond_1
    if-eqz v0, :cond_2

    .line 97
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "not-linked"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string/jumbo v0, "com.adobe.auth.linking-workflow-url"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    if-eqz v0, :cond_2

    .line 100
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 101
    new-instance v3, Lcom/behance/sdk/exception/BehanceSDKException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User Account Not Linked "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v1, 0x0

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->setException(Ljava/lang/Exception;)V

    .line 103
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Link URL for the account is. [URL - %s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 104
    goto/16 :goto_1

    .line 109
    :cond_2
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Header Values for the link status/link-url is empty"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    const-string/jumbo v1, "Header Values for the link status/link-url is empty"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->setException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem retrieving Behance User details using Adobe ID from server"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    invoke-interface {v1, v0}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;)V

    .line 120
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 113
    :cond_3
    :try_start_1
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Unexpected HTTP Response code when trying to fetch User Details. [User ID - %s] [Response code - %d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v1, 0x1

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    .line 113
    invoke-interface {v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid server response code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem retrieving Behance User details using Adobe ID from server"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v1, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v1, v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->setException(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->cancel(Z)Z

    .line 133
    return-void
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "RetrieveBehanceUserDetailsUsingAdobeIDTask onPost executed. Caller success is being invoked."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->caller:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;->onRetrieveBehanceUserDetailsSuccess(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "RetrieveBehanceUserDetailsUsingAdobeIDTask onPost executed. Caller failure is being invoked."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->caller:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;->onRetrieveBehanceUserDetailsFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;)V

    return-void
.end method
