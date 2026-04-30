.class final Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;
.super Ljava/lang/Object;
.source "AdobeAssetFolder.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;


# instance fields
.field final synthetic val$completionDelegate:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorDelegate:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$parentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->val$parentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->val$completionDelegate:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->val$errorDelegate:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 2

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->val$parentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 622
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    invoke-direct {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 624
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->val$completionDelegate:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 628
    :cond_0
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 1

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->val$errorDelegate:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 637
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 615
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder$4;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
