.class Lcom/adobe/premiereclip/prexport/PrExportManager$1$1;
.super Ljava/lang/Object;
.source "PrExportManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/prexport/PrExportManager$1;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportManager$1;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$1$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 3

    .prologue
    .line 475
    const-string/jumbo v0, "PrExportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "folder created in CC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$1$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportManager$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportManager$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V

    .line 477
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->printStackTrace()V

    .line 483
    const-string/jumbo v0, "PrExportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "folder creation in CC failed, error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  error description : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 484
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$1$1;->this$1:Lcom/adobe/premiereclip/prexport/PrExportManager$1;

    iget-object v0, v0, Lcom/adobe/premiereclip/prexport/PrExportManager$1;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$000(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V

    .line 486
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 472
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportManager$1$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
