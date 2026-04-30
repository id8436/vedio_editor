.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;
.super Ljava/lang/Object;
.source "MobileCreationPackageCollectionListView.java"

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
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$packageCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->getPages()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$packageCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$pages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$packageCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$pages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1;->val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$PackageCollectionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 498
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionListView$MobileCreationPackageListViewAdapter$1$1;->onCompletion(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
