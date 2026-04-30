.class public Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;
.super Ljava/lang/Object;
.source "DCXCompositeSyncTable.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;
.implements Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;


# static fields
.field private static final ccAssetDownloadKey:Ljava/lang/String; = "ccAssetDownload"

.field private static final ccAssetDownloadPrefix:Ljava/lang/String;

.field private static final downloadTextPrefix:Ljava/lang/String;

.field private static final kPullRequestKey:Ljava/lang/String; = "pullRequest"

.field private static final kPushRequestKey:Ljava/lang/String; = "pushRequest"

.field private static final preferenceCompositeDisplayName:Ljava/lang/String;

.field private static final syncErrorText:Ljava/lang/String;

.field private static final syncedText:Ljava/lang/String;

.field private static final uploadTextPrefix:Ljava/lang/String;


# instance fields
.field private compositeRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

.field private mUIHandler:Landroid/os/Handler;

.field private restrictToShowCompositeId:Ljava/lang/String;

.field private final tableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->downloadTextPrefix:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->uploadTextPrefix:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->ccAssetDownloadPrefix:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->syncedText:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->syncErrorText:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->preferenceCompositeDisplayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->compositeRequests:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->restrictToShowCompositeId:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->listener:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    .line 72
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->restrictToShowCompositeId:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->mUIHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->setProjectsSyncStatusListener()V

    .line 77
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getInitialPushesAndPulls()V

    .line 79
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->startTimer()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->updateContentFromRequestsAnimated(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->downloadTextPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getUpdatedText(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->uploadTextPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getCCAssetDownloadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->listener:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->syncErrorText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->updateContentFromComposite(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->syncedText:Ljava/lang/String;

    return-object v0
.end method

.method private addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->restrictToShowCompositeId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->restrictToShowCompositeId:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v8, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    monitor-enter v8

    move v7, v1

    .line 323
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    .line 327
    iget-object v9, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$4;-><init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;ZI)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    const/4 v0, 0x1

    .line 351
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-direct {v0, p3}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;-><init>(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v1, "ccAssetDownload"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getCCAssetDownloadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setCcAssetDownloadText(Ljava/lang/String;)V

    .line 366
    :goto_3
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->updateContentFromComposite(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;)V

    .line 367
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;

    invoke-direct {v2, p0, v0, p4}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$5;-><init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 323
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 351
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 358
    :cond_3
    const-string/jumbo v1, "pullRequest"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->downloadTextPrefix:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getUpdatedText(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setDownloadStatusText(Ljava/lang/String;)V

    .line 364
    :goto_4
    invoke-virtual {v0, p2, p1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->addRequest(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    goto :goto_3

    .line 362
    :cond_4
    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->uploadTextPrefix:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getUpdatedText(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setUploadStatusText(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private getCCAssetDownloadText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getProjectDownloadProgress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->ccAssetDownloadPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInitialCCAssetDownloads()V
    .locals 5

    .prologue
    .line 188
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getDownloadProjectKeys()Ljava/util/Set;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    const/4 v2, 0x0

    const-string/jumbo v3, "ccAssetDownload"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private getInitialPushesAndPulls()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 166
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getCompositePulls()Ljava/util/HashMap;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 174
    const-string/jumbo v4, "pullRequest"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v4, v0, v5}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 177
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getCompositePushes()Ljava/util/HashMap;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 182
    const-string/jumbo v4, "pushRequest"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v4, v0, v5}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private getUpdatedText(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->hasFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/16 v0, 0x64

    .line 135
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method private initializeTimerTask()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$1;-><init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timerTask:Ljava/util/TimerTask;

    .line 114
    return-void
.end method

.method private removeTableCell(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 8

    .prologue
    .line 276
    iget-object v6, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    monitor-enter v6

    .line 277
    const/4 v5, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    .line 281
    iget-object v7, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$3;-><init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_0
    monitor-exit v6

    .line 314
    return-void

    .line 277
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestForCompositeId(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->requestsForCompositeId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 260
    :cond_0
    return-object v0
.end method

.method private requestsForCompositeId(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->compositeRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 266
    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->compositeRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    return-object v0
.end method

.method private updateContentFromComposite(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->preferenceCompositeDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setProjectName(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getModelAtPath(Ljava/lang/String;)Lcom/adobe/sync/SyncController$IDCXModelInterface;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    .line 154
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentTitle()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getRenditionPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setProjectName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setProjectPosterPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateContentFromRequestsAnimated(Z)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->updateTableCells()V

    .line 119
    return-void
.end method

.method private updateTableCells()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;-><init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ccAssetDownloadStarted(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 390
    const-string/jumbo v0, "CCDownload"

    const-string/jumbo v1, "asset download started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    const-string/jumbo v1, "ccAssetDownload"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    return-void
.end method

.method public ccAssetDownloadStopped(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 396
    const-string/jumbo v0, "CCDownload"

    const-string/jumbo v1, "asset download stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string/jumbo v0, "ccAssetDownload"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->removeTableCell(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 398
    return-void
.end method

.method public compositeRefreshed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public getTableItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->tableItems:Ljava/util/List;

    return-object v0
.end method

.method public pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 2

    .prologue
    .line 237
    const-string/jumbo v0, "pullRequest"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 243
    const-string/jumbo v0, "pullRequest"

    invoke-direct {p0, v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->removeTableCell(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 244
    return-void
.end method

.method public pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 2

    .prologue
    .line 225
    const-string/jumbo v0, "pushRequest"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->addTableCell(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    return-void
.end method

.method public pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 231
    const-string/jumbo v0, "pushRequest"

    invoke-direct {p0, v0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->removeTableCell(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 232
    return-void
.end method

.method public setProjectsSyncStatusListener()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setProjectsSyncStatusListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;)V

    .line 84
    return-void
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 91
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timer:Ljava/util/Timer;

    .line 92
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->initializeTimerTask()V

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 94
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->timer:Ljava/util/Timer;

    .line 105
    :cond_0
    return-void
.end method

.method public unSetProjectsSyncStatusListener()V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setProjectsSyncStatusListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;)V

    .line 88
    return-void
.end method

.method public updateSyncStatus(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    return-void
.end method
