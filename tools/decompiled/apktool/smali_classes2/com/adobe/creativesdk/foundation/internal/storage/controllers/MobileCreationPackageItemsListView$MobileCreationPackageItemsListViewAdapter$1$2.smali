.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$2;
.super Ljava/lang/Object;
.source "MobileCreationPackageItemsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$packageItemCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 265
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
