.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$1;
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
    .line 188
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$002(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    .line 197
    :cond_0
    return-void
.end method
