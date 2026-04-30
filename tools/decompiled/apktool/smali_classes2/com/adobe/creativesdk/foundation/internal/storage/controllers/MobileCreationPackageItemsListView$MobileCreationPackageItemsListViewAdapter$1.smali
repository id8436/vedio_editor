.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;
.super Ljava/lang/Object;
.source "MobileCreationPackageItemsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

.field final synthetic val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$packageItemCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$packageItemCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 267
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method
