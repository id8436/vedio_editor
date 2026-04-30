.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;
.super Ljava/lang/Object;
.source "AdobeUploadFilesListViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

.field final synthetic val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$shouldFailForAsset:Z

.field final synthetic val$timer:Ljava/util/Timer;

.field final synthetic val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$shouldFailForAsset:Z

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    iget v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$shouldFailForAsset:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    int-to-double v2, v1

    invoke-interface {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFilesListViewHelper$UploadSimulator$1;->val$uploadState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AssetUploadState;->progress:I

    int-to-double v2, v1

    invoke-interface {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    goto :goto_0
.end method
