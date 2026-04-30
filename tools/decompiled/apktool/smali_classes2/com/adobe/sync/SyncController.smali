.class public Lcom/adobe/sync/SyncController;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;


# static fields
.field public static final ANALYTICSKEY_SYNC_ACTION_DELETE:Ljava/lang/String; = "ccSyncActionType:delete"

.field public static final ANALYTICSKEY_SYNC_ACTION_PULL:Ljava/lang/String; = "ccSyncActionType:pull"

.field public static final ANALYTICSKEY_SYNC_ACTION_PUSH:Ljava/lang/String; = "ccSyncActionType:push"

.field private static final INT64_MAX:J = 0x7fffffffffffffffL

.field private static final PULLED_DIRECTORY_PREFIX:Ljava/lang/String; = "_pulled"

.field private static fixedDelay:Ljava/lang/Integer;

.field private static maxRandomDelay:Ljava/lang/Integer;

.field private static storageScheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;


# instance fields
.field private componentManager:Lcom/adobe/sync/ComponentManager;

.field private componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

.field private compositeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;"
        }
    .end annotation
.end field

.field private compositesToOverwrite:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCompositeIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCompositesToBeDeleted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field protected mDeletedProjectDirectory:Ljava/lang/String;

.field protected mPulledProjectDirectory:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field protected mRootDirectory:Ljava/lang/String;

.field private mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field private mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

.field protected mSyncGroupName:Ljava/lang/String;

.field private pausedComposites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pullRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation
.end field

