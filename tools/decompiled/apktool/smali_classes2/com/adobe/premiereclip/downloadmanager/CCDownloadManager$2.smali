.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$componentInfoModel:Lcom/adobe/sync/database/ComponentInfoModel;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/sync/database/ComponentInfoModel;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->val$componentInfoModel:Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->val$componentInfoModel:Lcom/adobe/sync/database/ComponentInfoModel;

    invoke-virtual {v1}, Lcom/adobe/sync/database/ComponentInfoModel;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->val$componentInfoModel:Lcom/adobe/sync/database/ComponentInfoModel;

    .line 233
    invoke-virtual {v2}, Lcom/adobe/sync/database/ComponentInfoModel;->getAssetURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$2;->val$componentInfoModel:Lcom/adobe/sync/database/ComponentInfoModel;

    .line 234
    invoke-virtual {v3}, Lcom/adobe/sync/database/ComponentInfoModel;->getCreatedDate()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 232
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didFinishDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 236
    :cond_0
    return-void
.end method
