.class public Lcom/adobe/premiereclip/library/GeneralLibraryManager;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;
.source "GeneralLibraryManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;


# static fields
.field public static DEFAULT_LIB_NAME:Ljava/lang/String; = null

.field public static final kBulkLibraryUpdateFinished:Ljava/lang/String; = "BulkElementUpdateFinished"

.field public static final kBulkLibraryUpdateStarted:Ljava/lang/String; = "BulkElementUpdateStarted"

.field public static final kElementAdded:Ljava/lang/String; = "elementAdded"

.field public static final kElementRemoved:Ljava/lang/String; = "elementRemoved"

.field public static final kElementUpdated:Ljava/lang/String; = "elementUpdated"

.field public static final kLibraryAdded:Ljava/lang/String; = "libraryAdded"

.field public static final kLibraryChanged:Ljava/lang/String; = "libraryChanged"

.field public static final kLibraryDeleted:Ljava/lang/String; = "libraryDeleted"

.field public static final kLocalLibraryCreated:Ljava/lang/String; = "localLibraryCreated"

.field public static final kSyncCompleteNotification:Ljava/lang/String; = "SyncCompleteNotification"

.field public static final kSyncIssueNotification:Ljava/lang/String; = "librarySyncIssue"

.field public static final kSyncStartedNotification:Ljava/lang/String; = "syncStarted"


# instance fields
.field private _observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

.field private context:Landroid/content/Context;

.field private currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private elementFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

.field private firstSyncDone:Z

.field private libraryDir:Ljava/lang/String;

.field private libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field private options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

.field private pendingInitialLibraryCreate:Z

.field private syncStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "My Library"

    sput-object v0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->DEFAULT_LIB_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted:Z

    return-void
.end method

.method private checkAndUnsuspendLibraryManager()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isSyncSuspendedDueToAuthenticationError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->unsuspendSyncDueToNewAuthenticationStatus()V

    .line 278
    :cond_0
    return-void
.end method

