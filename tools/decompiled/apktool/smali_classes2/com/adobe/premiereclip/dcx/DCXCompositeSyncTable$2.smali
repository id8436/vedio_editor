.class Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;
.super Ljava/lang/Object;
.source "DCXCompositeSyncTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$100(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$100(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    .line 203
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getPullRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getPullRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v3

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$300(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setDownloadStatusText(Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getPushRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getPushRequest()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v3

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$300(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setUploadStatusText(Ljava/lang/String;)V

    .line 209
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCcAssetDownloadText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$500(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->setCcAssetDownloadText(Ljava/lang/String;)V

    .line 201
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$100(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$2;->this$0:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->access$600(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;)Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;->updateProjectsStatus()V

    .line 217
    :cond_4
    return-void
.end method
