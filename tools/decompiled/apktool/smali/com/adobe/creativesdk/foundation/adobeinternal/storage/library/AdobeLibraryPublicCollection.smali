.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;
.source "AdobeLibraryPublicCollection.java"


# instance fields
.field _isSyncing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_isSyncing:Z

    .line 27
    return-void
.end method

.method static createlibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected addLibrary(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;)V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->setCollaborationRole(Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;)V

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->addLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0
.end method

.method public addLibraryWithId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPull(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method public canLoadLibraryWithURL(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    const-string/jumbo v1, "libraries"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->getServiceForSchemaId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method deleteLibrary()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public initWithRootFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->initWithRootFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method initalizeMonitor(Z)Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncing()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_isSyncing:Z

    return v0
.end method

.method startMonitor()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method stopMonitor()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public sync()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->sync(Z)Z

    move-result v0

    return v0
.end method

.method sync(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    monitor-exit p0

    .line 117
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_isSyncing:Z

    if-nez v0, :cond_2

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_isSyncing:Z

    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->getLibraries()Ljava/util/ArrayList;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 80
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->syncStartedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 82
    if-lez v3, :cond_1

    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 84
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;

    invoke-direct {v4, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$2;

    invoke-direct {v5, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->hasLibraryChangedOnServer(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 114
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSync(Z)V

    .line 117
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public syncCompleted()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_isSyncing:Z

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
