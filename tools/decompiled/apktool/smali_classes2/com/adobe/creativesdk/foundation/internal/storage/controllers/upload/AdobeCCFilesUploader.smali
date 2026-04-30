.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;
.super Ljava/lang/Object;
.source "AdobeCCFilesUploader.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
        ">;"
    }
.end annotation


# static fields
.field public static T:Ljava/lang/String;


# instance fields
.field assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelUpload()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelCreationRequest()V

    .line 44
    :cond_0
    return-void
.end method

.method public bridge synthetic startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 14
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    return-void
.end method

.method public startUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 7

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 22
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    const-string/jumbo v4, "image/jpeg"

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;->ADOBE_UPLOAD_DATA_TYPE_PATH:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeFileUploadType;

    if-ne v0, v1, :cond_2

    .line 26
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->_localAssetURL:Ljava/net/URL;

    .line 27
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p2

    move-object v5, p3

    .line 26
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->internalCreate(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-nez v0, :cond_3

    .line 33
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 37
    :goto_1
    return-void

    .line 29
    :cond_2
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getDataStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p2

    move-object v5, p3

    .line 29
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->internalCreateFromStream(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Ljava/io/InputStream;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCCFilesUploader;->assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    goto :goto_0

    .line 35
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;->Started:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->setStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData$UploadStatus;)V

    goto :goto_1
.end method
