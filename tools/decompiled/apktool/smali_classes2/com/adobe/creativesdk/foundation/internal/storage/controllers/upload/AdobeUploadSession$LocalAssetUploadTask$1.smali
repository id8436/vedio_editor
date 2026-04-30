.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;
.super Ljava/lang/Object;
.source "AdobeUploadSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private _previousProgress:D

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V
    .locals 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->_previousProgress:D

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Cancelled:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V

    .line 345
    return-void
.end method

.method public onCompletion(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setUploadProgress(D)V

    .line 376
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_assetGUIDonSuccessFulUpload:Ljava/lang/String;

    .line 381
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    .line 382
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V

    .line 383
    return-void

    .line 378
    :cond_1
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getGUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_assetGUIDonSuccessFulUpload:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 361
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v0, :cond_1

    .line 362
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 363
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorExceededQuota:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->StorageFull:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V

    .line 371
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    goto :goto_0
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 350
    :try_start_0
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->_previousProgress:D

    .line 351
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setUploadProgress(D)V

    .line 352
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->InProgress:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    .line 353
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$LocalAssetUploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
