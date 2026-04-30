.class Lcom/adobe/premiereclip/library/ClipLibraryManager$1;
.super Ljava/lang/Object;
.source "ClipLibraryManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

.field final synthetic val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field final synthetic val$look:Lcom/adobe/premiereclip/looks/CandyLook;

.field final synthetic val$lookId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Ljava/lang/String;Lcom/adobe/premiereclip/looks/CandyLook;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$lookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$look:Lcom/adobe/premiereclip/looks/CandyLook;

    iput-object p4, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 322
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->onCompletion(Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 325
    const-string/jumbo v0, "Looks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "look : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$lookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",  got cube file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$look:Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/looks/CandyLook;->setCubeDataUrl(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$look:Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getCubeDataUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$look:Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/CandyLook;->getRenditionPathUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    iget-object v0, v0, Lcom/adobe/premiereclip/library/ClipLibraryManager;->_libraryRequestHandler:Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;

    iget-object v1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$1;->val$look:Lcom/adobe/premiereclip/looks/CandyLook;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/library/ClipLibraryManager$LibraryRequestHandler;->sendResult(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/premiereclip/looks/CandyLook;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 330
    :cond_0
    return-void
.end method
