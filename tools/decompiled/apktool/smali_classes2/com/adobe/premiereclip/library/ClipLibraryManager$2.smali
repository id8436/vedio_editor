.class Lcom/adobe/premiereclip/library/ClipLibraryManager$2;
.super Ljava/lang/Object;
.source "ClipLibraryManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

.field final synthetic val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field final synthetic val$lookId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->val$lookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 3

    .prologue
    .line 334
    const-string/jumbo v0, "Looks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "look : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->val$lookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",  error for cube file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    iget-object v0, v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_libraryRequestHandler:Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->sendResult(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/premiereclip/looks/CandyLook;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 336
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    return-void
.end method
