.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;
.super Ljava/lang/Object;
.source "AdobeLibraryBookmarkManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

.field final synthetic val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onCompletion(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->bookmarksBase:Ljava/util/ArrayList;

    .line 426
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->commit(Ljava/lang/Boolean;)V

    .line 427
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    iget-boolean v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->syncModified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;->onComplete(Ljava/lang/Boolean;)V

    .line 428
    return-void
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$5;->val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;->onError(Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method
