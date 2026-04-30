.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;
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

.field final synthetic val$masterDataDownloadCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->val$masterDataDownloadCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHit(Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 883
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method public onHit([BLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->val$masterDataDownloadCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 888
    return-void
.end method

.method public onMiss()V
    .locals 5

    .prologue
    .line 893
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$102(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 894
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;)V

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$202(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    .line 902
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;)V

    .line 925
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;)V

    .line 950
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 960
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v3, v4, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoSession;->downloadMasterDataForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$102(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 958
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$21;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$200(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V

    goto :goto_0
.end method
