.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;
.super Ljava/lang/Object;
.source "AdobePhotoUploader.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;",
        ">;"
    }
.end annotation


# instance fields
.field photoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;->photoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    return-void
.end method


# virtual methods
.method public cancelUpload()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;->photoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;->photoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->cancelUploadRequest()V

    .line 31
    :cond_0
    return-void
.end method

.method public bridge synthetic startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 13
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;->startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    return-void
.end method

.method public startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v0, "image/jpeg"

    .line 18
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_localAssetURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v2, p2, v1, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;Ljava/net/URI;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;->photoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 20
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoUploader;->photoAsset:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Started:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    goto :goto_0
.end method
