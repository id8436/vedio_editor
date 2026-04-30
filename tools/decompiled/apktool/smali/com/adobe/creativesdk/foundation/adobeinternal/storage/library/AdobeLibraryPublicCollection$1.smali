.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;
.super Ljava/lang/Object;
.source "AdobeLibraryPublicCollection.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

.field final synthetic val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForPull(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->doSync(Z)V

    .line 101
    :cond_1
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryPublicCollection$1;->onCompletion(Ljava/lang/Boolean;)V

    return-void
.end method
