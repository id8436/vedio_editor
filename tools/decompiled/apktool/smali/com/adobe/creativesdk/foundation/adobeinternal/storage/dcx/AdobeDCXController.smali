.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;
.super Ljava/lang/Object;
.source "AdobeDCXController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;
.implements Ljava/util/Observer;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _compositeCtrlStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;",
            ">;"
        }
    .end annotation
.end field

.field private _delayPushBySeconds:I

.field private _delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _delegateHandler:Landroid/os/Handler;

.field private _ignoreWaitingForCancel:Z

.field private volatile _isInSync:Z

.field private _mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

.field private _monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

.field private _monitorIsRunning:Z

.field private _numConcurrentRequests:I

.field private _requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

.field private _scannedLocalAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;",
            ">;"
        }
    .end annotation
.end field

.field private _session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field private _sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

.field private _syncAllowedByNetworkStatus:Z

.field private _syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;",
            ">;"
        }
    .end annotation
.end field

.field private _syncGroup:Ljava/lang/String;

.field private volatile _syncInProgress:Z

.field private _totalBytesConsumed:J

.field private _unInitialized:Z

.field private final instanceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_numConcurrentRequests:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 135
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_unInitialized:Z

    .line 141
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_ignoreWaitingForCancel:Z

    .line 143
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->instanceId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Landroid/os/Handler;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_numConcurrentRequests:I

    .line 133
    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 135
    iput-boolean v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_unInitialized:Z

    .line 141
    iput-boolean v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_ignoreWaitingForCancel:Z

    .line 143
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->instanceId:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncGroup:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    .line 199
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegateHandler:Landroid/os/Handler;

    .line 201
    invoke-static {p1, p2, p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->assetMonitorForSyncGroup(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    .line 202
    iput-boolean v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitorIsRunning:Z

    .line 203
    iput-boolean v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    .line 206
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    .line 207
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    .line 211
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    .line 212
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 214
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_numConcurrentRequests:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_numConcurrentRequests:I

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 218
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 222
    :cond_0
    iput v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delayPushBySeconds:I

    .line 223
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->processErrorForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    return v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->bytesConsumedByCompositeWithID(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_totalBytesConsumed:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;J)J
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_totalBytesConsumed:J

    return-wide p1
.end method

.method private bytesConsumedByCompositeWithID(Ljava/lang/String;)J
    .locals 9

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    move-object v2, v0

    .line 1371
    :goto_0
    const-wide/16 v0, 0x0

    .line 1373
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegateHandler:Landroid/os/Handler;

    if-nez v3, :cond_2

    .line 1374
    if-eqz v2, :cond_0

    .line 1375
    invoke-interface {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;->controllerRequestsBytesConsumedByCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)J

    move-result-wide v0

    .line 1421
    :cond_0
    :goto_1
    return-wide v0

    .line 1369
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1379
    :cond_2
    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1380
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 1386
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    .line 1388
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$6;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1407
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1409
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1411
    :goto_2
    :try_start_0
    iget-boolean v0, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;->delegateReturned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 1412
    :try_start_1
    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeDCXController.bytesConsumedByCompositeWithID"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1417
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1418
    throw v0

    .line 1417
    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1419
    iget-wide v0, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1OutPut;->bytesConsumed:J

    goto :goto_1
.end method

.method private cancelActiveRequests()V
    .locals 4

    .prologue
    .line 1426
    monitor-enter p0

    .line 1427
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1428
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1431
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v2, v3, :cond_2

    .line 1432
    :cond_0
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v2, :cond_2

    .line 1433
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1434
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 1436
    :cond_1
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 1437
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 1440
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    return-void
.end method

.method private checkAndNotifyForPendingTransfersWithCtrlState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    if-eqz v0, :cond_0

    .line 1297
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1298
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1308
    :goto_0
    return-void

    .line 1300
    :cond_0
    iget-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    if-eqz v0, :cond_1

    .line 1301
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1302
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    goto :goto_0

    .line 1305
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1306
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    goto :goto_0
.end method

.method private checkAndNotifyForSyncCompletion()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    if-eqz v0, :cond_5

    .line 1254
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v0, v1, :cond_8

    .line 1255
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1257
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1260
    iget-boolean v5, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    if-eqz v5, :cond_1

    .line 1261
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v0, v5, :cond_0

    move v1, v3

    .line 1262
    goto :goto_0

    .line 1265
    :cond_1
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v0, v5, :cond_0

    move v0, v1

    .line 1271
    :goto_1
    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-nez v1, :cond_5

    .line 1272
    :cond_2
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v0, v1, :cond_3

    .line 1273
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1274
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    .line 1275
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    .line 1278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1280
    :goto_2
    if-eqz v0, :cond_4

    .line 1281
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$4;

    invoke-direct {v1, p0, v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$4;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1288
    :cond_4
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->recalculateLocalStorageBytesConsumed()V

    .line 1291
    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1292
    return-void

    .line 1275
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1291
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1278
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move v0, v1

    move v2, v3

    goto :goto_1

    :cond_8
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private checkAndNotifyForSyncStarting()V
    .locals 2

    .prologue
    .line 1232
    monitor-enter p0

    .line 1233
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    if-nez v0, :cond_0

    .line 1234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    .line 1235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1237
    :goto_0
    if-eqz v0, :cond_0

    .line 1238
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$3;

    invoke-direct {v1, p0, v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1246
    :cond_0
    monitor-exit p0

    .line 1247
    return-void

    .line 1235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static compositeIDFromHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-ltz v1, :cond_0

    .line 172
    aget-object v0, v2, v1

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 175
    :cond_0
    return-object v0

    .line 171
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static createControllerForSyncGroup(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Landroid/os/Handler;)V

    return-object v0
.end method

.method private dispatchDelegateBlock(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegateHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1597
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    move-object v2, v0

    .line 1599
    :goto_0
    if-nez v2, :cond_0

    .line 1600
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "The delegate inside DCX Controller is null"

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_0
    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    .line 1604
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 1606
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$19;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$dcx$AdobeDCXSyncPhase:[I

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1681
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 1686
    :cond_1
    :goto_1
    return-void

    .line 1598
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1608
    :pswitch_0
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    .line 1609
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    .line 1610
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$11;

    invoke-direct {v0, p0, v2, v3, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$11;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1623
    :pswitch_1
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    .line 1624
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    .line 1625
    iget-object v5, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->href:Ljava/lang/String;

    .line 1626
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$12;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1639
    :pswitch_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    .line 1640
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$13;

    invoke-direct {v0, p0, v2, v3, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$13;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1653
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    .line 1654
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$14;

    invoke-direct {v0, p0, v2, v3, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$14;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1667
    :pswitch_4
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    .line 1668
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$15;

    invoke-direct {v0, p0, v2, v3, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$15;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 2

    .prologue
    .line 1804
    monitor-enter p0

    .line 1805
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1807
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-nez v1, :cond_1

    .line 1808
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    .line 1809
    if-eqz v0, :cond_0

    .line 1810
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$17;

    invoke-direct {v1, p0, v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$17;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1817
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->forceServerPoll()V

    .line 1818
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->restartSyncCycle()V

    .line 1834
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1835
    return-void

    .line 1820
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-eqz v1, :cond_0

    .line 1821
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    .line 1822
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->cancelActiveRequests()V

    .line 1824
    if-eqz v0, :cond_0

    .line 1825
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$18;

    invoke-direct {v1, p0, v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$18;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1831
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    goto :goto_0

    .line 1834
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processErrorForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1446
    iget-object v5, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 1447
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Error is unexpectedly nil in processErrorForCompositeWithControllerState"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    move-object v3, v0

    .line 1453
    :goto_0
    iput-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 1454
    iput-boolean v2, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 1456
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v5

    .line 1457
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorUnknownComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    if-ne v0, v1, :cond_4

    .line 1461
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    move v1, v2

    move v0, v2

    .line 1571
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->getSyncAllowedByNetworkStatus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1573
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    move v0, v2

    .line 1577
    :cond_1
    if-eqz v0, :cond_15

    .line 1578
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseError:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v0, v1, :cond_13

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unexpected sync phase in processErrorForCompositeWithControllerState"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    move-object v3, v1

    .line 1450
    goto :goto_0

    :cond_4
    move-object v0, v5

    .line 1463
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorCompositeAlreadyExists:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    if-ne v0, v1, :cond_5

    move v1, v2

    move v0, v2

    goto :goto_1

    .line 1471
    :cond_5
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    move v1, v2

    move v0, v2

    goto :goto_1

    .line 1474
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1475
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v0, v1, :cond_8

    move-object v0, v5

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 1476
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorConflictingChanges:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_8

    .line 1479
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    .line 1480
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1481
    iget-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    if-eqz v0, :cond_7

    .line 1482
    iput-boolean v2, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    .line 1484
    :cond_7
    const-string/jumbo v0, "csdk_android_dcx"

    const-string/jumbo v1, "AdobeDCXController.processErrorForCompositeWithControllerState"

    const-string/jumbo v6, "AdobeAssetErrorConflictingChanges"

    iget-object v7, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    invoke-static {v0, v1, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    move v1, v4

    move v0, v2

    .line 1486
    goto :goto_1

    .line 1488
    :cond_8
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v0, v1, :cond_9

    move-object v0, v5

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 1489
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_9

    move-object v0, v5

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 1490
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x199

    if-ne v0, v1, :cond_9

    move v1, v2

    move v0, v4

    .line 1494
    goto/16 :goto_1

    :cond_9
    move-object v0, v5

    .line 1496
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_a

    move v1, v2

    move v0, v4

    .line 1499
    goto/16 :goto_1

    :cond_a
    move-object v0, v5

    .line 1501
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorExceededQuota:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_b

    .line 1503
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$7;

    invoke-direct {v0, p0, v3, p0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$7;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1509
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    move v1, v4

    move v0, v2

    .line 1510
    goto/16 :goto_1

    .line 1517
    :cond_b
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    move v1, v2

    move v0, v2

    goto/16 :goto_1

    .line 1520
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v5

    .line 1521
    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNetworkFailure:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-eq v0, v1, :cond_d

    move-object v0, v5

    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 1522
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorOffline:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_e

    :cond_d
    move v1, v2

    move v0, v4

    .line 1526
    goto/16 :goto_1

    :cond_e
    move-object v0, v5

    .line 1528
    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorAuthenticationFailed:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_f

    .line 1533
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$8;

    invoke-direct {v0, p0, v3, p0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$8;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1539
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerPaused:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    move v1, v4

    move v0, v2

    .line 1540
    goto/16 :goto_1

    :cond_f
    move-object v0, v5

    .line 1542
    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorServiceDisconnected:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_10

    .line 1547
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$9;

    invoke-direct {v0, p0, v3, p0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$9;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1553
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerPaused:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    move v1, v4

    move v0, v2

    .line 1554
    goto/16 :goto_1

    :cond_10
    move-object v0, v5

    .line 1556
    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_11

    move v1, v2

    move v0, v4

    .line 1559
    goto/16 :goto_1

    .line 1564
    :cond_11
    iput-boolean v4, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    :cond_12
    move v1, v2

    move v0, v2

    goto/16 :goto_1

    .line 1580
    :cond_13
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1594
    :cond_14
    :goto_2
    return-void

    .line 1582
    :cond_15
    if-nez v1, :cond_14

    .line 1583
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    .line 1584
    iget-object v6, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1585
    iget-boolean v7, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    .line 1586
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;Z)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private recalculateLocalStorageBytesConsumed()V
    .locals 3

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1314
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$5;

    invoke-direct {v2, p0, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$5;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1366
    return-void

    .line 1311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartSyncCycle()V
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1110
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$2;

    invoke-direct {v2, p0, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1229
    return-void

    .line 1107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startSyncGroupMonitor()V
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->startWithLocalAssets(Ljava/util/ArrayList;)V

    .line 1691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitorIsRunning:Z

    .line 1692
    return-void
.end method

.method private stopSyncGroupMonitor()V
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->stop()V

    .line 1698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitorIsRunning:Z

    .line 1699
    return-void
.end method


# virtual methods
.method public assetWasAdded(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 3

    .prologue
    .line 1782
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->compositeIDFromHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1783
    if-eqz v1, :cond_1

    .line 1784
    monitor-enter p0

    .line 1785
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1786
    if-nez v0, :cond_2

    .line 1787
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;-><init>()V

    .line 1788
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1789
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    .line 1790
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->href:Ljava/lang/String;

    .line 1792
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    .line 1798
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1799
    monitor-exit p0

    .line 1801
    :cond_1
    return-void

    .line 1793
    :cond_2
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-nez v1, :cond_0

    .line 1794
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    goto :goto_0

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public assetWasDeleted(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 5

    .prologue
    .line 1742
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->compositeIDFromHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1743
    if-eqz v1, :cond_4

    .line 1744
    const-string/jumbo v0, "csdk_android_dcx"

    const-string/jumbo v2, "AdobeDCXController.assetWasDeleted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Composite was deleted on server "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1745
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1744
    invoke-static {v0, v2, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    monitor-enter p0

    .line 1747
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1748
    if-eqz v0, :cond_3

    .line 1749
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v2, v3, :cond_2

    .line 1750
    :cond_0
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v2, :cond_2

    .line 1751
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1752
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 1754
    :cond_1
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 1757
    :cond_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1758
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    .line 1759
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPullingComponents:Z

    if-nez v2, :cond_3

    .line 1760
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 1761
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1763
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncStarting()V

    .line 1764
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$16;

    invoke-direct {v2, p0, v0, v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$16;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchDelegateBlock(Ljava/lang/Runnable;)V

    .line 1776
    :cond_3
    monitor-exit p0

    .line 1778
    :cond_4
    return-void

    .line 1776
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public assetWasUpdated(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 3

    .prologue
    .line 1720
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->compositeIDFromHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_2

    .line 1722
    monitor-enter p0

    .line 1723
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1724
    if-eqz v0, :cond_1

    .line 1725
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    .line 1726
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-nez v1, :cond_3

    :cond_0
    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPullingComponents:Z

    if-nez v1, :cond_3

    .line 1727
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1728
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1736
    :cond_1
    :goto_0
    monitor-exit p0

    .line 1738
    :cond_2
    return-void

    .line 1733
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    goto :goto_0

    .line 1736
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method attachComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1085
    monitor-enter p0

    .line 1086
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    .line 1088
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;->controllerWillTrackLocalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    monitor-exit p0

    .line 1104
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 1086
    goto :goto_0

    .line 1092
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1096
    if-nez v0, :cond_3

    .line 1097
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;-><init>()V

    .line 1098
    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    .line 1099
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->href:Ljava/lang/String;

    .line 1100
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public currentSyncPhaseForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;
    .locals 2

    .prologue
    .line 725
    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 727
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eqz v1, :cond_0

    .line 728
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    monitor-exit p0

    .line 731
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseError:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    monitor-exit p0

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method delayPushBySeconds(ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    .locals 4

    .prologue
    .line 749
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->syncDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->syncDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->syncDelayTimer:Ljava/util/Timer;

    .line 754
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->syncDelayTimer:Ljava/util/Timer;

    .line 755
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 756
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/ref/WeakReference;)V

    .line 765
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->syncDelayTimer:Ljava/util/Timer;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 767
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->unInitialize()V

    .line 230
    return-void
.end method

.method public forceServerPoll()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->update()V

    .line 409
    return-void
.end method

.method public getDelayPushBySeconds()I
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delayPushBySeconds:I

    monitor-exit p0

    return v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getIgnoreWaitingForCancel()Z
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_ignoreWaitingForCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInSync()Z
    .locals 1

    .prologue
    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    monitor-exit p0

    return v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;
    .locals 1

    .prologue
    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    monitor-exit p0

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServerPollingFrequency()J
    .locals 2

    .prologue
    .line 398
    monitor-enter p0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->getUpdateFrequency()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSyncAllowedByNetworkStatus()Z
    .locals 1

    .prologue
    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    monitor-exit p0

    return v0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSyncAllowedByNetworkStatusMask()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    monitor-exit p0

    return-object v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSyncOrder()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->getSyncOrder()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v0

    return-object v0
.end method

.method public getSyncOrderBy()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;
    .locals 3

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "CSDK::Release::DCX"

    const-string/jumbo v2, "Warning: getting syncOrderBy while a sync is in progress will not affect the active syncing process."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->getSyncOrderBy()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v0

    return-object v0
.end method

.method public isPushPendingForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    .locals 2

    .prologue
    .line 712
    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 714
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isSyncInProgress()Z
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSyncPausedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z
    .locals 2

    .prologue
    .line 699
    monitor-enter p0

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 701
    if-eqz v0, :cond_0

    .line 702
    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    monitor-exit p0

    .line 705
    :goto_0
    return v0

    .line 704
    :cond_0
    monitor-exit p0

    .line 705
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public localStorageBytesConsumed()J
    .locals 2

    .prologue
    .line 742
    monitor-enter p0

    .line 743
    :try_start_0
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_totalBytesConsumed:J

    monitor-exit p0

    return-wide v0

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public monitorHasFinishedUpdate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 0

    .prologue
    .line 1711
    return-void
.end method

.method public monitorHasFinishedUpdate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Z)V
    .locals 0

    .prologue
    .line 1716
    return-void
.end method

.method public monitorHasStartedUpdate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 0

    .prologue
    .line 1705
    return-void
.end method

.method public pauseSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 622
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 625
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "CSDK::Release::DCX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inside pauseSyncForComposite compositeId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    if-eqz v0, :cond_4

    .line 628
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    .line 629
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_3

    .line 630
    :cond_1
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    if-eqz v1, :cond_3

    .line 631
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 634
    :cond_2
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 635
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 638
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    .line 640
    :cond_4
    monitor-exit p0

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseSyncForCompositeWithError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 660
    monitor-enter p0

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 662
    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorCompositeNotAttachedToController:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v2, "Composite is not attached to controller"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)V

    throw v0

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 665
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->pauseSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 667
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    return-void
.end method

.method reportAcceptFinishedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 980
    monitor-enter p0

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 982
    if-eqz v0, :cond_0

    .line 983
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_3

    .line 984
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 985
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 986
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    .line 987
    if-eqz p2, :cond_1

    .line 988
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 989
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->processErrorForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 990
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    .line 1012
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1013
    return-void

    .line 993
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 994
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 995
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    move-result-object v1

    .line 996
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitorIsRunning:Z

    if-eqz v2, :cond_2

    .line 1001
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->updateLocalAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Z)V

    .line 1004
    :cond_2
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForPendingTransfersWithCtrlState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    goto :goto_0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1008
    :cond_3
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "acceptPushWithError was called unexpectedly on composite with ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1009
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  The result of this operation will not be tracked by its controller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method reportChangeToCompositeWithID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 771
    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 773
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_isInSync:Z

    .line 774
    if-nez v0, :cond_1

    .line 775
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;-><init>()V

    .line 776
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    .line 777
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 778
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->getDelayPushBySeconds()I

    move-result v1

    if-lez v1, :cond_2

    .line 784
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->getDelayPushBySeconds()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->delayPushBySeconds(ILcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 790
    :goto_1
    monitor-exit p0

    .line 791
    return-void

    .line 779
    :cond_1
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-nez v1, :cond_0

    .line 780
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    goto :goto_0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 787
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->requestPushForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public reportDeletedComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 3

    .prologue
    .line 821
    monitor-enter p0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 823
    if-eqz v0, :cond_1

    .line 824
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->updateLocalAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Z)V

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    .line 832
    :cond_1
    monitor-exit p0

    .line 833
    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportDiscardedPulledBranchForCompositeWithID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1074
    if-eqz v0, :cond_0

    .line 1075
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseResolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_0

    .line 1076
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 1077
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1078
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1081
    :cond_0
    monitor-exit p0

    .line 1082
    return-void

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportDiscardedPushedBranchForCompositeWithID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1058
    monitor-enter p0

    .line 1059
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_0

    .line 1062
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 1063
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1064
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1067
    :cond_0
    monitor-exit p0

    .line 1068
    return-void

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportDownloadComponentsFinishedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 968
    monitor-enter p0

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 970
    if-eqz v0, :cond_0

    .line 971
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPullingComponents:Z

    .line 972
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->reportLocalStorageChangeToCompositeWithID(Ljava/lang/String;)V

    .line 973
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 975
    :cond_0
    monitor-exit p0

    .line 976
    return-void

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportDownloadComponentsStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 2

    .prologue
    .line 958
    monitor-enter p0

    .line 959
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 960
    if-eqz v0, :cond_0

    .line 961
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPullingComponents:Z

    .line 963
    :cond_0
    monitor-exit p0

    .line 964
    return-void

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportLocalStorageChangeToCompositeWithID(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 808
    monitor-enter p0

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 810
    if-eqz v0, :cond_0

    .line 811
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    .line 813
    :cond_0
    monitor-exit p0

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportPullFinishedForCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 925
    monitor-enter p0

    .line 926
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 927
    if-eqz v0, :cond_0

    .line 928
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_0

    .line 929
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 930
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 931
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 932
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    .line 933
    if-eqz p2, :cond_1

    .line 934
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 935
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->processErrorForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 936
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    .line 953
    :cond_0
    :goto_0
    monitor-exit p0

    .line 954
    return-void

    .line 938
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    if-nez v1, :cond_2

    .line 942
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 943
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 944
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForPendingTransfersWithCtrlState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    goto :goto_0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 947
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 948
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseResolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 949
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method reportPullStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 4

    .prologue
    .line 897
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 899
    if-eqz v0, :cond_0

    .line 900
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_3

    .line 901
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    if-nez v1, :cond_1

    .line 902
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    .line 903
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 920
    :cond_0
    :goto_0
    monitor-exit p0

    .line 921
    return-void

    .line 908
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 911
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 912
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 916
    :cond_3
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pullComposite was called unexpectedly on composite with ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  The pull request will not be tracked by its controller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method reportPushFinishedForCompositeWithID(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 865
    monitor-enter p0

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 867
    if-eqz v0, :cond_0

    .line 868
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_0

    .line 869
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 870
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 871
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 872
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    .line 873
    if-eqz p2, :cond_1

    .line 874
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 875
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->processErrorForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 876
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    .line 892
    :cond_0
    :goto_0
    monitor-exit p0

    .line 893
    return-void

    .line 878
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v1

    if-nez v1, :cond_2

    .line 882
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 883
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForPendingTransfersWithCtrlState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 886
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 887
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 888
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method reportPushStartedForCompositeWithID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 4

    .prologue
    .line 837
    monitor-enter p0

    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 839
    if-eqz v0, :cond_0

    .line 840
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_3

    .line 841
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    if-nez v1, :cond_1

    .line 842
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    .line 843
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 860
    :cond_0
    :goto_0
    monitor-exit p0

    .line 861
    return-void

    .line 848
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 849
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 851
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancel()V

    .line 852
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 856
    :cond_3
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pushComposite was called unexpectedly on composite with ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  The push request will not be tracked by its controller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method reportResolveFinishedForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 1017
    monitor-enter p0

    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 1019
    if-eqz v0, :cond_0

    .line 1020
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseResolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v1, v2, :cond_5

    .line 1021
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForDelegate:Z

    .line 1022
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 1023
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    .line 1024
    if-eqz p2, :cond_1

    .line 1025
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 1026
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->processErrorForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 1027
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    .line 1053
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1054
    return-void

    .line 1030
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 1031
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->updateLocalAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Z)V

    .line 1034
    :cond_2
    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPull:Z

    if-eqz v1, :cond_3

    .line 1035
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1036
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    goto :goto_0

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1038
    :cond_3
    :try_start_1
    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    if-eqz v1, :cond_4

    .line 1039
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1040
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    goto :goto_0

    .line 1043
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 1044
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    goto :goto_0

    .line 1049
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolvePullWithBranch:withError was called unexpectedly on composite with ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1050
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  The result of this operation will not be tracked by its controller."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1049
    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method requestPushForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-ne v0, v1, :cond_1

    .line 796
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 797
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 798
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    .line 799
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    if-nez v0, :cond_0

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->hasPendingPush:Z

    goto :goto_0
.end method

.method public resumeSyncForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 680
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "CSDK::Release::DCX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inside resumeSyncForComposite compositeId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    if-eqz v0, :cond_2

    .line 682
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->isPaused:Z

    .line 683
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->getIgnoreWaitingForCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    .line 687
    :cond_1
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-eq v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->waitingForCancel:Z

    if-nez v1, :cond_2

    .line 688
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->dispatchRequestForCompositeWithControllerState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;)V

    .line 691
    :cond_2
    monitor-exit p0

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanLocalComposites(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 505
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "CSDK::Release::DCX"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inside scanLocalComposites composites.size() ="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    move-object v5, v0

    .line 509
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 511
    if-eqz v5, :cond_1

    invoke-interface {v5, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;->controllerWillTrackLocalComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    move-result-object v3

    .line 517
    if-eqz v3, :cond_2

    .line 518
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    .line 523
    if-nez v1, :cond_3

    .line 524
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;-><init>()V

    .line 525
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->compositeId:Ljava/lang/String;

    .line 526
    if-eqz v3, :cond_7

    iget-object v7, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    if-eqz v7, :cond_7

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->href:Ljava/lang/String;

    .line 527
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_compositeCtrlStateMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_3
    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    if-nez v3, :cond_4

    .line 532
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPushed()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 533
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 534
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    .line 539
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->discardPulledBranch()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :cond_4
    :goto_4
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setController(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;)V

    goto :goto_2

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    .line 505
    goto/16 :goto_0

    :cond_6
    move-object v5, v4

    .line 507
    goto :goto_1

    :cond_7
    move-object v3, v4

    .line 526
    goto :goto_3

    .line 543
    :cond_8
    :try_start_3
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 547
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    goto :goto_4

    .line 548
    :cond_9
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "modified"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 549
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "pendingDelete"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 550
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeArchivalState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "pendingArchival"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 551
    :cond_a
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 552
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    goto :goto_4

    .line 554
    :cond_b
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 555
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getLocalStorageBytesConsumed()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;->bytesConsumedByComposite:J

    goto :goto_4

    .line 561
    :cond_c
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitorIsRunning:Z

    if-eqz v0, :cond_f

    .line 562
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "CSDK::Release::DCX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inside scanLocalComposites _scannedLocalAssets.size() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    .line 565
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->updateLocalAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Z)V

    goto :goto_5

    .line 568
    :cond_e
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_scannedLocalAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 570
    :cond_f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 571
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->restartSyncCycle()V

    .line 572
    const/4 v0, 0x1

    return v0

    .line 540
    :catch_0
    move-exception v1

    goto/16 :goto_4
.end method

.method public scanLocalCompositesInPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 590
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    const/4 v1, 0x0

    .line 592
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 595
    :cond_0
    if-nez v1, :cond_1

    .line 604
    :goto_0
    return v0

    .line 597
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 598
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 599
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 600
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v4

    .line 601
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    :cond_3
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->scanLocalComposites(Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDelayPushBySeconds(I)V
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iput p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_delayPushBySeconds:I

    .line 269
    monitor-exit p0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setIgnoreWaitingForCancel(Z)V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_ignoreWaitingForCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;)V
    .locals 4

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    .line 316
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_mode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    .line 317
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$19;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$dcx$AdobeDCXControllerMode:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 349
    monitor-exit p0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-eq v1, v0, :cond_3

    .line 320
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitorIsRunning:Z

    if-nez v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->startSyncGroupMonitor()V

    .line 323
    :cond_1
    const/4 v0, 0x1

    .line 351
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->restartSyncCycle()V

    goto :goto_0

    .line 326
    :cond_3
    :try_start_1
    monitor-exit p0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 330
    :pswitch_1
    :try_start_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v1, v2, :cond_4

    .line 331
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->cancelActiveRequests()V

    .line 332
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V

    goto :goto_1

    .line 334
    :cond_4
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-ne v1, v2, :cond_5

    .line 335
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->startSyncGroupMonitor()V

    goto :goto_1

    .line 338
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 342
    :pswitch_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    if-eq v1, v2, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->stopSyncGroupMonitor()V

    .line 344
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->cancelActiveRequests()V

    .line 345
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->checkAndNotifyForSyncCompletion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setServerPollingFrequency(J)V
    .locals 1

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->setUpdateFrequency(J)V

    .line 388
    monitor-exit p0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncAllowedByNetworkStatusMask(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 432
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 440
    :cond_0
    :goto_0
    monitor-exit p0

    .line 441
    return-void

    .line 435
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 437
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncOrder(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->setSyncOrder(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;)V

    .line 459
    return-void
.end method

.method public setSyncOrderBy(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;)V
    .locals 3

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_syncInProgress:Z

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "CSDK::Release::DCX"

    const-string/jumbo v2, "Warning: setting syncOrderBy while a sync is in progress will not affect the active syncing process."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->setSyncOrderBy(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;)V

    .line 478
    return-void
.end method

.method public unInitialize()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_unInitialized:Z

    if-nez v0, :cond_1

    .line 234
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->destorySharedInstance()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_sharedNetworkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 242
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->shutdown()V

    .line 245
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->clearInstanceCache()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->_unInitialized:Z

    .line 248
    :cond_1
    return-void

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1839
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 1840
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkReachabilityStatusKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;

    .line 1841
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;->networkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 1842
    return-void
.end method
