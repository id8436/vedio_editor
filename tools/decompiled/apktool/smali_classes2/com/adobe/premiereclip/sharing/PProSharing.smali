.class public Lcom/adobe/premiereclip/sharing/PProSharing;
.super Ljava/lang/Object;
.source "PProSharing.java"

# interfaces
.implements Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;


# instance fields
.field private activity:Landroid/app/Activity;

.field private listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

.field private mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

.field private mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

.field private notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

.field private project:Lcom/adobe/premiereclip/project/Project;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/project/Project;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->project:Lcom/adobe/premiereclip/project/Project;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/PProSharing;)Lcom/adobe/premiereclip/sharing/PrExportDialog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/PProSharing;)Lcom/adobe/premiereclip/prexport/PrExportManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

    return-object v0
.end method


# virtual methods
.method public isProjectReadyToExport()Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/adobe/premiereclip/prexport/PrExportManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->project:Lcom/adobe/premiereclip/project/Project;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/adobe/premiereclip/prexport/PrExportManager;-><init>(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->isProjectReadyToExport()Z

    move-result v0

    .line 59
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->dismiss()V

    .line 62
    :cond_1
    return v0
.end method

.method public onPProExportCancelled()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PProSharing$Listener;->onFinished()V

    .line 166
    :cond_0
    return-void
.end method

.method public onPProExportComplete()V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "PrExport"

    const-string/jumbo v1, "ppro export success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/PrExportDialog;->setPrepareProgress(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public onPProExportError(Z)V
    .locals 5

    .prologue
    .line 133
    const-string/jumbo v0, "PrExport"

    const-string/jumbo v1, "ppro export error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrExportDialog;->dismiss()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PProSharing$Listener;->onFinished()V

    .line 141
    :cond_1
    if-eqz p1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0518

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowPremiereProExportFailureView()V

    .line 148
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0456

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 151
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0455

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPProExportProgress(D)V
    .locals 3

    .prologue
    .line 155
    const-string/jumbo v0, "PrExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "export progess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    double-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/sharing/PrExportDialog;->setPrepareProgress(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public performSendToPPro(ZLcom/adobe/premiereclip/sharing/PProSharing$Listener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 66
    new-instance v1, Lcom/adobe/premiereclip/prexport/PrExportManager;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->project:Lcom/adobe/premiereclip/project/Project;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0, v3}, Lcom/adobe/premiereclip/prexport/PrExportManager;-><init>(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/prexport/PrExportManager$PrExportCallback;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

    .line 67
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->listener:Lcom/adobe/premiereclip/sharing/PProSharing$Listener;

    .line 68
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/metrics/Metrics;->didShowPremiereProExportUploadView()V

    .line 69
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v2, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0402

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    .line 71
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0401

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PProSharing;->isProjectReadyToExport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    const-string/jumbo v1, "SharingOptionsActivity"

    const-string/jumbo v2, "project not ready to export"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    const-string/jumbo v2, "Premiere Pro"

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/metrics/Metrics;->didDenyUploadDueToMissingMediaInCloudForDestination(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 120
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->notReadyDialog:Lcom/adobe/premiereclip/dialogs/MessageDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->dismiss()V

    .line 82
    if-eqz p2, :cond_2

    .line 83
    invoke-interface {p2}, Lcom/adobe/premiereclip/sharing/PProSharing$Listener;->onStarted()V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportManager:Lcom/adobe/premiereclip/prexport/PrExportManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/PrExportManager;->exportFilesToCC()V

    .line 87
    new-instance v0, Lcom/adobe/premiereclip/sharing/PrExportDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/adobe/premiereclip/sharing/PProSharing$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/adobe/premiereclip/sharing/PProSharing$1;-><init>(Lcom/adobe/premiereclip/sharing/PProSharing;Lcom/adobe/premiereclip/sharing/PProSharing$Listener;Z)V

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/PrExportDialog;-><init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    .line 119
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PProSharing;->mPrExportDialog:Lcom/adobe/premiereclip/sharing/PrExportDialog;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/PrExportDialog;->show()V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method
