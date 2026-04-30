.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;
.super Ljava/lang/Object;
.source "DesignLibraryItemsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

.field final synthetic val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

.field final synthetic val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setUploadStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    .line 1575
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->val$uploadAssetCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers$1;->val$uploadAssetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getProgress()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setUploadProgres(D)V

    .line 1576
    return-void
.end method
