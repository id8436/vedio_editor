.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$lastModifiedDate:Ljava/lang/String;

.field final synthetic val$originalPath:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->val$originalPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->val$lastModifiedDate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->val$originalPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$3;->val$lastModifiedDate:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didFinishDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 362
    :cond_0
    return-void
.end method
