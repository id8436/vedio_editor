.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
.super Ljava/lang/Object;
.source "AdobeAssetViewerController.java"


# static fields
.field private static _assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity; = null

.field private static _asset_collection_changed_observer:Ljava/util/Observer; = null

.field private static _asset_selection_changed_observer:Ljava/util/Observer; = null

.field static final indexNotFound:I = -0x1


# instance fields
.field private _dataSource:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;",
            ">;"
        }
    .end annotation
.end field

.field protected _filteredAssetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private _selectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 234
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    .line 235
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    .line 236
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method

.method static synthetic access$000()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static createAssetViewController(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;-><init>()V

    .line 50
    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->generateAssetArray(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 51
    return-object v0
.end method

.method public static createAssetViewController(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->generateAssetArray(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 45
    return-object v0
.end method

.method private static findIndex(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 55
    if-nez p1, :cond_1

    move v1, v2

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 60
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 64
    goto :goto_1

    :cond_2
    move v1, v2

    .line 65
    goto :goto_0
.end method


# virtual methods
.method addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    .line 147
    return-void
.end method

.method containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Z
    .locals 1

    .prologue
    .line 156
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Z

    move-result v0

    return v0
.end method

.method count()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method generateAssetArray(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    .line 80
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->purifiedAssetsToDisplay()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->findIndex(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    .line 89
    :goto_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->generateAssetArray(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 92
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->generateAssetArray(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    goto :goto_0
.end method

.method public generateAssetArray(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    .line 99
    return-void
.end method

.method getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    return-object v0
.end method

.method public declared-synchronized getCurrentAssetViewerActivity()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSelectedAssetCount()I
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->selectedAssetCount()I

    move-result v0

    return v0
.end method

.method getSelectedIndex()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    return v0
.end method

.method public isDataSourceValidForAssetViewerLaunch()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_filteredAssetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSelectModeActive()Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v0

    return v0
.end method

.method loadNextPage()Z
    .locals 2

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadNextPage()Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 151
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    .line 152
    return-void
.end method

.method declared-synchronized resetCurrentAdobeUXAssetViewerActivity()V
    .locals 3

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 220
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 221
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 222
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    .line 226
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCurrentAssetViewerActivity(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;)V
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    .line 166
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    .line 178
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    .line 207
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 210
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 213
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setSelectedIndex(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->_selectedIndex:I

    .line 123
    return-void
.end method
