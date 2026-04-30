.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1029
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 7

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->handleCommonDownloadCompletionBookKeeping()V

    .line 1033
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$downloadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 1035
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->_GUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$cacheKey:Ljava/lang/String;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 1038
    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.photo"

    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2$1;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;)V

    move-object v1, p1

    .line 1035
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addData([BLjava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 1047
    return-void
.end method
