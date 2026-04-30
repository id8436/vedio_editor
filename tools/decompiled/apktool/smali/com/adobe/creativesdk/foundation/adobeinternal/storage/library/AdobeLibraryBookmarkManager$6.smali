.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;
.super Ljava/lang/Object;
.source "AdobeLibraryBookmarkManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkFileDownloadCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

.field final synthetic val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->bookmarksBase:Ljava/util/ArrayList;

    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->bookmarks:Ljava/util/ArrayList;

    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->commit(Ljava/lang/Boolean;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;

    iget-boolean v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager;->syncModified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;->onComplete(Ljava/lang/Boolean;)V

    .line 462
    return-void
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryBookmarkManager$6;->val$bookmarkSyncComplete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;->onError(Ljava/lang/Object;)V

    .line 469
    return-void
.end method
