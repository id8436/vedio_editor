.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;
.super Ljava/lang/Object;
.source "DesignLibraryItemsListView.java"


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

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)V
    .locals 1

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$1;)V
    .locals 0

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)V

    return-void
.end method


# virtual methods
.method public bindCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 3

    .prologue
    .line 1584
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    .line 1585
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$2;

    invoke-direct {v0, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 1592
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->access$2200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->addObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    .line 1594
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 1596
    return-void
.end method

.method public resetBinder()V
    .locals 4

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

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

    .line 1562
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;-><init>()V

    .line 1563
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    .line 1564
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->access$2200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    invoke-virtual {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->removeObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1567
    return-void
.end method

.method public unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V
    .locals 3

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 1600
    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->_assetsUploadObservers:Ljava/util/Map;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->access$2200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->removeObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0
.end method

.method protected updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1578
    return-void
.end method