.field private pushRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation
.end field

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 160
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    sput-object v0, Lcom/adobe/sync/SyncController;->storageScheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/sync/SyncController;->fixedDelay:Ljava/lang/Integer;

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/sync/SyncController;->maxRandomDelay:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/sync/SyncController$ISyncControllerInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->compositeCache:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->pushRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->pullRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->pausedComposites:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->compositesToOverwrite:Ljava/util/HashSet;

    .line 190
    iput-object p2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    .line 191
    iput-object p7, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    .line 193
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 194
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    .line 195
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerPaused:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->setMode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;)V

    .line 196
    new-instance v0, Lcom/adobe/sync/ComponentManager;

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-direct {v0, p3, v1, v2}, Lcom/adobe/sync/ComponentManager;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    .line 197
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->setComponentManager(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentManagerProtocol;)V

    .line 198
    iput-object p3, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositesToBeDeleted:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->mRandom:Ljava/util/Random;

    .line 202
    iput-object p4, p0, Lcom/adobe/sync/SyncController;->mPulledProjectDirectory:Ljava/lang/String;

    .line 203
    iput-object p5, p0, Lcom/adobe/sync/SyncController;->mDeletedProjectDirectory:Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lcom/adobe/sync/SyncController;->mSyncGroupName:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->initializeCompositeLoader()V

    .line 208
    invoke-virtual {p0, p3}, Lcom/adobe/sync/SyncController;->populateCompositeLocalPathMap(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p5}, Lcom/adobe/sync/SyncController;->populateCompositeLocalPathMap(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p5}, Lcom/adobe/sync/SyncController;->populateDeletedCompositeLocalPathMap(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, p6}, Lcom/adobe/sync/SyncController;->setNetworkPreference(Z)V

    .line 215
    invoke-static {}, Lcom/adobe/sync/ComponentManagerHelper;->getInstance()Lcom/adobe/sync/ComponentManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    .line 216
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManagerHelper;->initialize()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/SyncController$ISyncControllerInterface;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/adobe/sync/SyncController;->clearOutUnmanagedComponentDownloadCache(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/adobe/sync/SyncController;->createDuplicateForConflictingComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/adobe/sync/SyncController;->stopPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/sync/SyncController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/sync/SyncController;)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/sync/SyncController;)Lcom/adobe/sync/ComponentManager;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/adobe/sync/SyncController;->updateServer2ServerHrefs(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/sync/SyncController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/adobe/sync/SyncController;->getProjectIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/sync/SyncController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositesToBeDeleted:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/adobe/sync/SyncController;->addCompositeToPushQueueWithRandomDelay(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/sync/SyncController;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->compositesToOverwrite:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/adobe/sync/SyncController;->addCompositeBackToPushQueue(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V

    return-void
.end method

.method private addCompositeBackToPushQueue(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V
    .locals 2

    .prologue
    .line 1725
    invoke-static {}, Lcom/adobe/sync/CompositeRetrySyncManager;->getInstance()Lcom/adobe/sync/CompositeRetrySyncManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/CompositeRetrySyncManager;->canRetryCompositeSync(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    :goto_0
    return-void

    .line 1729
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPushedBranch()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :goto_1
    if-nez p2, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1735
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/adobe/sync/SyncController$12;

    invoke-direct {v1, p0, p1}, Lcom/adobe/sync/SyncController$12;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    const-string/jumbo v0, "Error in discarding pushed branch"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1747
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/sync/SyncController;->addCompositeToPushQueueWithRandomDelay(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    goto :goto_0
.end method

.method private addCompositeToPushQueueWithRandomDelay(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/sync/SyncController;->addCompositeToPushQueueWithRandomDelay(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V

    .line 1693
    return-void
.end method

.method private addCompositeToPushQueueWithRandomDelay(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V
    .locals 6

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    invoke-virtual {v0}, Lcom/adobe/sync/ComponentManager;->getLargeComponentsComposites()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1697
    const-string/jumbo v0, "S3Transfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "already uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", not pushing it to queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    const-string/jumbo v0, "S3Transfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushing to queue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/adobe/sync/CompositeRetrySyncManager;->getInstance()Lcom/adobe/sync/CompositeRetrySyncManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/CompositeRetrySyncManager;->canRetryCompositeSync(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    :cond_2
    sget-object v0, Lcom/adobe/sync/SyncController;->fixedDelay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sget-object v2, Lcom/adobe/sync/SyncController;->maxRandomDelay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    .line 1705
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/sync/SyncController$11;

    invoke-direct {v3, p0, p1}, Lcom/adobe/sync/SyncController$11;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    .line 1718
    if-eqz v2, :cond_0

    .line 1719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: AddCompositePushQueueWithDelay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " secs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private beginPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pullRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 2136
    return-void
.end method

.method private beginPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 1

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pushRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 2129
    return-void
.end method

.method private clearOutUnmanagedComponentDownloadCache(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 5

    .prologue
    .line 340
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 344
    invoke-static {v0, v1}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    iget-object v3, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    iget-object v4, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/adobe/sync/ComponentManagerHelper;->clearOutComponentDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    return-void
.end method

.method private createDuplicateForConflictingComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 884
    invoke-direct {p0}, Lcom/adobe/sync/SyncController;->createProjectId()Ljava/lang/String;

    move-result-object v2

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 888
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 889
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 890
    invoke-static {v4, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 901
    :try_start_2
    invoke-direct {p0, v2}, Lcom/adobe/sync/SyncController;->formattedStringFromDirectoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v4

    const-string/jumbo v5, "createdDate"

    invoke-virtual {v4, v1, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetIdentity()V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 906
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "assets"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 908
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V

    .line 909
    invoke-virtual {p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCompositeId(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_2

    .line 914
    :goto_0
    :try_start_4
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_2

    .line 918
    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_5
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_5 .. :try_end_5} :catch_3

    .line 927
    :goto_1
    return-object v0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while copying the composite to new project directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 894
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    move-object v0, v1

    .line 895
    goto :goto_1

    .line 910
    :catch_1
    move-exception v1

    .line 911
    :try_start_6
    const-string/jumbo v1, "Error while adding href to composite"

    invoke-virtual {p0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 923
    :catch_2
    move-exception v1

    .line 924
    :goto_2
    const-string/jumbo v1, "Error in opening the newly created composite"

    invoke-virtual {p0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 919
    :catch_3
    move-exception v1

    .line 920
    :try_start_7
    const-string/jumbo v1, "Error in commiting changes in newly created composite."

    invoke-virtual {p0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 923
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private createProjectId()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 870
    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 873
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    .line 876
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    return-object v0
.end method

.method private directoryNameFromTimeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1970
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 1971
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1972
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1973
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1974
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1976
    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1979
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    .line 1982
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 1983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1985
    return-object v0
.end method

.method private formattedStringFromDirectoryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 932
    .line 933
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 934
    array-length v1, v0

    if-lez v1, :cond_0

    .line 935
    const/4 v1, 0x0

    aget-object p1, v0, v1

    .line 938
    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 939
    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    .line 940
    const-wide v2, 0x7fffffffffffffffL

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 942
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 943
    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 944
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 946
    return-object v0
.end method

.method private getProjectIdFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 851
    if-nez p1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-object v0

    .line 855
    :cond_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 856
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 860
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getServerHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mSyncGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBigAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;)V
    .locals 16

    .prologue
    .line 1570
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v10

    .line 1571
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    .line 1572
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    .line 1573
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1574
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v8

    .line 1575
    const-string/jumbo v1, "UCID"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1577
    invoke-static/range {p3 .. p3}, Lcom/adobe/sync/ComponentUtils;->getExtensionFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1580
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 1581
    if-eqz v1, :cond_0

    .line 1582
    invoke-static {}, Lcom/adobe/sync/s3utils/S3TransferManager;->getInstance()Lcom/adobe/sync/s3utils/S3TransferManager;

    move-result-object v15

    new-instance v1, Lcom/adobe/sync/SyncController$10;

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v12, p5

    move-object/from16 v13, p4

    move-object/from16 v14, p7

    invoke-direct/range {v1 .. v14}, Lcom/adobe/sync/SyncController$10;-><init>(Lcom/adobe/sync/SyncController;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lorg/json/JSONObject;Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;)V

    move-object v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object v8, v3

    move-object/from16 v9, p6

    move-object v10, v4

    move-object v11, v1

    invoke-virtual/range {v5 .. v11}, Lcom/adobe/sync/s3utils/S3TransferManager;->transferBigAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/sync/s3utils/S3TransferManager$S3TransferListener;)V

    .line 1657
    :cond_0
    return-void
.end method

.method private isCompositeSyncing(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    .locals 2

    .prologue
    .line 2067
    if-eqz p1, :cond_0

    .line 2069
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getCompositePulls()Ljava/util/HashMap;

    move-result-object v0

    .line 2070
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2072
    const/4 v0, 0x1

    .line 2076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 5

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mPulledProjectDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    const/4 v1, 0x0

    .line 323
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adobe/sync/SyncController;->storageScheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-static {v0, p2, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromHref(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setController(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 329
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 332
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create Composite for pull composite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {p0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private populateDeletedCompositeLocalPathMap(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 286
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_1

    .line 292
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 296
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/adobe/sync/SyncController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 296
    invoke-virtual {p0, v4, v3, v5}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    .line 298
    if-nez v3, :cond_0

    .line 292
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/adobe/sync/SyncController;->mCompositesToBeDeleted:Ljava/util/List;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 303
    :catch_0
    move-exception v3

    .line 304
    const-string/jumbo v3, "Sync: createCompositeFromPath failed in populateDeletedCompositeLocalPathMap"

    invoke-virtual {p0, v3}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :cond_1
    return-void
.end method

.method private removeServerHrefsForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 3

    .prologue
    .line 1310
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 1311
    if-eqz v0, :cond_0

    .line 1312
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v0

    .line 1313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1315
    :try_start_0
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/sync/ComponentManagerHelper;->deleteComponentWaiting(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto :goto_0

    .line 1321
    :cond_0
    return-void
.end method

.method private requestIsValid(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Z
    .locals 3

    .prologue
    .line 2111
    const/4 v0, 0x0

    .line 2112
    if-eqz p1, :cond_0

    .line 2114
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->hasFinished()Z

    move-result v1

    .line 2115
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v2

    .line 2116
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 2118
    const/4 v0, 0x1

    .line 2121
    :cond_0
    return v0
.end method

.method private stopPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pullRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2150
    return-void
.end method

.method private stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pushRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0, p1, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2143
    return-void
.end method

.method private updateServer2ServerHrefs(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 7

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    .line 477
    if-nez v2, :cond_1

    .line 526
    :cond_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "committedDelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v0

    .line 485
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 488
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-static {v0, v2}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v6

    .line 490
    if-eqz v6, :cond_2

    .line 493
    const/4 v1, 0x0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, v5}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentWaitingModel;
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 499
    :goto_1
    if-nez v0, :cond_3

    .line 500
    new-instance v0, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 501
    invoke-virtual {v0, v3}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, v5}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 503
    iget-object v1, v6, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    iget-object v6, v6, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/adobe/sync/SyncController;->getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 504
    sget-object v1, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v3, v5}, Lcom/adobe/sync/SyncController;->getServerHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V

    .line 510
    :try_start_1
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, v0}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    :try_end_1
    .catch Lcom/adobe/sync/DBException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto :goto_0

    .line 496
    :catch_1
    move-exception v0

    .line 497
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 515
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->getAssetSyncStatus()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v6}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    sget-object v1, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 517
    invoke-direct {p0, v3, v5}, Lcom/adobe/sync/SyncController;->getServerHref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 519
    :try_start_2
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v1, v0}, Lcom/adobe/sync/ComponentManagerHelper;->updateComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    :try_end_2
    .catch Lcom/adobe/sync/DBException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 520
    :catch_2
    move-exception v0

    .line 521
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptPulledBranchIfPresent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1757
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1758
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Error in reading composite from path."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1769
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unmodified"

    .line 1770
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1772
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    .line 1773
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 1772
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resolvePullWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Z

    move-result v2

    .line 1774
    if-nez v2, :cond_2

    .line 1776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Pull succeeded but accept failed - Composite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1777
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1776
    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPulledBranch()Z

    .line 1780
    :cond_2
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    sget-object v3, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v2, v0, v3}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1781
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1795
    :catch_1
    move-exception v0

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Pull succeeded but accept failed - Composite"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1797
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1796
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1784
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "modified"

    .line 1785
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1788
    const-string/jumbo v2, "Sync: Pull detected changes in current branch, resolve conflict"

    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1789
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v2, v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->resolveConflict(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1791
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    sget-object v3, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v2, v0, v3}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1792
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public acceptPushedBranchIfPresent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1807
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1808
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return-void

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Error in creating composite from path."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1816
    :cond_1
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/sync/SyncController$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/adobe/sync/SyncController$13;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public checkAndAddToComponentWaitingForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    .locals 9

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getAllComponents()Ljava/util/List;

    move-result-object v1

    .line 438
    const/4 v0, 0x0

    .line 439
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 440
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adobe/sync/ComponentUtils;->getComponentKeys(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/sync/ComponentUtils$ComponentKeys;

    move-result-object v3

    .line 441
    if-eqz v3, :cond_0

    .line 444
    iget-object v4, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    iget-object v5, v3, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    iget-object v6, v3, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v8

    .line 444
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/adobe/sync/ComponentManagerHelper;->isUploadOfComponentInProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    const/4 v1, 0x1

    .line 449
    :try_start_0
    iget-object v4, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/sync/ComponentManagerHelper;->getComponentWaitingModel(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentWaitingModel;

    move-result-object v4

    .line 450
    if-nez v4, :cond_1

    .line 451
    new-instance v4, Lcom/adobe/sync/database/ComponentWaitingModel;

    invoke-direct {v4}, Lcom/adobe/sync/database/ComponentWaitingModel;-><init>()V

    .line 452
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setComponentId(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCompositeId(Ljava/lang/String;)V

    .line 454
    iget-object v0, v3, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->assetUrl:Ljava/lang/String;

    iget-object v3, v3, Lcom/adobe/sync/ComponentUtils$ComponentKeys;->createdDate:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/adobe/sync/SyncController;->getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setUCID(Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;

    invoke-virtual {v0}, Lcom/adobe/sync/database/ComponentWaitingModel$SYNC_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAssetSyncStatus(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setServerHref(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setAdobeId(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adobe/sync/database/ComponentWaitingModel;->setCloudId(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManagerHelper:Lcom/adobe/sync/ComponentManagerHelper;

    invoke-virtual {v0, v4}, Lcom/adobe/sync/ComponentManagerHelper;->insertComponentWaiting(Lcom/adobe/sync/database/ComponentWaitingModel;)Z
    :try_end_0
    .catch Lcom/adobe/sync/DBException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    .line 467
    goto/16 :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Lcom/adobe/sync/DBException;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 468
    :cond_3
    return v1
.end method

.method public compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1845
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->compositeForCompositePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    return-object v0
.end method

.method public compositeForCompositePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1

    .prologue
    .line 1839
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/sync/SyncController;->compositeForCompositePathWithSyncController(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    return-object v0
.end method

.method public compositeForCompositePathWithSyncController(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1851
    if-eqz p1, :cond_3

    .line 1855
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/sync/SyncController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1857
    if-nez v0, :cond_0

    .line 1858
    sget-object v0, Lcom/adobe/sync/SyncController;->storageScheme:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-static {p1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1860
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1861
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setController(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 1863
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1866
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1869
    :try_start_1
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1884
    :cond_2
    :goto_0
    return-object v0

    .line 1870
    :catch_0
    move-exception v2

    .line 1871
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in setting href: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1877
    :catch_1
    move-exception v0

    .line 1878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: compositeForCompositePathWithSyncController failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1879
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 1884
    goto :goto_0
.end method

.method public controllerHasDisabledSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 1

    .prologue
    .line 2016
    const-string/jumbo v0, "Sync Disabled"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method public controllerHasEnabledSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 5

    .prologue
    .line 1991
    const-string/jumbo v0, "Sync Enabled"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pausedComposites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1994
    :try_start_0
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1995
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    .line 1996
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1998
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "assets"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1999
    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 2001
    :goto_1
    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 2009
    :cond_2
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pausedComposites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2011
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public controllerHasFinishedSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    .locals 1

    .prologue
    .line 1674
    const-string/jumbo v0, "Sync: controllerHasFinishedSync "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1676
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->syncHasFinished()V

    .line 1677
    return-void
.end method

.method public controllerHasPausedSyncForAllCompositesDueToError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 1662
    const-string/jumbo v0, "Sync: controllerHasPausedSyncForAllCompositesDueToError "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method public controllerHasStartedSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    .locals 1

    .prologue
    .line 1667
    const-string/jumbo v0, "Sync: controllerHasStartedSync "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1669
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->syncHasStarted()V

    .line 1670
    return-void
.end method

.method public controllerHasUpdatedLocalStorageBytesConsumed(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;J)V
    .locals 1

    .prologue
    .line 1682
    const-string/jumbo v0, "Sync: controllerHasUpdatedLocalStorageBytesConsumed "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method public controllerRequestsAcceptOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync: AcceptOfComposite "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 957
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 963
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 965
    invoke-direct {p0, v0}, Lcom/adobe/sync/SyncController;->getProjectIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 967
    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 969
    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->currentOpenProjectPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    const-string/jumbo v0, "Sync: Composite is being edited we will await for it to complete."

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-nez v0, :cond_3

    .line 980
    invoke-direct {p0, p2, v3}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 981
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/sync/SyncController$3;

    invoke-direct {v2, p0, v1}, Lcom/adobe/sync/SyncController$3;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1006
    :cond_3
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositesToBeDeleted:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Project has been in delete list checking for state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1009
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unmodified"

    .line 1014
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1016
    const-string/jumbo v0, "Sync: Pushed branch has been successfull. Lets update local and Re queue it for deletion."

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, p2, v3}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1018
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/sync/SyncController$4;

    invoke-direct {v2, p0, v1}, Lcom/adobe/sync/SyncController$4;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1042
    :cond_4
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "committedDelete"

    .line 1043
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    .line 1050
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v2, "committedDelete"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 1052
    const-string/jumbo v0, "Sync: Project deleted from Local"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositesToBeDeleted:Ljava/util/List;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1055
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Error While deleting project which is marked for deletion from local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1058
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    :cond_5
    const-string/jumbo v0, "Sync: Success in pushing the project to server"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    const-string/jumbo v2, "ccSyncActionType:push"

    .line 1068
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    .line 1067
    invoke-interface {v0, v2, v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->collectCloudSyncWithAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, p2, v3}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1070
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->acceptPushedBranchIfPresent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public controllerRequestsBytesConsumedByCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1501
    const-string/jumbo v0, "Sync: controllerRequestsBytesConsumedByCompositeWithID "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1505
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorageBytesConsumed()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public controllerRequestsClientHandleError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;Z)V
    .locals 10

    .prologue
    .line 1513
    const-string/jumbo v0, "Sync: controllerRequestsClientHandleError "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1515
    const/4 v0, 0x0

    .line 1517
    if-eqz p5, :cond_1

    .line 1519
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->pausedComposites:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->pausedComposites:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne p4, v1, :cond_4

    .line 1524
    invoke-direct {p0, p3, p2}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1525
    const/4 v0, 0x1

    .line 1534
    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p3, v1, v2}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    .line 1536
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->pauseSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1538
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    invoke-virtual {v0, p3}, Lcom/adobe/sync/ComponentManager;->getLargeComponentsComposites(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1539
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 1541
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    invoke-virtual {v0, p3}, Lcom/adobe/sync/ComponentManager;->getLargeComponentsCompositesRequest(Ljava/lang/String;)Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;

    move-result-object v7

    .line 1542
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1543
    invoke-direct {p0, p3, v7}, Lcom/adobe/sync/SyncController;->beginPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 1545
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1546
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1547
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1548
    const-string/jumbo v0, "S3Transfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got large component json "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const-string/jumbo v0, "componentId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    const-string/jumbo v1, "assetPath"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1551
    const-string/jumbo v1, "requestId"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1552
    const-string/jumbo v1, "state"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    const-string/jumbo v5, "waiting"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1555
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 1556
    const-string/jumbo v0, "state"

    const-string/jumbo v5, "uploading"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, p0

    move-object v5, p1

    .line 1557
    invoke-direct/range {v0 .. v7}, Lcom/adobe/sync/SyncController;->handleBigAsset(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Lcom/adobe/sync/s3utils/DirectS3HttpTaskHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/adobe/sync/SyncController;->stopPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1564
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1566
    :cond_3
    return-void

    .line 1527
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne p4, v1, :cond_1

    .line 1529
    invoke-direct {p0, p3, p2}, Lcom/adobe/sync/SyncController;->stopPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_0
.end method

.method public controllerRequestsDeleteOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1388
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Delete started for composite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1391
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->currentOpenProjectPath()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-direct {p0, v0}, Lcom/adobe/sync/SyncController;->getProjectIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1394
    iget-object v3, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    const-string/jumbo v4, "ccSyncActionType:delete"

    invoke-interface {v3, v4, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->collectCloudSyncWithAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1399
    const-string/jumbo v0, "Sync: Delete snoozed as the project is being edited"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/adobe/sync/SyncController$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/sync/SyncController$9;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1416
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1418
    :cond_2
    const-string/jumbo v0, "Sync: Delete stopped as project does not exists"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1423
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 1425
    if-eqz v2, :cond_0

    .line 1427
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    .line 1432
    const-string/jumbo v3, "modified"

    .line 1433
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1435
    const-string/jumbo v2, "Sync: Delete local copy is modified making a copy with only UUID changed"

    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1436
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetIdentity()V

    .line 1441
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getSyncGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1445
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1446
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setHref(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1451
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z

    .line 1452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Delete added copied composition to push queue with id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1453
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1452
    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    sget-object v3, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_COMPOSITE_DELETED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v2, v0, v3}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1455
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1459
    :catch_0
    move-exception v0

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Delete commit failed for id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1464
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1447
    :catch_1
    move-exception v2

    .line 1448
    :try_start_3
    const-string/jumbo v2, "Error while adding href to composite"

    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1471
    :cond_4
    const-string/jumbo v2, "Sync: Delete: Removing the composite and updating gallery"

    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1472
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :try_start_4
    invoke-direct {p0, v1}, Lcom/adobe/sync/SyncController;->removeServerHrefsForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1478
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z

    .line 1479
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 1480
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v1, v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->removeProjectFromList(Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1482
    :catch_2
    move-exception v0

    .line 1486
    const-string/jumbo v0, "Sync: Delete Error Deleting Project Folder"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public controllerRequestsPullOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync Controller Pull Started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    invoke-static {}, Lcom/adobe/utility/AndroidMiscUtils;->getFreeDiskspace()J

    move-result-wide v0

    .line 361
    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 363
    const-string/jumbo v0, "LOW DISK SPACE"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->setLowDiskSpaceSyncStop(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->stopMonitor()V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 376
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/sync/SyncController;->newCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 381
    :cond_3
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 389
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    new-instance v2, Lcom/adobe/sync/SyncController$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/adobe/sync/SyncController$1;-><init>(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->pullComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPullCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0, p2, v0}, Lcom/adobe/sync/SyncController;->beginPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    goto :goto_0
.end method

.method public controllerRequestsPushOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 530
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->checkAndAddToComponentWaitingForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->isSyncPausedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->pauseSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync: Push paused for composite "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Push started for composite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setController(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 543
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 545
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->isSyncPausedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->compositesToOverwrite:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 554
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->compositesToOverwrite:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mStorageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    new-instance v3, Lcom/adobe/sync/SyncController$2;

    invoke-direct {v3, p0, p2, v0}, Lcom/adobe/sync/SyncController$2;-><init>(Lcom/adobe/sync/SyncController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->pushComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXPushCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 836
    if-eqz v0, :cond_0

    .line 837
    invoke-direct {p0, p2, v0}, Lcom/adobe/sync/SyncController;->beginPush(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    goto :goto_0
.end method

.method public controllerRequestsResolveOfCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1078
    invoke-virtual {p0, p2}, Lcom/adobe/sync/SyncController;->compositeForCompositeID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1079
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1081
    :cond_0
    const-string/jumbo v0, "controllerRequestsResolveOfCompositeWithID : Composite not found "

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1305
    :cond_1
    :goto_0
    return-void

    .line 1085
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: ResolveOfComposite - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1088
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 1089
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    const-string/jumbo v3, "ccSyncActionType:pull"

    invoke-interface {v2, v3, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->collectCloudSyncWithAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1094
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pendingDelete"

    .line 1095
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1097
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "modified"

    .line 1098
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1100
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/adobe/sync/SyncController;->addCompositeToPushQueueWithRandomDelay(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V

    .line 1115
    :cond_4
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/sync/SyncController$5;

    invoke-direct {v2, p0, v1, p2}, Lcom/adobe/sync/SyncController$5;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1130
    :cond_5
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "_pulled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1136
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->currentOpenProjectPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1147
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unmodified"

    .line 1148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1152
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/sync/SyncController$6;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/adobe/sync/SyncController$6;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1186
    :cond_6
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "modified"

    .line 1187
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1190
    const-string/jumbo v2, "Sync: changes in current branch, resolve conflict"

    invoke-virtual {p0, v2}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1191
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/sync/SyncController$7;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/adobe/sync/SyncController$7;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1203
    :cond_7
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pendingDelete"

    .line 1204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1206
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->uiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/sync/SyncController$8;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/adobe/sync/SyncController$8;-><init>(Lcom/adobe/sync/SyncController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1239
    :cond_8
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "committedDelete"

    .line 1240
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-direct {p0, p2, v4}, Lcom/adobe/sync/SyncController;->stopPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_0

    .line 1254
    :cond_9
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1257
    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeUnusedLocalFiles()J

    .line 1258
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resolvePullWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1265
    if-eqz v2, :cond_a

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1272
    :try_start_1
    invoke-static {v3, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 1273
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    sget-object v3, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-interface {v0, v2, v3}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->refreshProjectWithId(Ljava/lang/String;Lcom/adobe/sync/SyncController$DCXRefreshMode;)V

    .line 1275
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->projectsUpdated()V

    .line 1276
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/adobe/sync/SyncController;->stopPull(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1277
    :catch_0
    move-exception v0

    .line 1279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Some problem in moving the composite to root from temp. Pull discarded. Composite - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1281
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1284
    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1288
    :goto_1
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1259
    :catch_1
    move-exception v0

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: some problem in accepting pulled branch: Error - %@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1261
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    :catch_2
    move-exception v0

    .line 1286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Exception in removeLocalStorage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1293
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: Pull succeeded but accept failed - Composite = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1294
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1296
    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalStorage()Z
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1300
    :goto_2
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1297
    :catch_3
    move-exception v0

    .line 1298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sync: Exception in removeLocalStorage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public controllerWillTrackLocalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v0, p2}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->trackComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v0

    return v0
.end method

.method public deleteDocumentAtPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1325
    const-string/jumbo v0, "Sync: Deleted Document at path started"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1326
    if-nez p1, :cond_1

    .line 1328
    const-string/jumbo v0, "Sync: Attempting to delete project with path = null"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/sync/SyncController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1336
    if-eqz v1, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->isSyncPausedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->pauseSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1342
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1343
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPushedBranch()Z

    .line 1346
    :cond_3
    invoke-direct {p0, v1}, Lcom/adobe/sync/SyncController;->removeServerHrefsForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1348
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getAllComponents()Ljava/util/List;

    move-result-object v0

    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1353
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    const-string/jumbo v0, "Sync: deleteDocumentAtPath failed."

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1357
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeLocalFilesForComponentsWithIDs(Ljava/util/ArrayList;Ljava/util/ArrayList;)J

    .line 1361
    :cond_5
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v2, "pendingDelete"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setCompositeState(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z

    .line 1369
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->isSyncPausedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1371
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 1373
    :cond_6
    const-string/jumbo v0, "Sync: Moved deleted project to local path and added to push queue"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mCompositesToBeDeleted:Ljava/util/List;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public forceSync()V
    .locals 1

    .prologue
    .line 1956
    invoke-static {}, Lcom/adobe/sync/CompositeRetrySyncManager;->getInstance()Lcom/adobe/sync/CompositeRetrySyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/sync/CompositeRetrySyncManager;->resetRetryCountAllCompositesSync()V

    .line 1957
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->forceServerPoll()V

    .line 1958
    return-void
.end method

.method public getCompositePulls()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2051
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2053
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pullRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2055
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {p0, v1}, Lcom/adobe/sync/SyncController;->requestIsValid(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2059
    :cond_0
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->pullRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2062
    :cond_1
    return-object v2
.end method

.method public getCompositePushes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2033
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2035
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->pushRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2037
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {p0, v1}, Lcom/adobe/sync/SyncController;->requestIsValid(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->pushRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2044
    :cond_1
    return-object v2
.end method

.method protected getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2025
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProjectPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1890
    :cond_0
    const/4 v0, 0x0

    .line 1893
    :goto_0
    return-object v0

    .line 1892
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSyncGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mSyncGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/sync/ComponentManager;->getUCIDForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnmanagedDataPathForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->componentManager:Lcom/adobe/sync/ComponentManager;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/sync/ComponentManager;->getUnmanagedDataPathForAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeCompositeLoader()V
    .locals 6

    .prologue
    .line 221
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mRootDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mPulledProjectDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/sync/SyncController;->mDeletedProjectDirectory:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/sync/SyncController;->mSyncGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/sync/database/CompositeLoader;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 222
    return-void
.end method

.method public loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 2021
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    return-object v0
.end method

.method public lockCompositeForProject(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1926
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/sync/SyncController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1927
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->pauseSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: lockCompositeForProject failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 312
    const-string/jumbo v0, "SyncController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method protected populateCompositeLocalPathMap(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 253
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 254
    if-eqz v3, :cond_2

    .line 256
    array-length v5, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v3, v2

    .line 259
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string/jumbo v7, "preferences"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 261
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 260
    invoke-virtual {p0, v0, v7, v8}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 263
    :goto_1
    if-nez v0, :cond_1

    .line 256
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 260
    goto :goto_1

    .line 266
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v7, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->scanLocalComposites(Ljava/util/ArrayList;)Z

    move-result v0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SyncController scanLocalCompositesInPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string/jumbo v0, "passed"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 282
    :cond_3
    return-void

    .line 279
    :cond_4
    const-string/jumbo v0, "failed"

    goto :goto_3
.end method

.method public pushDocumentForSync(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1899
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/sync/SyncController;->getProjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1900
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 1902
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unmodified"

    .line 1907
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mSyncDelegate:Lcom/adobe/sync/SyncController$ISyncControllerInterface;

    invoke-interface {v2, v1}, Lcom/adobe/sync/SyncController$ISyncControllerInterface;->trackComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1914
    iget-object v2, p0, Lcom/adobe/sync/SyncController;->mCompositeIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: pushDocumentForSync failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushesOrPullsContainsCompositeId(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2096
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getCompositePulls()Ljava/util/HashMap;

    move-result-object v1

    .line 2097
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return v0

    .line 2101
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getCompositePushes()Ljava/util/HashMap;

    move-result-object v1

    .line 2102
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushesOrPullsExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2081
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getCompositePulls()Ljava/util/HashMap;

    move-result-object v1

    .line 2082
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2091
    :cond_0
    :goto_0
    return v0

    .line 2086
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/sync/SyncController;->getCompositePushes()Ljava/util/HashMap;

    move-result-object v1

    .line 2087
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 2091
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkPreference(Z)V
    .locals 2

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->setSyncAllowedByNetworkStatusMask(Ljava/util/EnumSet;)V

    .line 235
    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "start monitor"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->setMode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;)V

    .line 240
    return-void
.end method

.method public stopMonitor()V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "stop monitor"

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->setMode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;)V

    .line 245
    return-void
.end method

.method public unlockCompositeForProject(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1942
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/sync/SyncController;->getProjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1943
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/sync/SyncController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 1944
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    iget-object v1, p0, Lcom/adobe/sync/SyncController;->mDCXSyncController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync: unlockCompositeForProject failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/sync/SyncController;->logMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
