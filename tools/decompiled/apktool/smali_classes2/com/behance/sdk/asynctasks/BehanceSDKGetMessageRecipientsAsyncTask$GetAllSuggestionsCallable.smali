.class Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;
.super Ljava/lang/Object;
.source "BehanceSDKGetMessageRecipientsAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;


# direct methods
.method private constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)V

    return-void
.end method

.method private getSuggestionsFromEveryone()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    const-string/jumbo v2, "clientId"

    iget-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-static {v3}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->access$300(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v2, "{server_root_url}/v2/inbox/senders/exact?{key_client_id_param}={clientId}"

    invoke-static {v2, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string/jumbo v2, "q"

    iget-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-static {v3}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->access$300(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    invoke-static {v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;->access$300(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;)Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetMessageRecipientsTaskParams;->getUserAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpGetRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v2

    .line 152
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "users"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 157
    new-instance v3, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;

    invoke-direct {v3}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;-><init>()V

    .line 159
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 160
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 161
    invoke-virtual {v3, v4}, Lcom/behance/sdk/dto/parser/BehanceUserDTOParser;->parse(Lorg/json/JSONObject;)Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-object v1
.end method


# virtual methods
.method public call()Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->this$0:Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;-><init>(Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask;Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$1;)V

    .line 135
    invoke-direct {p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->getSuggestionsFromEveryone()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;->setResponseObject(Ljava/lang/Object;)V

    .line 136
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$GetAllSuggestionsCallable;->call()Lcom/behance/sdk/asynctasks/BehanceSDKGetMessageRecipientsAsyncTask$CallableResponse;

    move-result-object v0

    return-object v0
.end method
