.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$1;
.super Ljava/lang/Object;
.source "MobileCreationPackageItemsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment;->setContainerFragmentTitle(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationPackageItemsDataSourceWrapper;->_delegate:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageItemsFragment$MobileCreationsPackageCollectionsDataSourceDelegate;->didFinishLoading()V

    goto :goto_0
.end method
