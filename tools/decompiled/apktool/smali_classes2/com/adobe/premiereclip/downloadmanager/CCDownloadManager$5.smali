.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$5;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$CCDownloadCallback;->didFinishDownloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 486
    :cond_0
    return-void
.end method
