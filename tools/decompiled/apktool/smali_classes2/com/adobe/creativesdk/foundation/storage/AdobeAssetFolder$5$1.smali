.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;[B)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 730
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    const-string/jumbo v0, "etag"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->val$data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 739
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    invoke-interface {v1, v2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 743
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 749
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->GUID:Ljava/lang/String;

    const-string/jumbo v2, "com.adobe.cc.storage"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeSetWithGUID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 750
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0
.end method

.method public onMiss()V
    .locals 3

    .prologue
    .line 756
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$5;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 757
    return-void
.end method
