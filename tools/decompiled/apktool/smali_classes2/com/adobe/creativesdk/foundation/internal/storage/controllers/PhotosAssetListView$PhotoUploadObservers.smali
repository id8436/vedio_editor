.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;
.super Ljava/lang/Object;
.source "PhotosAssetListView.java"


# instance fields
.field _assetsUploadObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)V
    .locals 1

    .prologue
    .line 331
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$1;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)V

    return-void
.end method


# virtual methods
.method public bindCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    .line 360
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 373
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->addObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 377
    return-void
.end method

.method public resetBinder()V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 337
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;-><init>()V

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    invoke-virtual {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->removeObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 342
    return-void
.end method

.method public unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 381
    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->removeObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0
.end method

.method protected updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method
