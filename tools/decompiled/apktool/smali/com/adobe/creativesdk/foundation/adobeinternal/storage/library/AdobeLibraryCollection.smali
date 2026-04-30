.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;
.super Ljava/lang/Object;
.source "AdobeLibraryCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;


# static fields
.field private static final ADOBE_LIBRARY_ROOT_FOLDER_KEY:Ljava/lang/String; = "ADOBE_LIBRARY_ROOT_FOLDER_KEY"

.field private static final ADOBE_PUBLIC_LIBRARY_ROOT_FOLDER_KEY:Ljava/lang/String; = "ADOBE_PUBLIC_LIBRARY_ROOT_FOLDER_KEY"

.field private static final AdobeLibraryLibrariesFolderName:Ljava/lang/String; = "libraries"

.field private static final AdobeLibraryReadOnlyClearedFileName:Ljava/lang/String; = "clear"

.field private static final AdobeLibraryRenditionsFolderName:Ljava/lang/String; = "renditions"


# instance fields
.field _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field _collaborationRoleStateForNewLibs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;",
            ">;"
        }
    .end annotation
.end field

.field _collaborationStateForNewLibs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;",
            ">;"
        }
    .end annotation
.end field

.field _deletedLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation
.end field

.field private _isPolling:Z

.field private _lastSyncTime:Ljava/util/Date;

.field private _libraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ">;"
        }
    .end annotation
.end field

.field protected _listLock:Ljava/util/concurrent/locks/ReentrantLock;

.field _manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field public _monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

.field public _monitorStarted:Z

.field private _monitorUpdating:Z

.field private _rootLibrariesURL:Ljava/lang/String;

.field private _rootRenditionsURL:Ljava/lang/String;

.field public _syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

.field private bookmarkManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

.field bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private getCloudIDFromFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->trimmedAdobeId()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 303
    if-eq v1, v2, :cond_0

    .line 304
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 305
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 307
    if-eq v1, v2, :cond_0

    .line 308
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initVars()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    .line 164
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    .line 165
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootRenditionsURL:Ljava/lang/String;

    .line 168
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    .line 169
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    .line 171
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorUpdating:Z

    .line 172
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_isPolling:Z

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationStateForNewLibs:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationRoleStateForNewLibs:Ljava/util/HashMap;

    .line 176
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    .line 177
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 178
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 179
    return-void
.end method

