.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;
.super Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
.source "AdobeUploadAssetData.java"


# instance fields
.field public _assetGUIDonSuccessFulUpload:Ljava/lang/String;

.field public _localAssetURL:Ljava/net/URL;

.field private _progress:D

.field private _uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

.field private dataStream:Ljava/io/InputStream;

.field public dimensions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field private mimeType:Ljava/lang/String;

.field public rendition:Landroid/graphics/Bitmap;

.field public rendype:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

.field private type:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    .line 62
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_assetGUIDonSuccessFulUpload:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->YetToStart:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_progress:D

    .line 69
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;->ADOBE_UPLOAD_DATA_TYPE_PATH:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->dataStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAssetURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_localAssetURL:Ljava/net/URL;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_progress:D

    return-wide v0
.end method

.method public getStatus()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    return-object v0
.end method

.method public getType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->type:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    return-object v0
.end method

.method public isUploadDone()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Cancelled:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Error:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Cancelled:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->StorageFull:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadSuccess()Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Completed:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->dataStream:Ljava/io/InputStream;

    .line 45
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->mimeType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setRendition(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    .line 75
    return-void
.end method

.method public setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_uploadStatus:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    .line 83
    return-void
.end method

.method public setType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->type:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    .line 37
    return-void
.end method

.method public setUploadProgress(D)V
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_progress:D

    .line 79
    return-void
.end method
