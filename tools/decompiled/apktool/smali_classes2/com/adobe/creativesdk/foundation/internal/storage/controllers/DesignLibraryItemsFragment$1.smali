.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;
.super Ljava/lang/Object;
.source "DesignLibraryItemsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->_designLibraryItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$DesignLibraryItemsDataSourceDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$DesignLibraryItemsDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    goto :goto_0
.end method

.method public handleSyncFinished()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->_designLibraryItemsListViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$DesignLibraryItemsDataSourceDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$DesignLibraryItemsDataSourceDelegate;->didFinishLoading()V

    goto :goto_0
.end method
