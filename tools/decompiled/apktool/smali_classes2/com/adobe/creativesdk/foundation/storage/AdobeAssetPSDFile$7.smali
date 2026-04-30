.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$callBackRequiredForHandler:Landroid/os/Handler;

.field final synthetic val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field final synthetic val$layerCompID:Ljava/lang/Integer;

.field final synthetic val$layerID:Ljava/lang/Integer;

.field final synthetic val$renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerID:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerCompID:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$cacheKey:Ljava/lang/String;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 601
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 7

    .prologue
    .line 604
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;

    invoke-direct {v5, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;[B)V

    .line 632
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->resourceItem()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->internalID:Ljava/lang/String;

    const-string/jumbo v2, "modified-data"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.storage"

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDictionaryFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 633
    return-void
.end method

.method public onMiss()V
    .locals 8

    .prologue
    .line 637
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerID:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$layerCompID:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$renditionType:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$cacheKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$dataDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$7;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->getRenditionFromServerForLayer(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 640
    return-void
.end method
