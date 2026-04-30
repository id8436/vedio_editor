.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$2;
.super Ljava/lang/Object;
.source "MobileCreationPackageItemsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
