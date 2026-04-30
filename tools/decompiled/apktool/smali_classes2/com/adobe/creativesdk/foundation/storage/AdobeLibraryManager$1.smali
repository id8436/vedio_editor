.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;
.super Ljava/lang/Object;
.source "AdobeLibraryManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

.field final synthetic val$inCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

.field final synthetic val$libraryId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;->val$inCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;->val$libraryId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 813
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;->onCompletion(Ljava/lang/Void;)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;->val$inCollection:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCollection;->_syncManager:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$1;->val$libraryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;->queueLibraryForDelete(Ljava/lang/String;)V

    .line 818
    return-void
.end method
