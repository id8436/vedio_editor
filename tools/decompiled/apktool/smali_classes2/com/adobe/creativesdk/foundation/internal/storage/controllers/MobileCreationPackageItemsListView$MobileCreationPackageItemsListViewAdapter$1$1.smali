.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;
.super Ljava/lang/Object;
.source "MobileCreationPackageItemsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$packageItemCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->getPage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$packageItemCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1;->val$packageItemCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$PackageItemCellViewHolder;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsListView$MobileCreationPackageItemsListViewAdapter$1$1;->onCompletion(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
