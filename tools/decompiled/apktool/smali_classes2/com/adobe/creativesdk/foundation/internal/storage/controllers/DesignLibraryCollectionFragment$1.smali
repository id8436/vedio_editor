.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;
.super Ljava/lang/Object;
.source "DesignLibraryCollectionFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    .line 365
    :cond_0
    return-void
.end method

.method public handleSyncFinished()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionFragment$DesignLibraryCollectionsDataSourceDelegate;->didFinishLoading()V

    .line 359
    :cond_0
    return-void
.end method
