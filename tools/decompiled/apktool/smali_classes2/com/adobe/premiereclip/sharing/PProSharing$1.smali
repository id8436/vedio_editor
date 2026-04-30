.class Lcom/adobe/premiereclip/sharing/PProSharing$1;
.super Ljava/lang/Object;
.source "PProSharing.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/PProSharing;

.field final synthetic val$listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

.field final synthetic val$retryAfterSync:Z


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/PProSharing;Lcom/adobe/premiereclip/sharing/PProSharing$Listener;Z)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->this$0:Lcom/adobe/premiereclip/sharing/PProSharing;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    iput-boolean p3, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$retryAfterSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onPreparingCancelled()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->this$0:Lcom/adobe/premiereclip/sharing/PProSharing;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PProSharing;->access$000(Lcom/adobe/premiereclip/sharing/PProSharing;)Lcom/adobe/premiereclip/sharing/PrExportDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->this$0:Lcom/adobe/premiereclip/sharing/PProSharing;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PProSharing;->access$000(Lcom/adobe/premiereclip/sharing/PProSharing;)Lcom/adobe/premiereclip/sharing/PrExportDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrExportDialog;->dismiss()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->this$0:Lcom/adobe/premiereclip/sharing/PProSharing;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/PProSharing;->access$100(Lcom/adobe/premiereclip/sharing/PProSharing;)Lcom/adobe/premiereclip/prexport/PrExportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->cancelExport()V

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PProSharing$Listener;->onFinished()V

    .line 97
    :cond_1
    return-void
.end method

.method public onPublished()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$retryAfterSync:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    const-string/jumbo v1, "Premiere Pro"

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didSendVideoUploadToPremiereProAfterSyncAlert(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing$1;->val$listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PProSharing$Listener;->onFinished()V

    .line 111
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowPremiereProExportSuccessView()V

    .line 112
    return-void
.end method

.method public onSavingCancelled()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
