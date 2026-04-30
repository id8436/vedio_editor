.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;
.super Ljava/lang/Object;
.source "AdobeAssetMultiRootedDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$newData:Ljava/util/List;

.field final synthetic val$numberProcessed:[I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;[ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$numberProcessed:[I

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$items:Ljava/util/List;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$newData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$numberProcessed:[I

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 404
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 405
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorFileDoesNotExist:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$loadingErrors:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$folder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$numberProcessed:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$newData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$newData:Ljava/util/List;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$sortComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 417
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$weakSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->val$newData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 428
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$008(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 429
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 430
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->val$lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    :cond_1
    return-void

    .line 420
    :cond_2
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 421
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_3

    .line 422
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$208(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;->access$108(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource;)I

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 395
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMultiRootedDataSource$1$2$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
