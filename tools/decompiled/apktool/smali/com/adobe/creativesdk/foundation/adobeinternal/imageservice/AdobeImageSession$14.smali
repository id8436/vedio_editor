.class Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;
.super Ljava/lang/Object;
.source "AdobeImageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

.field final synthetic val$fileType:Ljava/lang/String;

.field final synthetic val$imageRequestCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

.field final synthetic val$output:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)V
    .locals 0

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$output:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$fileType:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$imageRequestCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$imageRequestCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 1666
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1610
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 1611
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x12c

    if-gt v0, v2, :cond_1

    .line 1614
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1615
    if-eqz v0, :cond_0

    .line 1617
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$output:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    const-string/jumbo v2, "outputs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$fileType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "if-match"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1623
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$imageRequestCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;)V

    .line 1661
    :goto_1
    return-void

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1624
    :catch_1
    move-exception v0

    .line 1625
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1626
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$imageRequestCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    new-instance v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_1

    .line 1633
    :cond_1
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1634
    if-eqz v0, :cond_3

    .line 1635
    const-string/jumbo v2, "error-response"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1636
    if-eqz v0, :cond_4

    .line 1637
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1638
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    const-string/jumbo v2, "bad_request"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1641
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-static {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 1658
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->val$imageRequestCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_1

    .line 1644
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-static {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    goto :goto_2

    .line 1649
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    const-string/jumbo v2, "An unexpected response was returned"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_2

    .line 1652
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1653
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$14;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    sget-object v2, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    const-string/jumbo v3, "An unexpected response was returned"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    .line 1655
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
