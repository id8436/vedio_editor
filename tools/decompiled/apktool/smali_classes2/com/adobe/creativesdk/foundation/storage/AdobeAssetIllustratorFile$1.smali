.class final Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;
.super Ljava/lang/Object;
.source "AdobeAssetIllustratorFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;


# instance fields
.field final synthetic val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

.field final synthetic val$illustratorFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$resourceItem:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$resourceItem:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$illustratorFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$resourceItem:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;->etag:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$illustratorFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$illustratorFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetIllustratorFile$1;->val$illustratorFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 123
    return-void
.end method
