.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;
.super Ljava/lang/Object;
.source "AdobeLibraryCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/IBookmarkSyncCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

.field final synthetic val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 1091
    monitor-enter p0

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 1093
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->bookmarksFileSynced(Z)V

    .line 1094
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "BOOKMARK"

    const-string/jumbo v2, "syncBookmarks "

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "BOOKMARK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncBookmarks  isSyncing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isSyncing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 1099
    :cond_0
    monitor-exit p0

    .line 1100
    return-void

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->bookmarkRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 1106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_manager:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection$1;->val$collection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryManagerInternal;->syncCompletedForCollection(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;)V

    .line 1113
    :cond_0
    return-void
.end method
