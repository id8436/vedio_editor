.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;
.super Ljava/lang/Object;
.source "AdobeCCFilesEditSession.java"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _newLocation:Ljava/lang/String;

.field private _summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

.field protected count:I

.field editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

.field fm:Landroid/support/v4/app/FragmentManager;

.field operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    .line 34
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    .line 35
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    .line 36
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->fm:Landroid/support/v4/app/FragmentManager;

    .line 37
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    .line 41
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    .line 42
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    .line 43
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->fm:Landroid/support/v4/app/FragmentManager;

    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_newLocation:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalyticsForIngest(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAssetToSummary(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;)V

    return-void
.end method

.method private addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 58
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    if-lez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)V

    .line 70
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 71
    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "file"

    .line 72
    :goto_1
    const-string/jumbo v2, "area"

    const-string/jumbo v3, "operations"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_2
    const/4 v0, 0x0

    invoke-static {p3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v0, "folder"

    goto :goto_1

    .line 75
    :cond_2
    const-string/jumbo v0, "area"

    const-string/jumbo v2, "batch_operations"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private addAnalyticsForIngest(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 4

    .prologue
    .line 82
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    if-lez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 87
    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "file"

    .line 88
    :goto_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;

    const-string/jumbo v2, "operations"

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentId:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->AdobeEventPropertyContentType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 98
    :goto_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyCount:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;->endAndTrackEvent()V

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v0, "folder"

    goto :goto_1

    .line 95
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;

    const-string/jumbo v1, "batch_operations"

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEditOperationsEvent;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private declared-synchronized addAssetToSummary(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;)V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;->status:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_successAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;->status:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_errorAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearSummary()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_successAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_successAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_errorAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->_errorAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    :cond_1
    return-void
.end method

.method private getAssetLocation()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->getTargetAssets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_1
    return-object v0
.end method

.method private getEditCallBackHandler(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    return-object v0
.end method

.method private handleEditOperation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 205
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    .line 206
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 209
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->getTargetAssets()Ljava/util/ArrayList;

    move-result-object v4

    .line 210
    if-eqz v4, :cond_0

    .line 211
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 212
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$3;->$SwitchMap$com$adobe$creativesdk$foundation$internal$storage$controllers$edit$AdobeCCFilesEditOperation:[I

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->notifiyEditStarted()V

    .line 216
    :goto_1
    if-ge v2, v5, :cond_0

    .line 217
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 221
    invoke-direct {p0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditCallBackHandler(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    move-result-object v3

    .line 222
    instance-of v6, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v6, :cond_1

    .line 223
    const-string/jumbo v6, "mobile.ccmobile.deleteFile"

    invoke-direct {p0, v5, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    .line 224
    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v1, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->delete(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)V

    .line 216
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    :cond_1
    const-string/jumbo v6, "mobile.ccmobile.deleteFolder"

    invoke-direct {p0, v5, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    .line 227
    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v1, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->delete(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)V

    goto :goto_2

    .line 232
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->notifiyEditStarted()V

    .line 233
    :goto_3
    if-ge v2, v5, :cond_0

    .line 234
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 237
    invoke-direct {p0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditCallBackHandler(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    move-result-object v3

    .line 238
    instance-of v6, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v6, :cond_2

    .line 239
    const-string/jumbo v6, "mobile.ccmobile.archiveFile"

    invoke-direct {p0, v5, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    .line 243
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->eraseAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 241
    :cond_2
    const-string/jumbo v6, "mobile.ccmobile.archiveFolder"

    invoke-direct {p0, v5, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    goto :goto_4

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->notifiyEditStarted()V

    .line 249
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getAssetLocation()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_newLocation:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->handleSameLocationMoveError()V

    goto :goto_0

    :cond_3
    move v3, v2

    .line 252
    :goto_5
    if-ge v3, v5, :cond_0

    .line 253
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 256
    invoke-direct {p0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditCallBackHandler(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    move-result-object v6

    .line 257
    instance-of v7, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v7, :cond_4

    .line 258
    const-string/jumbo v7, "mobile.ccmobile.moveFile"

    invoke-direct {p0, v5, v1, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    .line 262
    :goto_6
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_newLocation:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->moveAsset(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 252
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 260
    :cond_4
    const-string/jumbo v7, "mobile.ccmobile.moveFolder"

    invoke-direct {p0, v5, v1, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    goto :goto_6

    .line 267
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->notifiyEditStarted()V

    .line 268
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getAssetLocation()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_newLocation:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 269
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->handleSameLocationMoveError()V

    goto/16 :goto_0

    .line 274
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 275
    invoke-direct {p0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditCallBackHandler(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    move-result-object v3

    .line 276
    instance-of v6, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v6, :cond_7

    .line 277
    const-string/jumbo v6, "mobile.ccmobile.copyFile"

    invoke-direct {p0, v5, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    .line 281
    :goto_7
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_newLocation:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v1, v7, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->moveAsset(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;ZLcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 271
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    :cond_6
    if-ge v2, v5, :cond_0

    .line 272
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 279
    :cond_7
    const-string/jumbo v6, "mobile.ccmobile.copyFolder"

    invoke-direct {p0, v5, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    goto :goto_7

    .line 286
    :pswitch_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 287
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->getAssetNewName()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 289
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->notifiyEditStarted()V

    .line 290
    invoke-direct {p0, v1, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->getEditCallBackHandler(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;I)Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;

    move-result-object v3

    .line 291
    instance-of v4, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v4, :cond_9

    .line 292
    const-string/jumbo v4, "mobile.ccmobile.renameFile"

    invoke-direct {p0, v5, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    .line 296
    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->renameAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionEditCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 298
    :cond_8
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->dismiss()V

    goto/16 :goto_0

    .line 294
    :cond_9
    const-string/jumbo v4, "mobile.ccmobile.renameFolder"

    invoke-direct {p0, v5, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAnalytics(ILcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;)V

    goto :goto_8

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleSameLocationMoveError()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->sharedController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditSelectedAssetsController;->getTargetAssets()Ljava/util/ArrayList;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    .line 115
    :goto_0
    if-ge v2, v5, :cond_3

    .line 116
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 118
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v1, :cond_2

    .line 119
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    invoke-direct {v1, v6, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;)V

    move-object v0, v1

    .line 122
    :goto_1
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->addAssetToSummary(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;)V

    .line 123
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    .line 124
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->count:I

    if-ne v0, v5, :cond_1

    .line 125
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditCompletionHandled(Z)V

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;->setMoveOperationInSameLocation()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->editResponseCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;->onComplete()V

    .line 115
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 121
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;

    invoke-direct {v1, v0, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditAssetData$EditStatus;)V

    move-object v0, v1

    goto :goto_1

    .line 132
    :cond_3
    return-void
.end method

.method private notifiyEditStarted()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditInProgress(Z)V

    .line 143
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->setEditStarted(Z)V

    .line 144
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getEditSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->_summary:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession$EditSummary;

    return-object v0
.end method

.method public startEditSession()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->startEditSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V

    .line 50
    return-void
.end method

.method public startEditSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->handleEditOperation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V

    .line 54
    return-void
.end method
