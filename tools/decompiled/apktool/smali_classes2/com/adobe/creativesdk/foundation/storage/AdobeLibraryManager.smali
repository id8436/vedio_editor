.class public Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;
.super Ljava/lang/Object;
.source "AdobeLibraryManager.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final ON_SYNC_ERROR:Ljava/lang/String; = "onSyncError"

.field private static sharedLibraryInstance:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;


# instance fields
.field protected includeBookmarkedLibraries:Z

.field mAutoDownloadContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

.field protected mAutoSyncInterval:J

.field mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field mCollections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;",
            ">;"
        }
    .end annotation
.end field

.field mDelegates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

.field mElementTypesFilter:Ljava/util/ArrayList;

.field mGenerateLocalThumbnails:Z

.field private mLastSyncTime:Ljava/util/Date;

.field private mListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

.field private mNumConcurrentRequests:I

.field mPollingStarted:Z

.field protected mRenditionSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

.field protected mRootLibraryCollectionsURL:Ljava/lang/String;

.field private mSessionId:I

.field private mSyncAllowedByNetworkStatusMask:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncEnabled:Z

.field mSyncInProgress:Z

.field protected mSyncSuspendedDueToAuthenticationError:Z

.field private mSyncTimer:Ljava/util/Date;

.field protected mUnInitialized:Z

.field private mUploadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

.field private mWasSyncInProgress:Z

.field syncAllowedByNetworkStatus:Z

