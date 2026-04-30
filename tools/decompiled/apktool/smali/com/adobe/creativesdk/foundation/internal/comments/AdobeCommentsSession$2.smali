.class Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;
.super Ljava/lang/Object;
.source "AdobeCommentsSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

.field final synthetic val$commentsCallback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;

.field final synthetic val$resource:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;->val$commentsCallback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;->val$resource:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;->val$commentsCallback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;->val$resource:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;->commentsFromJSONData(Lorg/json/JSONArray;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;->onSuccess(Lcom/adobe/creativesdk/foundation/internal/comments/models/AdobeAssetCommentsDataSource;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;->val$commentsCallback:Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;->onError()V

    .line 266
    return-void
.end method
