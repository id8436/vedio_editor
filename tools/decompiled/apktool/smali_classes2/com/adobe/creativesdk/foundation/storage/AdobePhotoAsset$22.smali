.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

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
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$downloadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$rendition:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$downloadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$cacheKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$rendition:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 1009
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$downloadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

.method public onMiss()V
    .locals 6

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$102(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1020
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;)V

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$202(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 1028
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;)V

    .line 1050
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;)V

    .line 1075
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1086
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$rendition:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->downloadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$102(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1084
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$200(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method
