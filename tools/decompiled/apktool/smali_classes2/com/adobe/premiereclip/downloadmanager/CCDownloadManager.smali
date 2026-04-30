.class public Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"


# static fields
.field private static final MAX_FILE_SIZE:J = 0x40000000L

.field private static final initial_cores:I = 0x3

.field private static instance:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager; = null

.field private static final keep_alive_time:J = 0x1L

.field private static final keep_alive_time_unit:Ljava/util/concurrent/TimeUnit;

.field private static final max_cores:I = 0x3


# instance fields
.field private mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

.field private mComponentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

.field private mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDownloadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDuplicateAssetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProjectSyncUpdateCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->instance:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->keep_alive_time_unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    .line 103
    iput-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    .line 104
    iput-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mProjectSyncUpdateCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;

    .line 105
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 106
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadQueue:Ljava/util/concurrent/BlockingQueue;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    .line 113
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mComponentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mComponentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->assetDownloadCancel(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->assetDownloadSuccess(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->assetDownloadError(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->assetDownloadProgress(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;[B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->photoDownloadSuccess(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;[B)V

    return-void
.end method

.method private declared-synchronized addAssetDownload(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V
    .locals 4

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p0, p3, v2, v3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;D)V

    .line 391
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 394
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :goto_0
    monitor-exit p0

    return-void

    .line 397
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addDownloadEntryToComponentDB(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 248
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 254
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v1, :cond_1

    .line 255
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 265
    :goto_0
    new-instance v5, Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {v5}, Lcom/adobe/sync/database/ComponentInfoModel;-><init>()V

    .line 266
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-virtual {v5, v6}, Lcom/adobe/sync/database/ComponentInfoModel;->setUCID(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5, v3}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetURL(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5, v2}, Lcom/adobe/sync/database/ComponentInfoModel;->setCreatedDate(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v7, "CCDownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sync: sending local path as "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string/jumbo v7, "ComponentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sync: for db entry originalPath "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v5, v4}, Lcom/adobe/sync/database/ComponentInfoModel;->setLocalPath(Ljava/lang/String;)V

    .line 273
    sget-object v2, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/adobe/sync/database/ComponentInfoModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 277
    if-nez v1, :cond_0

    .line 278
    new-instance v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 279
    invoke-virtual {v0, v6}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p2}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, v3}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mComponentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v0, v2}, Lcom/adobe/sync/ComponentManagerHelper;->initComponentDownloadFinish(Lcom/adobe/sync/database/ComponentInfoModel;Lcom/adobe/sync/database/ComponentWaitingModel;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_1
    .catch Lcom/adobe/sync/DBException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :goto_1
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v1, :cond_2

    .line 260
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getHref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_0
.end method

.method private declared-synchronized addDuplicateAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 338
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    const-string/jumbo v1, "CCDownloadManager"

    const-string/jumbo v2, "duplicate asset added"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private assetDownloadCancel(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0, p1, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateAfterDownloadCancel(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V

    .line 456
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->removeAssetDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private assetDownloadError(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0, p3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->removeAssetDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, p3, p2, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateAfterDownloadError(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Landroid/content/Context;)V

    .line 478
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;

    invoke-direct {v1, p0, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method

.method private assetDownloadProgress(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;DLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateProgress(Ljava/lang/String;Ljava/lang/String;D)V

    .line 472
    return-void
.end method

.method private assetDownloadSuccess(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V
    .locals 6

    .prologue
    .line 533
    invoke-direct {p0, p3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getOriginalAssetPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getLastModifiedDateOfAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;

    move-result-object v2

    .line 536
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-direct {p0, p2, v0, v4, v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateProgress(Ljava/lang/String;Ljava/lang/String;D)V

    .line 537
    invoke-direct {p0, p3, p2, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->addDownloadEntryToComponentDB(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Landroid/content/Context;)V

    .line 538
    invoke-direct {p0, p2, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->removeAssetDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    invoke-direct {p0, p3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateAfterDownloadSuccess(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V

    .line 551
    return-void
.end method

.method private cancelCCDownload(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V
    .locals 1

    .prologue
    .line 607
    .line 609
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v0, :cond_1

    .line 610
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelDataRequest()V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v0, :cond_0

    .line 614
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->cancelDownloadRequest()V

    goto :goto_0
.end method

.method private downloadCCAssetInternal(Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;Z)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 640
    iput-object p4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    .line 646
    invoke-direct {p0, p3, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v3

    .line 647
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 650
    const-wide/16 v0, 0x0

    .line 652
    instance-of v2, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v2, :cond_1

    .line 653
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudFileAssetInMediaPicker()V

    move-object v0, p3

    .line 654
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    .line 655
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v7

    .line 656
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getFileSize()J

    move-result-wide v0

    move-object v9, v2

    move-object v2, v7

    move-object v7, v4

    move-object v4, v9

    .line 669
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->rejectIfFileSizeExceedsLimit(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    :cond_0
    :goto_1
    return-void

    .line 660
    :cond_1
    instance-of v2, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v2, :cond_6

    .line 661
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didAttemptImportOfCreativeCloudPhotoAssetInMediaPicker()V

    move-object v0, p3

    .line 662
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    .line 663
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v7

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 665
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getSize()J

    move-result-wide v0

    move-object v9, v2

    move-object v2, v4

    move-object v4, v9

    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    invoke-interface {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didStartDownloadAsset()V

    .line 677
    :cond_3
    if-eqz p5, :cond_4

    .line 678
    invoke-direct {p0, v5, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->sendAssetToProjectIfDownloaded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-direct {p0, v6}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->isAssetDownloadOngoing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    invoke-direct {p0, p3, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->addDuplicateAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V

    goto :goto_1

    .line 687
    :cond_4
    invoke-direct {p0, p1, v6, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->addAssetDownload(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V

    .line 689
    if-eqz v2, :cond_5

    .line 690
    instance-of v0, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;

    if-eqz v0, :cond_0

    .line 693
    iget-object v8, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 736
    :cond_5
    if-eqz v7, :cond_0

    .line 739
    iget-object v8, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_6
    move-object v5, v4

    move-object v7, v4

    move-object v2, v4

    goto/16 :goto_0
.end method

.method private getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;
    .locals 3

    .prologue
    .line 580
    .line 582
    const/4 v0, 0x0

    .line 583
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v1, :cond_1

    .line 584
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getCurrentVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 595
    return-object v0

    .line 587
    :cond_1
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v1, :cond_0

    .line 588
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->instance:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->instance:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    .line 97
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->instance:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    return-object v0
.end method

.method private declared-synchronized getLastModifiedDateOfAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    monitor-enter p0

    const/4 v0, 0x0

    .line 568
    :try_start_0
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v1, :cond_1

    .line 569
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 570
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 576
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 572
    :cond_1
    :try_start_1
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v1, :cond_0

    .line 573
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getOriginalAssetPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v1, :cond_1

    .line 556
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_0
    :goto_0
    return-object v0

    .line 559
    :cond_1
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v1, :cond_0

    .line 560
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized isAssetDownloadOngoing(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 299
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 305
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isDownloaded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mComponentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/sync/DBException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private photoDownloadSuccess(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;[B)V
    .locals 6

    .prologue
    .line 491
    invoke-direct {p0, p3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 492
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-direct {p0, p2, v0, v2, v3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateProgress(Ljava/lang/String;Ljava/lang/String;D)V

    .line 494
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getOriginalAssetPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getLastModifiedDateOfAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;

    move-result-object v3

    .line 498
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :try_start_1
    invoke-virtual {v4, p4}, Ljava/io/FileOutputStream;->write([B)V

    .line 501
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 502
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 503
    const-string/jumbo v4, "CCDownloadManager"

    const-string/jumbo v5, "download done!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-direct {p0, p3, p2, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->addDownloadEntryToComponentDB(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Landroid/content/Context;)V

    .line 505
    invoke-direct {p0, p2, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->removeAssetDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$6;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$6;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    invoke-direct {p0, p3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->updateAfterDownloadSuccess(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 526
    :catch_1
    move-exception v0

    .line 527
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private rejectIfFileSizeExceedsLimit(J)Z
    .locals 3

    .prologue
    .line 620
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$8;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$8;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removeAssetDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 415
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :cond_1
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendAssetToProjectIfDownloaded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mComponentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, p1, p2}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentInfoModel(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;

    invoke-direct {v3, p0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/sync/database/ComponentInfoModel;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 v0, 0x1

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/sync/DBException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateAfterDownloadCancel(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateAfterDownloadError(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 372
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 375
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_0
    iget-object v4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mCCDownloadCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->downloadCCAssetInternal(Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_1
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateAfterDownloadSuccess(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getOriginalAssetPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getLastModifiedDateOfAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 355
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v5, "got duplicate!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDuplicateAssetMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_1
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "duplicate not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateProgress(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 438
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;

    .line 441
    iput-wide p3, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->progress:D

    .line 442
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_0
    monitor-exit p0

    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public areAllAssetsLargerThanMaxFileSize(Ljava/util/ArrayList;Landroid/content/Context;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 130
    invoke-direct {p0, v0, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 132
    const/4 v1, 0x0

    .line 133
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v3, :cond_1

    .line 134
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetDetailsFromAdobeSelectionAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    move-result-object v0

    .line 139
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getFileSize()J

    move-result-wide v0

    const-wide/32 v4, 0x40000000

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_1
    return v0

    .line 136
    :cond_1
    instance-of v3, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v3, :cond_3

    .line 137
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetDetailsFromAdobeSelectionPhotoAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public assetsDownloading()Z
    .locals 1

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadProjectKeys()Ljava/util/Set;

    move-result-object v0

    .line 813
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 814
    const/4 v0, 0x1

    .line 816
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public assetsDownloadingForProjectKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadProjectKeys()Ljava/util/Set;

    move-result-object v0

    .line 805
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x1

    .line 808
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelOngoingDownloads(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 182
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 185
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->cancelCCDownload(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$1;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_1
    return-void
.end method

.method public downloadCCAsset(Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;)V
    .locals 6

    .prologue
    .line 603
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->downloadCCAssetInternal(Ljava/lang/String;Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;Z)V

    .line 604
    return-void
.end method

.method public getDownloadProjectKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProjectDownloadProgress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 205
    const-wide/16 v2, 0x0

    .line 206
    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;

    iget-wide v6, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->progress:D

    add-double/2addr v2, v6

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 211
    goto :goto_0

    .line 212
    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v0, "0%"

    .line 221
    :goto_1
    return-object v0

    .line 214
    :cond_1
    int-to-double v0, v1

    div-double v0, v2, v0

    .line 215
    double-to-int v0, v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 221
    :cond_2
    const-string/jumbo v0, "0%"

    goto :goto_1
.end method

.method public getTotalDownloadSize(Ljava/util/ArrayList;Landroid/content/Context;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;",
            ">;",
            "Landroid/content/Context;",
            ")J"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 151
    invoke-direct {p0, v0, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadPath(Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Landroid/content/Context;)Ljava/net/URI;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 153
    const/4 v1, 0x0

    .line 154
    instance-of v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v8, :cond_0

    .line 155
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetDetailsFromAdobeSelectionAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    move-result-object v0

    .line 160
    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v7}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->isAssetDownloadOngoing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getLastModifiedDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->isDownloaded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    add-long/2addr v2, v4

    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    .line 163
    goto :goto_0

    .line 157
    :cond_0
    instance-of v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v8, :cond_3

    .line 158
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetDetailsFromAdobeSelectionPhotoAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public declared-synchronized getTotalDownloadSizeOfOngoingDownloads()J
    .locals 7

    .prologue
    .line 310
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 313
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;

    .line 314
    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 315
    const/4 v1, 0x0

    .line 316
    instance-of v6, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    if-eqz v6, :cond_1

    .line 317
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetDetailsFromAdobeSelectionAssetFile(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;

    move-result-object v0

    .line 322
    :goto_1
    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getFileSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_2
    move-wide v2, v0

    .line 325
    goto :goto_0

    .line 319
    :cond_1
    instance-of v6, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    if-eqz v6, :cond_4

    .line 320
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/AssetDetails;->getAssetDetailsFromAdobeSelectionPhotoAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;)Lcom/adobe/premiereclip/downloadmanager/AssetDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 327
    :cond_2
    monitor-exit p0

    return-wide v2

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public isDownloadPending(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProjectSyncUpdateListener(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->mProjectSyncUpdateCallback:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;

    .line 169
    return-void
.end method
