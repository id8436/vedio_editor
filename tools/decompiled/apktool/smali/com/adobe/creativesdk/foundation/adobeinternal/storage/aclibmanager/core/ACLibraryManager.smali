.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;
.source "ACLibraryManager.java"


# instance fields
.field private _csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field private _eventBusToPublishOn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

.field private _firstSyncDone:Z

.field private _startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_firstSyncDone:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    return-object v0
.end method

.method private checkAndUnsuspendLibraryManager()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isSyncSuspendedDueToAuthenticationError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->unsuspendSyncDueToNewAuthenticationStatus()V

    .line 127
    :cond_0
    return-void
.end method

.method private checkNCreateInitialDefaultLibrary()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_defaultLibName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    .line 298
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->libraryWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 300
    :cond_0
    return-void
.end method

.method private createNStartAdobeLibraryManager()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;
    .locals 6

    .prologue
    .line 134
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v2

    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_almHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->delegateHandler:Landroid/os/Handler;

    .line 138
    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 141
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_designLibrariesFolder:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->startWithFolder(Ljava/lang/String;)Z

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_downloadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->setDownloadLibraryPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 148
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_uploadPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->setUploadLibraryPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 149
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;->_almStartupOptions:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    invoke-virtual {v2, p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->registerDelegate(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;)V

    .line 151
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->setSyncEnabled(Z)V

    .line 153
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSyncStatus()Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->isSyncing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->syncStarted()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :cond_1
    return-object v2

    .line 157
    :catch_0
    move-exception v0

    .line 159
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed with AdobeLibraryException in ACLibraryManager createLibraryManager method error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "   and storage session was : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    const-string/jumbo v0, " =VALID "

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v0, " =INVALID "

    goto :goto_1

    .line 157
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0
.end method

.method public static createNewInstance(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->getDefault()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->createNewInstance(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    move-result-object v0

    return-object v0
.end method

.method public static createNewInstance(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ACLibraryManager Failed to create instance : User not authenticated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;-><init>()V

    .line 55
    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->start(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;)V

    .line 57
    return-object v0
.end method

.method private static isAuthenticated()Z
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil;->appHasAnyAuthenticatedUser()Z

    move-result v0

    return v0
.end method

.method private postGenericEvent(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_eventBusToPublishOn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->post(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method private postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_eventBusToPublishOn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;->post(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method private start(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;)V
    .locals 1

    .prologue
    .line 65
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_eventBusToPublishOn:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/ACEventBus;

    .line 66
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_startUpOptions:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManagerOptions;

    .line 67
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->createNStartAdobeLibraryManager()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    .line 68
    return-void
.end method


# virtual methods
.method public createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->syncLibrary()V

    .line 308
    :cond_0
    return-object v0
.end method

.method public deleteElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 388
    invoke-static {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->deleteElement(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z

    move-result v0

    .line 389
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->syncLibrary()V

    .line 390
    return v0
.end method

.method public deleteLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    .line 358
    :try_start_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil;->isLibraryCollaboratedWithYou(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->leaveSharedLibraryWithId(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->libraryWasDeleted(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->syncLibrary()V

    .line 371
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 361
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->deleteLibraryWithId(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 365
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public elementWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 186
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 187
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 189
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 190
    return-void
.end method

.method public elementWasRemoved(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementRemoved:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 196
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 197
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 199
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 200
    return-void
.end method

.method public elementWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 176
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 177
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 179
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 180
    return-void
.end method

.method public forceSync()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->syncLibrary()V

    .line 77
    return-void
.end method

.method public forceSync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSyncStatus()Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->isSyncing()Z

    move-result v1

    aput-boolean v1, v0, v2

    .line 88
    aget-boolean v1, v0, v2

    if-nez v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sync()Z

    .line 91
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;->ACLibrarySyncFinishedNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;

    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$1;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;->ACLibrarySyncFinishedNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;

    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;[ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerSyncDelegate;)V

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    goto :goto_0
.end method

.method public getLastModifiedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 8

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 315
    :cond_0
    const/4 v2, 0x0

    .line 325
    :cond_1
    return-object v2

    .line 317
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 319
    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 320
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 321
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getModified()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getModified()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    move-object v2, v0

    .line 319
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getLibraries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLibrariesSortedByModifiedDate()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    .line 331
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$3;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 340
    return-object v0
.end method

.method public getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    return-object v0
.end method

.method public isFirstEverSyncWithServerDone()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    .line 264
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_firstSyncDone:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    .line 263
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public libraryPreDelete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method protected libraryPreReadabilityChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public libraryWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 221
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 222
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 223
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 224
    return-void
.end method

.method public libraryWasDeleted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryDeleted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 229
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 230
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 231
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 232
    return-void
.end method

.method public libraryWasUnshared(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUnShared:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 237
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 238
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 239
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 240
    return-void
.end method

.method public libraryWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 207
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 208
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 209
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 211
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 212
    return-void
.end method

.method protected onSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method protected onSyncProgress(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;J)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public renameLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 375
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 376
    invoke-static {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->renameLibrary(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z

    .line 377
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->syncLibrary()V

    .line 380
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryRenamed:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 381
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 382
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 384
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shutDown()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, " LibraryManager- shutDown"

    const-string/jumbo v2, "ACLibraryManager-shutDOwn"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->deregisterDelegate(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)V

    .line 347
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shutdown()V

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    .line 351
    return-void
.end method

.method protected syncAvailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method protected syncFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_firstSyncDone:Z

    .line 271
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncFinished:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 272
    iput-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 273
    iput-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 274
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 275
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;->ACLibrarySyncFinishedNotification:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager$ACLibraryNotificationID;

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 280
    return-void
.end method

.method public syncLibrary()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->checkAndUnsuspendLibraryManager()V

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->_csdkLibraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sync()Z

    .line 73
    return-void
.end method

.method public syncStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncStarted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 255
    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 256
    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 257
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 259
    return-void
.end method

.method protected syncUnavailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkNotReachable:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    if-ne p1, v0, :cond_0

    .line 402
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncUnavailableDueToNoInternat:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;)V

    .line 403
    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->elementId:Ljava/lang/String;

    .line 404
    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->libraryId:Ljava/lang/String;

    .line 405
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postNotification(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerSyncErrorEvent;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerSyncErrorEvent;-><init>()V

    .line 408
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->postGenericEvent(Ljava/lang/Object;)V

    goto :goto_0
.end method
