.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$assetKey:Ljava/lang/String;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;DLjava/lang/String;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-wide p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->val$progress:D

    iput-object p4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->val$assetKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->val$progress:D

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$4;->val$assetKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didUpdateProgressOfAssetDownload(DLjava/lang/String;)V

    .line 467
    :cond_0
    return-void
.end method
