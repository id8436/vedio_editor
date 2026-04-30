.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;
.super Ljava/lang/Object;
.source "AdobeLibraryBookmarkManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->isConflictError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->downloadBookmarksFile(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkFileDownloadCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 270
    monitor-exit p0

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->val$completionHandler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 267
    monitor-exit p0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 240
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method