.method private trimmedAdobeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method protected addLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 467
    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    const-string/jumbo v1, "libraryWasAdded"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 482
    return-void

    .line 478
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public assetWasAdded(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 3

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPull(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationStateForNewLibs:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationRoleStateForNewLibs:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1055
    throw v0
.end method

.method public assetWasDeleted(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 2

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-nez v0, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1011
    :goto_1
    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToDelete:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1009
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1021
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->cancelPushForLibrary(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->addLibraryToPendingDelete(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1027
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->handleDeleteLibraryWithId(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    goto :goto_0

    .line 1025
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1026
    throw v0
.end method

.method public assetWasUpdated(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 4

    .prologue
    .line 946
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-nez v1, :cond_1

    .line 989
    :cond_0
    :goto_0
    return-void

    .line 949
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPull(Ljava/lang/String;)V

    .line 952
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v2

    .line 953
    if-eqz v2, :cond_3

    .line 954
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v3

    if-eq v1, v3, :cond_2

    move-object v1, v2

    .line 955
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCollaborationType(Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;)V

    .line 957
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 963
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    const-string/jumbo v3, "libraryWasUpdated"

    invoke-virtual {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 965
    :cond_2
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaborationRole()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    move-result-object v3

    if-eq v1, v3, :cond_0

    move-object v1, v2

    .line 966
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCollaborationRoleType(Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;)V

    .line 968
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 974
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    const-string/jumbo v3, "libraryWasUpdated"

    invoke-virtual {v1, v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    goto :goto_0

    .line 980
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 982
    :try_start_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationStateForNewLibs:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationRoleStateForNewLibs:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;->collaboration_role:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 986
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 987
    throw v1

    .line 969
    :catch_0
    move-exception v1

    goto :goto_2

    .line 958
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public canLoadLibraryWithURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSync()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->cancelAllTransfers()V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->closeStream()V

    .line 820
    :cond_1
    return-void
.end method

.method protected createFolders(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 210
    .line 212
    const-string/jumbo v0, ""

    .line 213
    if-eqz p2, :cond_e

    .line 214
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getGUID()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 215
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v11

    .line 217
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    const-string/jumbo v0, "ADOBE_PUBLIC_LIBRARY_ROOT_FOLDER_KEY"

    move-object v10, v0

    .line 223
    :goto_1
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLRU:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 224
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v1

    const-string/jumbo v2, "LIBRARY_MANAGER_PRIVATE_DATA"

    const/16 v3, 0x64

    const-wide/high16 v4, 0x41a0000000000000L    # 1.34217728E8

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->configureCache(Ljava/lang/String;IDLjava/util/EnumSet;)V

    .line 225
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "LIBRARY_MANAGER_PRIVATE_DATA"

    invoke-virtual {v0, v7, v10, v11, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    if-eqz v0, :cond_3

    .line 227
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    :goto_2
    move v6, v0

    move v0, v9

    .line 245
    :goto_3
    if-nez v6, :cond_0

    .line 246
    const-string/jumbo v1, "libraries"

    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    .line 247
    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    const-string/jumbo v5, "LIBRARY_MANAGER_PRIVATE_DATA"

    move-object v2, v7

    move-object v3, v10

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v8

    .line 254
    :goto_4
    if-nez v0, :cond_1

    .line 255
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v8

    .line 260
    :cond_1
    :goto_5
    if-eqz v0, :cond_6

    .line 261
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalRootCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v12, p1, v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 220
    :cond_2
    const-string/jumbo v0, "ADOBE_LIBRARY_ROOT_FOLDER_KEY"

    move-object v10, v0

    goto :goto_1

    .line 230
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "LIBRARY_MANAGER_PRIVATE_DATA"

    invoke-virtual {v0, v10, v10, v11, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    if-eqz v0, :cond_d

    .line 232
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getCloudIDFromFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 234
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v8

    .line 237
    :goto_6
    :try_start_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "LIBRARY_MANAGER_PRIVATE_DATA"

    invoke-virtual {v0, v10, v10, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    const-string/jumbo v5, "LIBRARY_MANAGER_PRIVATE_DATA"

    move-object v3, v10

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException; {:try_start_2 .. :try_end_2} :catch_3

    move v0, v6

    goto :goto_2

    .line 241
    :catch_0
    move-exception v0

    move v6, v9

    :goto_7
    move v0, v8

    .line 242
    goto :goto_3

    :cond_4
    move v0, v9

    .line 253
    goto :goto_4

    :cond_5
    move v0, v9

    .line 257
    goto :goto_5

    .line 264
    :cond_6
    const-string/jumbo v0, "renditions"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootRenditionsURL:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootRenditionsURL:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v8

    .line 266
    :goto_8
    if-nez v0, :cond_b

    .line 267
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootRenditionsURL:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7

    move v9, v8

    .line 272
    :cond_7
    :goto_9
    if-eqz v9, :cond_9

    .line 273
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLocalRootCreateFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v12, p1, v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    :cond_8
    move v0, v9

    .line 265
    goto :goto_8

    .line 278
    :cond_9
    const-string/jumbo v0, "clear"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 281
    :try_start_3
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageFileUtils;->recursivelyClearAnyReadOnlyFlagsInDirectory(Ljava/lang/String;)Z
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_1

    .line 288
    :goto_a
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-nez v0, :cond_a

    .line 296
    :cond_a
    :goto_b
    return v8

    .line 282
    :catch_1
    move-exception v1

    goto :goto_a

    .line 291
    :catch_2
    move-exception v0

    goto :goto_b

    .line 241
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_b
    move v9, v0

    goto :goto_9

    :cond_c
    move v6, v9

    goto :goto_6

    :cond_d
    move v0, v9

    goto/16 :goto_2

    :cond_e
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-object v2

    .line 499
    :cond_0
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-direct {v1, p1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    .line 504
    :goto_1
    monitor-enter p0

    .line 505
    if-eqz v1, :cond_1

    .line 506
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 508
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSyncOnCommit()V

    .line 513
    :cond_2
    const-string/jumbo v0, "createLibrary"

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsReporter;->trackAction(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 515
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppCreate:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 516
    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "library"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getAllElements()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string/jumbo v0, "success"

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    :goto_2
    move-object v2, v1

    .line 523
    goto :goto_0

    .line 500
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 501
    goto :goto_1

    .line 508
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 520
    :cond_3
    const-string/jumbo v0, "failure"

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public deleteLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/Boolean;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v1, 0x1

    .line 603
    if-eqz p1, :cond_1

    .line 605
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, "library"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getAllElements()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSLibraryEvent;->trackContentInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetBinding()V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 620
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :goto_1
    move-object v1, p1

    .line 665
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->deleteLibrary()Z

    move-result v1

    .line 670
    :try_start_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 671
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 673
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 679
    :cond_1
    return v1

    .line 614
    :catch_0
    move-exception v1

    .line 615
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 623
    throw v1

    :cond_2
    move-object v1, p1

    .line 627
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->isBound()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 630
    :try_start_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 632
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 635
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v1, :cond_0

    .line 637
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v1

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v1, v3, :cond_3

    .line 638
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForLeave(Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    throw v1

    .line 640
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPush(Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 648
    :try_start_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v1, :cond_5

    .line 650
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToPull:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 651
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToPush:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 652
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mConflictedLibs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 653
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mComponentsToPull:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 655
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsPendingDelete:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 657
    :cond_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 659
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 660
    throw v1

    .line 673
    :catchall_3
    move-exception v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 674
    throw v1
.end method

.method public deleteLibraryWithId(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 576
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v0, v3, :cond_2

    .line 580
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorCannotDeleteLibrarySharedWithUser:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 585
    :cond_2
    const/4 v0, 0x0

    .line 587
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->deleteLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v6, v0

    move-object v5, v2

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSyncOnCommit()V

    .line 595
    :cond_3
    const-string/jumbo v0, "deleteLibrary"

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsReporter;->trackAction(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 597
    return v6

    .line 588
    :catch_0
    move-exception v5

    move v6, v0

    .line 589
    goto :goto_0
.end method

.method public getBookmarkManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;-><init>()V

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->initWithCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    return-object v0
.end method

.method public getBookmarks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarkManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->bookmarks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-object v1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 452
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v3

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-eq v3, v4, :cond_3

    .line 453
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->created()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->created()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    :cond_1
    :goto_2
    move-object v1, v0

    .line 457
    goto :goto_1

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_2
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
    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->updateLibraries()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->updateLibraries()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 417
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 431
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    :goto_0
    return-object v0

    .line 422
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 424
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 431
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    const/4 v0, 0x0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    throw v0
.end method

.method public getRootLibrariesURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRootRenditionsURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootRenditionsURL:Ljava/lang/String;

    return-object v0
.end method

.method public initSync(Z)Z
    .locals 1

    .prologue
    .line 761
    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->initializeMonitor(Z)Z

    move-result v0

    .line 765
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initWithRootFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->initVars()V

    .line 113
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->createFolders(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 118
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 121
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeCommunity:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    if-ne p3, v0, :cond_2

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->isJUnitTest()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    const/4 v1, 0x0

    .line 124
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->getTempServiceForURL(Ljava/net/URL;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "libraries"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    move-result-object v0

    .line 153
    :goto_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    .line 154
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    invoke-virtual {v1, p0, v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->initWithCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Ljava/lang/String;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->updateLibraries()V

    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "BOOKMARK"

    const-string/jumbo v3, "URL Creation execption"

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 133
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 137
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->getTempServiceForURL(Ljava/net/URL;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v1

    .line 139
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    .line 140
    const-string/jumbo v2, "files"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->setUpService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    .line 141
    const-string/jumbo v2, "archive"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->setUpService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    .line 142
    const-string/jumbo v2, "assets"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->setUpService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    .line 143
    const-string/jumbo v2, "libraries"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;->setUpService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 145
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 146
    invoke-virtual {p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    .line 147
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "StorageSession-endpoint failure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 150
    :cond_3
    invoke-virtual {p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    goto/16 :goto_2
.end method

.method initializeMonitor(Z)Z
    .locals 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v0

    if-nez v0, :cond_1

    .line 832
    :cond_0
    const/4 v0, 0x0

    .line 846
    :goto_0
    return v0

    .line 834
    :cond_1
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_isPolling:Z

    .line 835
    const-string/jumbo v0, "adobe-libraries"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->assetMonitorForSyncGroup(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXSyncGroupMonitorDelegate;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    .line 837
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->getAutoSyncInterval()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->setUpdateFrequency(J)V

    .line 840
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 843
    monitor-enter p0

    .line 844
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->startMonitor()V

    .line 845
    monitor-exit p0

    .line 846
    const/4 v0, 0x1

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPolling()Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_isPolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isSyncing()Z
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorUpdating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveSharedLibraryWithId(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 547
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-eq v0, v3, :cond_2

    .line 552
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorCannotLeaveLibraryOwnedByUser:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 556
    :cond_2
    const/4 v0, 0x0

    .line 558
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->deleteLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v6, v0

    move-object v5, v2

    .line 563
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSyncOnCommit()V

    .line 566
    :cond_3
    const-string/jumbo v0, "deleteLibrary"

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsReporter;->trackAction(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 568
    return v6

    .line 559
    :catch_0
    move-exception v5

    move v6, v0

    .line 560
    goto :goto_0
.end method

.method public libraryChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPush(Ljava/lang/String;)V

    .line 739
    :cond_0
    return-void
.end method

.method libraryCompositeChangedBySync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Z)V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->canSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->updateLocalAsset(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;Z)V

    .line 751
    :cond_0
    return-void
.end method

.method public monitorHasFinishedUpdate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public monitorHasFinishedUpdate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Z)V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSync(Z)V

    .line 930
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->shouldincludeBookmarkedLibraries()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->syncBookmarks()V

    .line 933
    :cond_0
    monitor-enter p0

    .line 934
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorUpdating:Z

    .line 935
    monitor-exit p0

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public monitorHasStartedUpdate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 1

    .prologue
    .line 903
    monitor-enter p0

    .line 904
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorUpdating:Z

    .line 905
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationStateForNewLibs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 906
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_collaborationRoleStateForNewLibs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 908
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->syncStartedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 912
    return-void

    .line 908
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected pathToLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method refreshLibraries()Ljava/util/ArrayList;
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
    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->updateLibraries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    throw v0
.end method

.method public removeLibrary(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 530
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 531
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 538
    return-void

    .line 536
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    throw v0
.end method

.method public reportElementUsed(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1072
    .line 1073
    if-eqz p4, :cond_0

    .line 1074
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1076
    :try_start_0
    const-string/jumbo v0, "opType"

    invoke-virtual {v4, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    const-string/jumbo v0, "useElement"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsReporter;->trackAction(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1083
    return-void

    .line 1077
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method public resetBindingOnLibrary(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsPendingDelete:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 691
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v2

    .line 692
    if-eqz v2, :cond_4

    move-object v1, v2

    .line 693
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->lock()V

    .line 697
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resetBinding()V
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 707
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 708
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMerger;->determineComponentsWithoutLocalCopy(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/util/List;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_1

    .line 710
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-object v3, v2

    .line 711
    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 712
    if-eqz v3, :cond_0

    move-object v1, v2

    .line 713
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 714
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 689
    throw v1

    .line 698
    :catch_0
    move-exception v1

    .line 699
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->unlock()V

    .line 700
    throw v1

    :cond_1
    move-object v1, v2

    .line 718
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->unlock()V

    .line 721
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 722
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v3, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isTypeInElementTypesFilter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 723
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    const-string/jumbo v5, "elementWasRemoved"

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v2, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 731
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPush(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSyncOnCommit()V

    .line 734
    :cond_4
    return-void
.end method

.method public setPullLibsPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->setPullLibsPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 1127
    :cond_0
    return-void
.end method

.method public setPushLibsPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->setPushLibsPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    .line 1133
    :cond_0
    return-void
.end method

.method public setUpdateFrequency(J)V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->setUpdateFrequency(J)V

    .line 885
    return-void
.end method

.method public shutdownSync()V
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_isPolling:Z

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->stopPolling()V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->closeStream()V

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->reset()V

    .line 778
    :cond_2
    return-void
.end method

.method startMonitor()V
    .locals 4

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->canSync()Z

    move-result v0

    if-nez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 860
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->resourceForComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResource;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_2

    .line 862
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 866
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 867
    throw v0

    .line 866
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->startWithLocalAssets(Ljava/util/ArrayList;)V

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    goto :goto_0
.end method

.method public startPolling()V
    .locals 0

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->startMonitor()V

    .line 786
    return-void
.end method

.method stopMonitor()V
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-nez v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    .line 879
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->stop()V

    goto :goto_0
.end method

.method public stopPolling()V
    .locals 0

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->stopMonitor()V

    .line 790
    return-void
.end method

.method public sync()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->sync(Z)Z

    move-result v0

    return v0
.end method

.method sync(Z)Z
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-nez v0, :cond_0

    .line 798
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    if-eqz p1, :cond_2

    .line 803
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->updateAndForceSyncGroupRefresh()V

    .line 809
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->update()V

    goto :goto_1
.end method

.method public syncBookmarks()V
    .locals 2

    .prologue
    .line 1086
    monitor-enter p0

    .line 1088
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarkManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;

    invoke-direct {v1, p0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->sync(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 1115
    monitor-exit p0

    .line 1116
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncCompleted()V
    .locals 1

    .prologue
    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 827
    :cond_0
    monitor-exit p0

    .line 828
    return-void

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateCollaborationStateForNewLibrary(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 754
    monitor-enter p0

    .line 757
    :try_start_0
    monitor-exit p0

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateLibraries()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    .line 332
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_rootLibrariesURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 334
    if-eqz v5, :cond_0

    array-length v0, v5

    if-lez v0, :cond_0

    .line 339
    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_9

    aget-object v7, v5, v4

    .line 340
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->isUUID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 342
    :goto_2
    if-eqz v3, :cond_5

    .line 343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->getBookmarlURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->canLoadLibraryWithURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 339
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move-object v3, v2

    .line 341
    goto :goto_2

    .line 351
    :cond_5
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_4
    if-eqz v1, :cond_3

    .line 356
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getVersion()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    move-object v0, v1

    .line 357
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "pendingDelete"

    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 360
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_deletedLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getCollaboration()Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    move-result-object v3

    sget-object v7, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-ne v3, v7, :cond_7

    .line 362
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToLeave:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 363
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToLeave:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "modified"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToPush:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToPush:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 352
    :catch_0
    move-exception v0

    .line 353
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error creating library for path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v3, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto/16 :goto_4

    .line 366
    :cond_7
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToPush:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 367
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->mLibsToPush:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 372
    :cond_8
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_libraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 388
    :cond_9
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarkManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->load()V

    goto/16 :goto_0
.end method
