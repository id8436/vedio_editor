.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;[B)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 604
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 8
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
    .line 608
    const-string/jumbo v0, "md5"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 611
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->md5Hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->val$data:[B

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    const-string/jumbo v2, "com.adobe.cc.storage"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeSetWithGUID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerID:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerCompID:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$cacheKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v7, v7, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getRenditionFromServerForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    goto :goto_0
.end method

.method public onMiss()V
    .locals 8

    .prologue
    .line 627
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerID:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerCompID:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$cacheKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;

    iget-object v7, v7, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getRenditionFromServerForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 629
    return-void
.end method
