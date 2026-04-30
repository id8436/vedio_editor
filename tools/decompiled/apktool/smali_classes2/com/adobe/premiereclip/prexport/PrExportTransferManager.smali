.class public Lcom/adobe/premiereclip/prexport/PrExportTransferManager;
.super Ljava/lang/Object;
.source "PrExportTransferManager.java"


# instance fields
.field private currentTransfers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/PrExportTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private exportCancelled:Z

.field private exportResult:Z

.field private mHandler:Landroid/os/Handler;

.field private pendingTransfers:I

.field private transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

.field private upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private uploadProgress:F


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    .line 61
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->mHandler:Landroid/os/Handler;

    .line 62
    iput-boolean v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportCancelled:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->uploadProgress:F

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    .line 66
    iput v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportResult:Z

    .line 68
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowPremiereProExportView()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;F)F
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->uploadProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->copyOnCompletion(Z)V

    return-void
.end method

.method private copy(Lcom/adobe/premiereclip/prexport/PrExportTransfer;)V
    .locals 7

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getSourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 271
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 273
    const/4 v6, 0x1

    new-instance v0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$3;-><init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->copyFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 336
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 389
    :cond_0
    return-void
.end method

.method private copyOnCompletion(Z)V
    .locals 3

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportResult:Z

    if-eqz v0, :cond_0

    .line 252
    iput-boolean p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportResult:Z

    .line 255
    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    .line 257
    const-string/jumbo v0, "PrExportTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transfers left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    iget-boolean v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportResult:Z

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onCopyAllComplete(Z)V

    .line 262
    :cond_1
    return-void
.end method

.method private getUrlEncodedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string/jumbo v0, " "

    const-string/jumbo v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    :cond_0
    return-object p1
.end method


# virtual methods
.method public cancelAllTransfers()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    .line 96
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->cancelTransfer()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelCreationRequest()V

    .line 102
    :cond_1
    return-void
.end method

.method public copyAll(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/PrExportTransfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    iput v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportResult:Z

    .line 238
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "copyall - remaining transfers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->pendingTransfers:I

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    iget-boolean v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->exportResult:Z

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onCopyAllComplete(Z)V

    .line 248
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    .line 246
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->copy(Lcom/adobe/premiereclip/prexport/PrExportTransfer;)V

    goto :goto_0
.end method

.method public getMediaTransferProgress()F
    .locals 6

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 75
    if-lez v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->currentTransfers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/PrExportTransfer;

    .line 77
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    float-to-double v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v4

    double-to-float v0, v0

    :goto_1
    move v1, v0

    .line 84
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getProgress()F

    move-result v0

    .line 82
    add-float/2addr v0, v1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 86
    :cond_2
    int-to-float v0, v2

    div-float v0, v1, v0

    return v0
.end method

.method public getUploadTransferProgress()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->uploadProgress:F

    return v0
.end method

.method public itemExistsAtDestination(Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V
    .locals 5

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;->AdobeCloudServiceTypeStorage:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->getSessionForService(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceType;)Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudServiceSession;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    .line 108
    const-string/jumbo v2, "PrExportMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "itemexistsatdest - dest resource path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v2, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$1;-><init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Lcom/adobe/premiereclip/prexport/PrExportTransfer;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getHeaderInfoForFile(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 135
    return-void
.end method

.method public upload(Lcom/adobe/premiereclip/prexport/PrExportTransfer;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getSourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 140
    const-string/jumbo v0, "PrExportTransferMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml local file url : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetFolder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->getUrlEncodedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v3, "Starting xml upload to CC"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->getTargetType()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;

    invoke-direct {v4, p0, p1, v2}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$2;-><init>(Lcom/adobe/premiereclip/prexport/PrExportTransferManager;Lcom/adobe/premiereclip/prexport/PrExportTransfer;Ljava/net/URL;)V

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->mHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->upload:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string/jumbo v0, "PrExportTransferMgr"

    const-string/jumbo v1, "failed to get target folder from CC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/PrExportTransfer;->setResult(Z)V

    .line 222
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string/jumbo v1, "PrExportTransferMgr"

    const-string/jumbo v2, "localURL not formed properly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 228
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportTransferManager;->transferListener:Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;

    invoke-interface {v0, v6}, Lcom/adobe/premiereclip/prexport/PrExportTransferManager$TransferListener;->onUploadComplete(Z)V

    goto :goto_0
.end method