.field syncAllowedByNetworkStatusMask:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sharedLibraryInstance:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mNumConcurrentRequests:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRequestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 119
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDownloadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 120
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUploadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 123
    iput v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSessionId:I

    .line 124
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mGenerateLocalThumbnails:Z

    .line 125
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->initVars()V

    .line 126
    return-void
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;
    .locals 3

    .prologue
    .line 156
    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sharedLibraryInstance:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sharedLibraryInstance:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    .line 159
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sharedLibraryInstance:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->setSyncEnabled(Z)V

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sharedLibraryInstance:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initVars()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    .line 179
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSessionId:I

    .line 180
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    .line 181
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 182
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mPollingStarted:Z

    .line 183
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 184
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    .line 185
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadContentTypes:Ljava/util/ArrayList;

    .line 186
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRenditionSizes:Ljava/util/HashMap;

    .line 187
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 189
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z

    .line 190
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUnInitialized:Z

    .line 191
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->includeBookmarkedLibraries:Z

    .line 192
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mNumConcurrentRequests:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mNumConcurrentRequests:I

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRequestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 196
    monitor-enter p0

    .line 197
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mWasSyncInProgress:Z

    .line 200
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 201
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeLocalLibraryFilesInRootFolder(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->removeLocalLibraryFilesInRootFolder(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private shouldRespondToSelector(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1063
    if-nez p2, :cond_0

    move v0, v1

    .line 1078
    :goto_0
    return v0

    .line 1067
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    const-string/jumbo v0, "elementWasAdded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "elementWasUpdated"

    .line 1068
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "elementWasRemoved"

    .line 1069
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 1073
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 1074
    goto :goto_0

    .line 1078
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method bookmarks()Ljava/util/ArrayList;
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
    .line 1354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarkManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->bookmarks:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bookmarksChanged()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1405
    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1407
    if-eqz v6, :cond_2

    .line 1409
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;

    .line 1410
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 1411
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    move-object v3, v0

    iget-object v8, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->url:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->canLoadLibraryWithURL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1412
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->addLibraryWithId(Ljava/lang/String;)V

    goto :goto_0

    .line 1444
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1418
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 1419
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1420
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v5, v4

    .line 1421
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 1422
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 1424
    if-eqz v6, :cond_7

    .line 1425
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;

    .line 1426
    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1427
    const/4 v3, 0x1

    .line 1433
    :goto_2
    if-nez v3, :cond_5

    .line 1435
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->deleteLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/Boolean;)Z

    .line 1436
    const-string/jumbo v3, "libraryWasDeleted"

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    :cond_5
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 1437
    :catch_0
    move-exception v2

    .line 1438
    :try_start_3
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    invoke-static {v3, v9, v10, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1444
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1445
    return-void

    :cond_7
    move v3, v4

    goto :goto_2
.end method

.method protected bookmarksFileSynced(Z)V
    .locals 3

    .prologue
    .line 1449
    monitor-enter p0

    .line 1450
    if-eqz p1, :cond_0

    .line 1451
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->bookmarksChanged()V

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 1455
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->includeBookmarkedLibraries:Z

    if-eqz v2, :cond_1

    .line 1456
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->sync()Z

    goto :goto_0

    .line 1459
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1460
    return-void
.end method

.method protected canSync()Z
    .locals 1

    .prologue
    .line 1234
    monitor-enter p0

    .line 1235
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->serviceSession()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected canSyncWithError(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1240
    monitor-enter p0

    .line 1241
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1242
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1256
    const/4 v0, 0x0

    .line 1259
    :goto_1
    return v0

    .line 1244
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->getSession()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    .line 1245
    :cond_2
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    if-nez v1, :cond_3

    .line 1246
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorSyncNotEnabled:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1247
    :cond_3
    :try_start_2
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 1248
    :cond_4
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorSyncNotAvailableDueToUserSession:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1249
    :cond_5
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    if-nez v0, :cond_0

    .line 1250
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorSyncNotAvailableDueToNetwork:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1259
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method computeStartupSettings()V
    .locals 23

    .prologue
    .line 594
    monitor-enter p0

    .line 595
    const-wide/16 v14, -0x1

    .line 596
    :try_start_0
    sget-object v7, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 597
    const/4 v13, 0x0

    .line 598
    const/4 v12, 0x0

    .line 599
    const/4 v11, 0x0

    .line 600
    const/4 v9, 0x0

    .line 601
    const/4 v10, 0x0

    .line 602
    const/4 v6, 0x0

    .line 603
    const/4 v5, 0x0

    .line 604
    const/4 v4, 0x0

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 609
    if-eqz v2, :cond_1e

    .line 610
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_0

    iget-wide v0, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoSyncInterval:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 611
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    move-result-object v3

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->ordinal()I

    move-result v7

    iget-object v8, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->ordinal()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    aget-object v15, v3, v7

    .line 612
    iget-boolean v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->includeBookmarkedLibraries:Z

    if-eqz v3, :cond_1d

    .line 613
    const/4 v7, 0x1

    .line 619
    :goto_2
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    if-eqz v3, :cond_1c

    .line 620
    if-nez v5, :cond_1

    .line 621
    iget-object v5, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    move-object v8, v5

    .line 630
    :goto_3
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 631
    if-nez v12, :cond_1b

    .line 632
    if-nez v13, :cond_3

    .line 633
    new-instance v13, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v13

    move v13, v12

    .line 646
    :goto_4
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadContentTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 647
    if-nez v9, :cond_1a

    .line 648
    if-nez v11, :cond_7

    .line 649
    new-instance v11, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadContentTypes:Ljava/util/ArrayList;

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v11

    move v11, v9

    .line 663
    :goto_5
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->renditionSizes:Ljava/util/HashMap;

    if-eqz v3, :cond_19

    .line 664
    if-nez v10, :cond_b

    .line 665
    new-instance v3, Ljava/util/HashMap;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->renditionSizes:Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move v2, v7

    move-object v4, v6

    move-object v5, v3

    move-object v9, v14

    move-object v10, v15

    move-object v7, v12

    move-object v3, v8

    move v6, v11

    move v8, v13

    move-wide/from16 v12, v16

    :goto_6
    move-object v11, v7

    move-wide v14, v12

    move v12, v8

    move-object v13, v9

    move-object v7, v10

    move-object v10, v5

    move v9, v6

    move-object v6, v4

    move-object v5, v3

    move v4, v2

    .line 696
    goto/16 :goto_0

    .line 610
    :cond_0
    iget-wide v0, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoSyncInterval:J

    move-wide/from16 v16, v0

    goto :goto_1

    .line 623
    :cond_1
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    .line 624
    iget-object v8, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->syncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    invoke-virtual {v8, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 625
    invoke-virtual {v5, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 727
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 635
    :cond_3
    :try_start_1
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 636
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v14, -0x1

    if-ne v5, v14, :cond_4

    .line 637
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_5
    move-object v14, v13

    move v13, v12

    .line 638
    goto :goto_4

    .line 642
    :cond_6
    const/4 v13, 0x0

    .line 643
    const/4 v12, 0x1

    move-object v14, v13

    move v13, v12

    goto :goto_4

    .line 651
    :cond_7
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->autoDownloadContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 652
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v12, -0x1

    if-ne v5, v12, :cond_8

    .line 653
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    move-object v12, v11

    move v11, v9

    .line 654
    goto/16 :goto_5

    .line 659
    :cond_a
    const/4 v11, 0x0

    .line 660
    const/4 v9, 0x1

    move-object v12, v11

    move v11, v9

    goto/16 :goto_5

    .line 667
    :cond_b
    iget-object v3, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->renditionSizes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object v9, v6

    :cond_c
    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    iget-object v4, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->renditionSizes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 669
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 671
    if-eqz v5, :cond_e

    .line 672
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_d
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 673
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 674
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 677
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :cond_f
    const-string/jumbo v5, "*"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 682
    if-nez v9, :cond_10

    .line 683
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a

    .line 685
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 686
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    .line 687
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 699
    :cond_12
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 702
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 703
    const-string/jumbo v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 704
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 707
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_14

    .line 708
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 714
    :cond_15
    const-wide/16 v2, 0x3c

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoSyncInterval:J

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitor:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-boolean v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_monitorStarted:Z

    if-eqz v2, :cond_16

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoSyncInterval:J

    invoke-virtual {v2, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->setUpdateFrequency(J)V

    .line 720
    :cond_16
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    .line 721
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    .line 722
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadPolicy:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;->AdobeLibraryDownloadPolicyTypeManifestOnly:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDownloadPolicyType;

    if-eq v2, v3, :cond_17

    :goto_e
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadContentTypes:Ljava/util/ArrayList;

    .line 724
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->includeBookmarkedLibraries:Z

    .line 725
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRenditionSizes:Ljava/util/HashMap;

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 727
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    return-void

    .line 723
    :cond_17
    const/4 v11, 0x0

    goto :goto_e

    :cond_18
    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    move v8, v13

    move-object v9, v14

    move-object v10, v15

    move-wide/from16 v12, v16

    goto/16 :goto_6

    :cond_19
    move v2, v7

    move-object v3, v8

    move-object v4, v6

    move-object v5, v10

    move-object v9, v14

    move-object v7, v12

    move v8, v13

    move v6, v11

    move-object v10, v15

    move-wide/from16 v12, v16

    goto/16 :goto_6

    :cond_1a
    move-object v12, v11

    move v11, v9

    goto/16 :goto_5

    :cond_1b
    move-object v14, v13

    move v13, v12

    goto/16 :goto_4

    :cond_1c
    move-object v8, v5

    goto/16 :goto_3

    :cond_1d
    move v7, v4

    goto/16 :goto_2

    :cond_1e
    move v2, v4

    move-object v3, v5

    move v8, v12

    move-object v5, v10

    move-object v4, v6

    move v6, v9

    move-object v10, v7

    move-object v9, v13

    move-object v7, v11

    move-wide v12, v14

    goto/16 :goto_6
.end method

.method public createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-nez v1, :cond_1

    .line 247
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    .line 250
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteLibraryWithId(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-nez v1, :cond_2

    .line 279
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v1, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    .line 289
    :cond_1
    :goto_0
    return v0

    .line 282
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getBookmarlURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    if-eqz v1, :cond_1

    .line 287
    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->initWithId(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->removeBookmark(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;)Z

    move-result v0

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->deleteLibraryWithId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public deregisterDelegate(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 768
    .line 771
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 773
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 778
    :goto_0
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 783
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 785
    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->computeStartupSettings()V

    .line 789
    :cond_0
    if-eqz v1, :cond_1

    .line 791
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shutdownWithError()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :cond_1
    :goto_2
    return-void

    .line 792
    :catch_0
    move-exception v0

    .line 793
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move v1, v2

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected getBookmarlURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1463
    const/4 v1, 0x0

    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1466
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1467
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;

    .line 1468
    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->url:Ljava/lang/String;

    monitor-exit p0

    .line 1474
    :goto_0
    return-object v0

    .line 1473
    :cond_1
    monitor-exit p0

    move-object v0, v1

    .line 1474
    goto :goto_0

    .line 1473
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getDefaultLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadLibraryPriority()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDownloadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    return-object v0
.end method

.method public getElementTypesFilter()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLibraries()Ljava/util/ArrayList;
    .locals 4
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
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 215
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->includeBookmarkedLibraries:Z

    if-eqz v3, :cond_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    throw v0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    return-object v1
.end method

.method public getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 303
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSyncStatus()Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;
    .locals 2

    .prologue
    .line 1132
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;-><init>()V

    .line 1133
    monitor-enter p0

    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mLastSyncTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->setLastSyncTime(Ljava/util/Date;)V

    .line 1135
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibrarySyncStatus;->setSyncing(Z)V

    .line 1136
    monitor-exit p0

    .line 1138
    return-object v0

    .line 1136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUploadLibraryPriority()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUploadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    return-object v0
.end method

.method protected handleDeleteLibraryWithId(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 809
    invoke-virtual {p2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mCollaboration:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;->ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationType;

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    :cond_1
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForDelete(Ljava/lang/String;)V

    .line 837
    :goto_0
    return-void

    .line 813
    :cond_2
    const-string/jumbo v1, "libraryPreDelete"

    new-instance v6, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;

    invoke-direct {v6, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    new-instance v7, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$2;

    invoke-direct {v7, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method protected handleLibraryReadOnlyConversion(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 4

    .prologue
    .line 840
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;->ADOBE_COLLABORATION_ROLE_TYPE_VIEWER:Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setCollaborationRoleType(Lcom/adobe/creativesdk/foundation/storage/AdobeCollaborationRoleType;)V

    .line 841
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->mDcxComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "modified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 844
    :cond_0
    const-string/jumbo v0, "libraryPreReadabilityChange"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$3;

    invoke-direct {v2, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;

    invoke-direct {v3, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;)V

    goto :goto_0
.end method

.method initializeCollections()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 528
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    if-eqz v0, :cond_3

    move v1, v2

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 531
    if-eqz v0, :cond_0

    .line 532
    if-nez v1, :cond_1

    .line 533
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->initSync(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mPollingStarted:Z

    .line 529
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->includeBookmarkedLibraries:Z

    if-eqz v3, :cond_0

    .line 536
    :cond_2
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->initSync(Z)Z

    goto :goto_1

    .line 543
    :cond_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 544
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 546
    :cond_4
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 547
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 549
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncAllowedByNetworkStatus()Z
    .locals 1

    .prologue
    .line 1193
    monitor-enter p0

    .line 1194
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    monitor-exit p0

    return v0

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSyncEnabled()Z
    .locals 1

    .prologue
    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    monitor-exit p0

    return v0

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSyncSuspendedDueToAuthenticationError()Z
    .locals 1

    .prologue
    .line 1208
    monitor-enter p0

    .line 1209
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z

    monitor-exit p0

    return v0

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTypeInDelegateElementTypesFilter(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;)Z
    .locals 2

    .prologue
    .line 347
    if-eqz p1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;

    .line 349
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;->elementTypesFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 350
    :cond_0
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeInElementTypesFilter(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 339
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mElementTypesFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 340
    :cond_0
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveSharedLibraryWithId(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->leaveSharedLibraryWithId(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 4

    .prologue
    .line 554
    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    if-eqz v0, :cond_1

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    .line 558
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mWasSyncInProgress:Z

    .line 561
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkNotReachable:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    if-eq p1, v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->stopPolling()V

    .line 569
    :cond_0
    const-string/jumbo v0, "syncUnavailable"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 590
    :cond_1
    :goto_0
    monitor-exit p0

    .line 591
    return-void

    .line 571
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    if-nez v0, :cond_1

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->syncAllowedByNetworkStatus:Z

    .line 575
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 576
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->reconnect()V

    goto :goto_1

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 579
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->startPolling()V

    .line 581
    const-string/jumbo v0, "syncAvailable"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 583
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mWasSyncInProgress:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mLastSyncTime:Ljava/util/Date;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mLastSyncTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoSyncInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 585
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sync()Z

    .line 587
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mWasSyncInProgress:Z

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method refreshLibraries()Ljava/util/ArrayList;
    .locals 3
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
    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 321
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 323
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->updateLibraries()V

    .line 324
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 328
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 329
    throw v0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    .line 331
    goto :goto_0
.end method

.method public registerDelegate(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryStartupOptions;)V
    .locals 2

    .prologue
    .line 738
    const/4 v0, 0x0

    .line 740
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 742
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 743
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 747
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->computeStartupSettings()V

    .line 749
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mPollingStarted:Z

    if-nez v1, :cond_0

    .line 750
    const/4 v0, 0x1

    .line 756
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->initializeCollections()V

    .line 760
    :cond_1
    return-void

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method protected removeBookmark(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1358
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v1, :cond_0

    .line 1359
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 1360
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarkManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->removeBookmark(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1362
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->removeBookmarkFromCollection()V

    .line 1363
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->deleteLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1372
    :cond_0
    :goto_0
    return v0

    .line 1364
    :catch_0
    move-exception v1

    .line 1365
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method removeBookmarkFromCollection()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1377
    monitor-enter p0

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getBookmarks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1379
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 1380
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1381
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->getLibraries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, v3

    .line 1382
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 1383
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 1385
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;

    .line 1386
    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;->bookmaarkID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1387
    const/4 v2, 0x1

    .line 1391
    :goto_1
    if-nez v2, :cond_2

    .line 1393
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->removeLibrary(Ljava/lang/String;)V

    .line 1382
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 1400
    :cond_3
    monitor-exit p0

    .line 1402
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method protected reportSyncError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 914
    const-string/jumbo v0, "onSyncError"

    invoke-virtual {p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 915
    return-void
.end method

.method resolveElementReference(Ljava/lang/String;[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;[Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    const-string/jumbo v0, "cloud-asset://(.+)/([A-Za-z0-9-]+);node=([A-Za-z0-9-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    aput-object v1, p2, v3

    .line 370
    aget-object v1, p2, v3

    if-eqz v1, :cond_0

    .line 371
    aget-object v1, p2, v3

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    aput-object v0, p3, v3

    .line 374
    :cond_0
    return-void
.end method

.method sendDelegateMessage(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 918
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 919
    return-void
.end method

.method sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 922
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 923
    return-void
.end method

.method protected sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 948
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 949
    return-void
.end method

.method protected sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 936
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 937
    return-void
.end method

.method sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 940
    invoke-virtual {p2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 941
    return-void
.end method

.method protected sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 944
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 945
    return-void
.end method

.method sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    if-nez p7, :cond_2

    if-eqz p6, :cond_4

    .line 964
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$5;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->delegateHandler:Landroid/os/Handler;

    .line 1000
    if-eqz v1, :cond_3

    .line 1001
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRequestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1010
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    .line 1011
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p9

    move-object v7, p3

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$6;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move-object v7, p4

    move-object v8, p5

    .line 1052
    invoke-direct/range {v3 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shouldRespondToSelector(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 1053
    iget-object v1, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->delegateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 1054
    iget-object v1, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->delegateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1056
    :cond_6
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRequestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected sendDelegateMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 926
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 927
    return-void
.end method

.method sendDelegateMessage(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 932
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v0 .. v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$IAdobeDelegateResponseHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 933
    return-void
.end method

.method public setDownloadLibraryPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V
    .locals 2

    .prologue
    .line 450
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDownloadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 451
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 453
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->setPullLibsPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    goto :goto_0

    .line 456
    :cond_0
    return-void
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
    .line 1180
    monitor-enter p0

    .line 1181
    :try_start_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncAllowedByNetworkStatusMask:Ljava/util/EnumSet;

    .line 1182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 1183
    monitor-exit p0

    .line 1184
    return-void

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSyncEnabled(Z)V
    .locals 2

    .prologue
    .line 1160
    monitor-enter p0

    .line 1161
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    .line 1163
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->startPolling()V

    .line 1176
    :cond_0
    :goto_0
    monitor-exit p0

    .line 1177
    return-void

    .line 1168
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 1169
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->cancelSync()V

    goto :goto_1

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1172
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->stopPolling()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setUploadLibraryPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V
    .locals 2

    .prologue
    .line 472
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUploadLibraryPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 473
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 475
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->setPushLibsPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V

    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method

.method protected shouldAutoDownloadType(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadContentTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    .line 1332
    :goto_0
    return v0

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mAutoDownloadContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1327
    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->isCompatibleType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1328
    goto :goto_0

    .line 1332
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldAutoSyncDownloadAssets()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1099
    .line 1100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    .line 1101
    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->autoSyncDownloadedAssets:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1104
    :cond_1
    return v1
.end method

.method protected shouldDownloadLibrary(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1108
    .line 1110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    .line 1111
    iget-object v4, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->assetDownloadLibraryFilter:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1112
    const/4 v1, 0x0

    .line 1114
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->assetDownloadLibraryFilter:Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1116
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 1122
    :goto_1
    return v2

    :cond_0
    move v0, v1

    move v1, v0

    .line 1120
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1122
    goto :goto_1
.end method

.method protected shouldSyncOnCommit()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1091
    .line 1092
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;

    .line 1093
    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryDelegate;->syncOnCommit:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1095
    :cond_2
    return v1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 509
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 511
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->shutdownSync()V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 515
    monitor-enter p0

    .line 517
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 518
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 519
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->destorySharedInstance()V

    .line 521
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->initVars()V

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUnInitialized:Z

    .line 524
    return-void

    .line 521
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdownWithError()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 498
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorCannotShutdownDelegatesExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->shutdown()V

    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public startWithFolder(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->startWithFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    return v0
.end method

.method protected startWithFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 397
    monitor-enter p0

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorStartupAlreadyStarted:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 401
    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    if-eqz v0, :cond_2

    .line 402
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object p2

    .line 405
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncEnabled:Z

    if-eqz v0, :cond_4

    .line 406
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorBadParameter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 409
    :cond_4
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    .line 410
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 413
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 414
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    const/4 v4, 0x0

    const-string/jumbo v5, "adobe-libraries"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->initWithRootFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mRootLibraryCollectionsURL:Ljava/lang/String;

    .line 416
    monitor-exit p0

    move v0, v7

    .line 443
    :goto_0
    return v0

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryCommunityPlatformHostStaging:[[Ljava/lang/String;

    move-object v6, v0

    .line 424
    :goto_1
    array-length v0, v6

    if-ge v7, v0, :cond_9

    .line 426
    const-string/jumbo v0, "public"

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;-><init>()V

    .line 428
    aget-object v2, v6, v7

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string/jumbo v3, "cp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeCommunity:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    .line 429
    :goto_2
    aget-object v2, v6, v7

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->initWithRootFolder(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 430
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 422
    :cond_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryCommunityPlatformHostProduction:[[Ljava/lang/String;

    move-object v6, v0

    goto :goto_1

    .line 428
    :cond_8
    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    goto :goto_2

    .line 436
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 437
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->initializeCollections()V

    .line 438
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->bookmarksChanged()V

    .line 440
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mUnInitialized:Z

    .line 441
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v8

    .line 443
    goto :goto_0
.end method

.method public sync()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->canSyncWithError(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1273
    const-string/jumbo v2, "onSyncError"

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    move v0, v1

    .line 1283
    :goto_0
    return v0

    .line 1277
    :cond_0
    monitor-enter p0

    .line 1278
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    if-nez v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->sync()Z

    .line 1281
    :cond_1
    monitor-exit p0

    .line 1283
    const/4 v0, 0x1

    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1299
    monitor-enter p0

    .line 1302
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mCollections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    .line 1303
    if-eq v0, p1, :cond_1

    .line 1304
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isSyncing()Z

    move-result v0

    .line 1305
    if-eqz v0, :cond_2

    .line 1310
    :goto_1
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    if-eqz v0, :cond_0

    .line 1311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    .line 1313
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mLastSyncTime:Ljava/util/Date;

    .line 1316
    const-string/jumbo v0, "syncFinished"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;)V

    .line 1319
    :cond_0
    monitor-exit p0

    .line 1320
    return-void

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    .line 1309
    goto :goto_0

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected syncStartedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 1

    .prologue
    .line 1287
    monitor-enter p0

    .line 1288
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    if-nez v0, :cond_0

    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncInProgress:Z

    .line 1290
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncTimer:Ljava/util/Date;

    .line 1291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mMainCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    if-ne p1, v0, :cond_0

    .line 1292
    const-string/jumbo v0, "syncStarted"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->sendDelegateMessage(Ljava/lang/String;)V

    .line 1295
    :cond_0
    monitor-exit p0

    .line 1296
    return-void

    .line 1295
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unsuspendSyncDueToNewAuthenticationStatus()V
    .locals 1

    .prologue
    .line 1220
    monitor-enter p0

    .line 1221
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->mSyncSuspendedDueToAuthenticationError:Z

    .line 1222
    monitor-exit p0

    .line 1223
    return-void

    .line 1222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1345
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 1346
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkReachabilityStatusKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;

    .line 1347
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;->networkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->onNetworkStatus(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;)V

    .line 1349
    return-void
.end method
