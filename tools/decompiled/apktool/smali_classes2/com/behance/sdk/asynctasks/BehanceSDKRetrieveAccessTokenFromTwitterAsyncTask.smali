.class public Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final GET_TWITTER_USERNAME_API:Ljava/lang/String; = "https://api.twitter.com/1.1/account/settings.json"

.field private static final OAUTH_VERIFIER_FROM_BROWSER:Ljava/lang/String; = "oauth_verifier"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private consumer:Loauth/signpost/OAuthConsumer;

.field private context:Landroid/content/Context;

.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;

.field private provider:Loauth/signpost/OAuthProvider;

.field private result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

.field private socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

.field private socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;

    .line 60
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v1, p2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    .line 62
    iput-object p2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->context:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private retrieveAccessTokenFromTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->provider:Loauth/signpost/OAuthProvider;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :goto_1
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {v1, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 121
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {v1, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 124
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 128
    new-instance v0, Loauth/signpost/exception/OAuthNotAuthorizedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loauth/signpost/exception/OAuthNotAuthorizedException;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 119
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private retrieveUserNameFromTwitter()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 92
    .line 95
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v0

    const-string/jumbo v1, "https://api.twitter.com/1.1/account/settings.json"

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-virtual {v1}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    .line 99
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "screen_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 103
    :cond_0
    sget-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Unexpected return code while retrieving user name from twitter. [return code - %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v6

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem retrieving user name"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-direct {v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    .line 68
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 69
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;->getAuthURL()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;->getConsumerSecret()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v2, v0}, Lcom/behance/sdk/OAuth/TwitterClient;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/OAuth/TwitterClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/OAuth/TwitterClient;->getOAuthProvider()Loauth/signpost/OAuthProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->provider:Loauth/signpost/OAuthProvider;

    .line 73
    invoke-static {v2, v0}, Lcom/behance/sdk/OAuth/TwitterClient;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/OAuth/TwitterClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/OAuth/TwitterClient;->getOAuthConsumer()Loauth/signpost/OAuthConsumer;

    move-result-object v3

    iput-object v3, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    .line 74
    invoke-direct {p0, v1, v2, v0}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->retrieveAccessTokenFromTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Twitter Access token or access secret is empty"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    .line 88
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v1}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserAuthToken(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->consumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v1}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setAdditionalData(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->retrieveUserNameFromTwitter()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;->setUserId(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    iget-object v1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->socialAccountDTO:Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    iget-object v2, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->updateAccount(Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;Landroid/content/Context;)Z

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->result:Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;->onRetrieveAccessTokenFromTwitterFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveAccessTokenFromTwitterTaskListener;->onRetrieveAccessTokenFromTwitterSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveAccessTokenFromTwitterAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveAccessTokenFromTwitterTaskResult;)V

    return-void
.end method
