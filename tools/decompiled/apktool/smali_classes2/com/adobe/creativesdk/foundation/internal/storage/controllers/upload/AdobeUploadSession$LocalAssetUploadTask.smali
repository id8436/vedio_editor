.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;
.super Ljava/lang/Object;
.source "AdobeUploadSession.java"


# instance fields
.field private final _assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

.field private _isFinalNotificationDone:Z

.field private final _uploader:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader",
            "<TEndPointType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

.field uploadDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader",
            "<TEndPointType;>;)V"
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_isFinalNotificationDone:Z

    .line 337
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->uploadDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    .line 325
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 326
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_uploader:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;

    .line 327
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->notifyClients()V

    return-void
.end method

.method private notifyClients()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->isUploadDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_isFinalNotificationDone:Z

    if-eqz v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_isFinalNotificationDone:Z

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->uploadTask_assetUploadStatusChanged(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelUpload()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_uploader:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;->cancelUpload()V

    .line 401
    return-void
.end method

.method public getAsset()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    return-object v0
.end method

.method getDestinationFolder()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEndPointType;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

    move-result-object v0

    return-object v0
.end method

.method public startUpload()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_uploader:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->_assetData:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->getDestinationFolder()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->uploadDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;->startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 397
    return-void
.end method
