.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;
.super Ljava/lang/Object;
.source "AdobeUploadDownloadManager.java"


# static fields
.field private static _downloadManager:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;


# instance fields
.field private assetCancellationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            ">;"
        }
    .end annotation
.end field

.field private photoAssetCancellationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->assetCancellationMap:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->photoAssetCancellationMap:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->_downloadManager:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->_downloadManager:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->_downloadManager:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addDownloadRequest(ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->assetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public addDownloadRequest(ILcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->photoAssetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public addUploadRequest(ILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->assetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public cancelDownloadRequest(I)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->assetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 63
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelDataRequest()V

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->removeDownloadRequest(I)V

    .line 73
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->photoAssetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->cancelDownloadRequest()V

    goto :goto_0
.end method

.method public cancelUploadRequest(I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->assetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->cancelUpdateRequest()V

    .line 85
    :cond_0
    return-void
.end method

.method public removeDownloadRequest(I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->assetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUploadDownloadManager;->photoAssetCancellationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