.method private createInitialLibrary()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSyncStatus()Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;

    move-result-object v0

    .line 186
    const-class v1, Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last sync time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->getLastSyncTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->firstSyncDone:Z

    if-nez v0, :cond_2

    .line 189
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->pendingInitialLibraryCreate:Z

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->pendingInitialLibraryCreate:Z

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLastModifiedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 197
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLastModifiedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setCurrentLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getElements()Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private createLibraryManager()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v2

    .line 108
    if-nez v2, :cond_1

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->startWithFolder(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    if-nez v1, :cond_2

    .line 118
    const-class v0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error starting Adobe Library Manager:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 124
    :goto_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSyncStatus()Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->isSyncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted()V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    invoke-virtual {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->registerDelegate(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;)V

    .line 129
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;->printStackTrace()V

    :cond_1
    move v1, v2

    goto :goto_0

    .line 121
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->setSyncEnabled(Z)V

    goto :goto_1
.end method

.method public static getNewInstance(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Ljava/lang/String;)Lcom/adobe/premiereclip/library/GeneralLibraryManager;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;-><init>()V

    .line 84
    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->init(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Ljava/lang/String;)V

    .line 85
    return-object v0
.end method

.method private init(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->firstSyncDone:Z

    .line 405
    iput-boolean v1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->pendingInitialLibraryCreate:Z

    .line 407
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setOptions(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;)V

    .line 408
    invoke-virtual {p0, p2}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setElementTypesFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)V

    .line 409
    invoke-virtual {p0, p3}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setLibraryDir(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->refreshAccessTokenWithSync(Z)V

    .line 414
    :cond_0
    return-void
.end method

.method private postRefresh(Z)V
    .locals 1

    .prologue
    .line 281
    const-string/jumbo v0, "TokenRefreshedFromDL"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setAdobeID(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->checkAndUnsuspendLibraryManager()V

    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 290
    :cond_0
    return-void
.end method

.method private refreshAccessTokenWithSync(Z)V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postRefresh(Z)V

    .line 296
    :cond_0
    return-void
.end method

.method private setAdobeID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    if-eqz p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->createLibraryManager()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->pendingInitialLibraryCreate:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->createInitialLibrary()V

    .line 174
    :cond_1
    return-void
.end method


# virtual methods
.method public HTTPServiceAuthenticationDidFail(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public HTTPServiceDidDisconnect(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public HTTPServiceIsActive(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public declared-synchronized addObserver(Ljava/util/Observer;)V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;-><init>(Lcom/adobe/premiereclip/library/GeneralLibraryManager;Lcom/adobe/premiereclip/library/GeneralLibraryManager$1;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public countAllAssetsInLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)I
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const/4 v0, -0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCountOfAllElements()I

    move-result v0

    goto :goto_0
.end method

.method public countAssetsInLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 384
    :try_start_0
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p1, p2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 248
    invoke-static {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->deleteElement(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 250
    return v0
.end method

.method public deleteLibrary(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->leaveSharedLibraryWithId(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLastModifiedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->setCurrentLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 231
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 219
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->deleteLibraryWithId(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-class v1, Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error deleting Library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public elementWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 433
    iput-object p2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 434
    iput-object p1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 435
    const-string/jumbo v1, "elementAdded"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 437
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 438
    return-void
.end method

.method public elementWasRemoved(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 444
    iput-object p2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 445
    iput-object p1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 446
    const-string/jumbo v1, "elementRemoved"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 448
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public elementWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 420
    iput-object p2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 421
    iput-object p1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 422
    const-string/jumbo v1, "elementUpdated"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 424
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 323
    .line 324
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v6

    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-nez v0, :cond_1

    move v1, v2

    move v3, v2

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 330
    if-eqz v5, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move v3, v4

    .line 329
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 338
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    if-nez v3, :cond_5

    .line 339
    if-eqz v1, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v4

    .line 338
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v5

    .line 336
    goto :goto_1

    .line 344
    :cond_5
    if-nez v3, :cond_6

    .line 345
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLastModifiedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method

.method public getCurrentLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    if-nez v1, :cond_1

    .line 255
    const-class v1, Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Library does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    const-class v1, Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "User is not authenticated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adobe/premiereclip/util/CloudUtil;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->elementFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastModifiedLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 8

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 309
    :cond_0
    const/4 v2, 0x0

    .line 319
    :cond_1
    return-object v2

    .line 311
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 313
    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 314
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 315
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getModified()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getModified()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    move-object v2, v0

    .line 313
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
    .line 299
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLibraryById(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    return-object v0
.end method

.method public getLibraryName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollaborated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_PRIVATE:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-eq v0, v1, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollaboratedWithYou(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstSyncDone()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->firstSyncDone:Z

    return v0
.end method

.method public isSyncStarted()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted:Z

    return v0
.end method

.method public libraryPreDelete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method public libraryPreReadabilityChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 485
    return-object p1
.end method

.method public libraryWasAdded(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 463
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 464
    iput-object p1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 465
    const-string/jumbo v1, "libraryAdded"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 466
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public libraryWasDeleted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 471
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 472
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 473
    iput-object p1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->libraryId:Ljava/lang/String;

    .line 474
    const-string/jumbo v1, "libraryDeleted"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 475
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public libraryWasUnshared(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public libraryWasUpdated(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 453
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 454
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 455
    iput-object p1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 456
    const-string/jumbo v1, "libraryChanged"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 457
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public onSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted:Z

    .line 543
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 544
    const-string/jumbo v1, "librarySyncIssue"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 545
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public onSyncProgress(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;J)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public declared-synchronized postNotification(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;->markChanged()V

    .line 162
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeObserver(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->_observable:Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;->deleteObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renameLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :try_start_0
    invoke-static {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->renameLibrary(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 244
    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    .line 362
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    monitor-exit p0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_1
    :try_start_1
    const-string/jumbo v0, "BulkElementUpdateStarted"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncLibrary()V

    .line 359
    iput-object p1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 360
    const-string/jumbo v0, "BulkElementUpdateFinished"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 361
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setElementTypesFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->elementFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    .line 94
    return-void
.end method

.method public setLibraryDir(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryDir:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setOptions(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->options:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 90
    return-void
.end method

.method public shutDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shutdown()V

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->pendingInitialLibraryCreate:Z

    .line 180
    iput-object v1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->currentLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 181
    iput-object v1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    .line 182
    return-void
.end method

.method public syncAvailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public syncFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->firstSyncDone:Z

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted:Z

    .line 508
    iget-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->pendingInitialLibraryCreate:Z

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->createInitialLibrary()V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->DEFAULT_LIB_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 514
    :cond_2
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 515
    const-string/jumbo v1, "SyncCompleteNotification"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 516
    iput-object v2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 517
    iput-object v2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 518
    iput-object v2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->libraryId:Ljava/lang/String;

    .line 519
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method public syncLibrary()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->refreshAccessTokenWithSync(Z)V

    .line 400
    iget-object v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->libraryManager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sync()Z

    .line 401
    return-void
.end method

.method public syncStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted:Z

    .line 496
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 497
    const-string/jumbo v1, "syncStarted"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 498
    iput-object v2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->elementId:Ljava/lang/String;

    .line 499
    iput-object v2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 500
    iput-object v2, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->libraryId:Ljava/lang/String;

    .line 501
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public syncUnavailable(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->syncStarted:Z

    .line 530
    new-instance v0, Lcom/adobe/premiereclip/library/LibraryNotification;

    invoke-direct {v0}, Lcom/adobe/premiereclip/library/LibraryNotification;-><init>()V

    .line 531
    const-string/jumbo v1, "librarySyncIssue"

    iput-object v1, v0, Lcom/adobe/premiereclip/library/LibraryNotification;->notificationType:Ljava/lang/String;

    .line 532
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager;->postNotification(Ljava/lang/Object;)V

    .line 533
    return-void
.end method
