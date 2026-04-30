.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;
.super Ljava/lang/Object;
.source "AdobePhotoAssetViewerController.java"


# static fields
.field private static _assetList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;"
        }
    .end annotation
.end field

.field private static _assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity; = null

.field private static _asset_collection_changed_observer:Ljava/util/Observer; = null

.field private static _asset_selection_changed_observer:Ljava/util/Observer; = null

.field private static _dataSource:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private static _selectedIndex:I = 0x0

.field private static final indexNotFound:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    .line 185
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    .line 186
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    .line 188
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .prologue
    .line 19
    sput p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_selectedIndex:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static createPhotoAssetViewerController(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;-><init>()V

    .line 44
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->generateAssetArray(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 45
    return-object v0
.end method

.method private static findIndex(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 23
    if-nez p1, :cond_1

    move v1, v2

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 28
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->isEqualToAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 32
    goto :goto_1

    :cond_2
    move v1, v2

    .line 33
    goto :goto_0
.end method

.method static generateAssetArray(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->getAssets()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    .line 52
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->findIndex(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)I

    move-result v0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_selectedIndex:I

    .line 53
    return-void
.end method

.method static declared-synchronized setCurrentAssetViewerActivity(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;)V
    .locals 4

    .prologue
    .line 129
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    .line 130
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController$1;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController$1;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    .line 142
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController$2;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController$2;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    .line 159
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 162
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 165
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobePhotoAssetsDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setSelectedIndex(I)V
    .locals 0

    .prologue
    .line 76
    sput p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_selectedIndex:I

    .line 77
    return-void
.end method


# virtual methods
.method addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 0

    .prologue
    .line 101
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->addSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 102
    return-void
.end method

.method containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Z
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Z

    move-result v0

    return v0
.end method

.method count()I
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    return-object v0
.end method

.method public declared-synchronized getCurrentAssetViewerActivity()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRenditionForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->getRenditionForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 126
    return-void
.end method

.method getSelectedAssetCount()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->selectedAssetCount()I

    move-result v0

    return v0
.end method

.method getSelectedIndex()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_selectedIndex:I

    return v0
.end method

.method getTotalAssetsCount()I
    .locals 2

    .prologue
    .line 88
    const/4 v1, -0x1

    .line 89
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->getTotalAssetsCount()I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isDataSourceValidForAssetViewerLaunch()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMultiSelectModeActive()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v0

    return v0
.end method

.method loadNextPage()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_dataSource:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;->loadNextPageOfData()V

    .line 69
    :cond_0
    return-void
.end method

.method removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 0

    .prologue
    .line 106
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 107
    return-void
.end method

.method declared-synchronized resetCurrentAdobeUXAssetViewerActivity()V
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetAssetCountChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 172
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageSelectedAssetMultiselectModeDidChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 173
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobePhotoAssetsDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_assetViewerActivity:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;

    .line 175
    const/4 v0, -0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_selectedIndex:I

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_selection_changed_observer:Ljava/util/Observer;

    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->_asset_collection_changed_observer:Ljava/util/Observer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
