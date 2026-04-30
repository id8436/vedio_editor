.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;
.super Ljava/lang/Object;
.source "PhotosAssetListView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

.field final synthetic val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

.field final synthetic val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 363
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 365
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_0

    .line 366
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_assetGUIDonSuccessFulUpload:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_assetGUIDonSuccessFulUpload:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendype:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView;->addAssetRenditionToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Z

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers$2;->val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    invoke-virtual {v0, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetListView$PhotoUploadObservers;->updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 370
    return-void
.end method
