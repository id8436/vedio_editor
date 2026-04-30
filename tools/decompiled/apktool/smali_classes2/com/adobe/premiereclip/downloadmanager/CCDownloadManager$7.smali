.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$assetPath:Ljava/lang/String;

.field final synthetic val$lastModifiedDate:Ljava/lang/String;

.field final synthetic val$originalAssetPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->val$assetPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->val$originalAssetPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->val$lastModifiedDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 542
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->val$assetPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->val$originalAssetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$7;->val$lastModifiedDate:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didFinishDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 548
    :cond_0
    return-void
.end method
