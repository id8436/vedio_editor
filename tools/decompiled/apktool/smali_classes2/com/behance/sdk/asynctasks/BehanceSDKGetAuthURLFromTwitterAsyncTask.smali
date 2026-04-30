.class public Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKGetAuthURLFromTwitterAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;",
        "Ljava/lang/Void;",
        "Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;

    .line 41
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 45
    new-instance v2, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;

    invoke-direct {v2}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;-><init>()V

    .line 46
    const/4 v0, 0x0

    .line 47
    aget-object v1, p1, v7

    .line 48
    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;->getConsumerKey()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v3, v1}, Lcom/behance/sdk/OAuth/TwitterClient;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/OAuth/TwitterClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/OAuth/TwitterClient;->getOAuthProvider()Loauth/signpost/OAuthProvider;

    move-result-object v4

    .line 52
    invoke-static {v3, v1}, Lcom/behance/sdk/OAuth/TwitterClient;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/OAuth/TwitterClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/OAuth/TwitterClient;->getOAuthConsumer()Loauth/signpost/OAuthConsumer;

    move-result-object v1

    .line 54
    :try_start_0
    const-string/jumbo v3, "com.behance.behance://oauth.callback"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v1, v3, v5}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 71
    :goto_0
    sget-object v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Auth URL returned from twitter is %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v2, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setAuthURL(Ljava/lang/String;)V

    .line 73
    return-object v2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v2, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 57
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    invoke-virtual {v2, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 60
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61
    :catch_2
    move-exception v1

    .line 62
    invoke-virtual {v2, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 63
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 64
    :catch_3
    move-exception v1

    .line 65
    invoke-virtual {v2, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 66
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 67
    :catch_4
    move-exception v1

    .line 68
    invoke-virtual {v2, v6}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setExceptionOccurred(Z)V

    .line 69
    invoke-virtual {v2, v1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->setException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->doInBackground([Lcom/behance/sdk/asynctask/params/BehanceSDKGetAuthURLFromTwitterAsyncTaskParams;)Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->isExceptionOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;->onGetAuthURLFromTwitterFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;)V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->listener:Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAuthURLFromTwitterTaskListener;->onGetAuthURLFromTwitterSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAuthURLFromTwitterAsyncTask;->onPostExecute(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;)V

    return-void
.end method
