.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;
.source "CCFilesProviderListView.java"


# static fields
.field public static T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView$CCFilesProviderListItemsAdapater;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected disableController()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->disableController()V

    .line 35
    return-void
.end method

.method protected enableController()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->enableController()V

    .line 30
    return-void
.end method

.method public getSelectedAssets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->getSelectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected handleListItemClick(I)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-object v1, v0

    .line 41
    :goto_0
    if-nez v1, :cond_2

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 45
    instance-of v2, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->clearSelection()V

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesProviderListView;->getFolderNavigationCommand(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V

    goto :goto_1
.end method
