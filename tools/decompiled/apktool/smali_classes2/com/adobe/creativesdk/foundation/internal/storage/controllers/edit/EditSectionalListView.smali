.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;
.source "EditSectionalListView.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private _assetsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;"
        }
    .end annotation
.end field

.field private controllerCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private isControllerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isControllerEnabled:Z

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->addSelectedAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->removeSelectedAsset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;)Z
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->controllerState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private addSelectedAsset(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->T:Ljava/lang/String;

    const-string/jumbo v1, "addSelectedAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->handleAssetCountEvent()V

    .line 58
    return-void
.end method

.method private controllerState()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isControllerEnabled:Z

    return v0
.end method

.method private handleAssetCountEvent()V
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->T:Ljava/lang/String;

    const-string/jumbo v1, "handleAssetCountEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->controllerCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->controllerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;->handleNoAssetSelection()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 72
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;->handleSingleAssetSelection()V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;->handleMultipleAssetSelection(I)V

    goto :goto_0
.end method

.method private removeSelectedAsset(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->handleAssetCountEvent()V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->T:Ljava/lang/String;

    const-string/jumbo v1, "clearSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->refreshDueToDataChange()V

    .line 46
    return-void
.end method

.method protected createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView$CCFilesAssetsEditSectionalListItemsAdapater;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected disableController()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isControllerEnabled:Z

    .line 36
    return-void
.end method

.method protected enableController()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->isControllerEnabled:Z

    .line 32
    return-void
.end method

.method public getSelectedAssets()Ljava/util/ArrayList;
    .locals 3
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
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    .line 90
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method

.method protected handleListItemClick(I)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected handleListItemLongClick(I)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected isAssetSelected(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_assetsList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->performInitialization(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public setControllerCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewEditFragmentControllerCallback;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/EditSectionalListView;->controllerCallback:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method
