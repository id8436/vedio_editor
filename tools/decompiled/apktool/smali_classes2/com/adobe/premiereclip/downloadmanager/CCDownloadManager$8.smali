.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$8;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$8;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$8;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$8;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didRejectAssetDownload()V

    .line 627
    :cond_0
    return-void
.end method
