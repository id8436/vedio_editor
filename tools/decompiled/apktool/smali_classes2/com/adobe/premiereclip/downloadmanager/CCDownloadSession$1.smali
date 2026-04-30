.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;
.super Ljava/lang/Object;
.source "CCDownloadSession.java"

# interfaces
.implements Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onPreparingCancelled()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->getInstance()Lcom/adobe/premiereclip/source/CreativeCloudSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    invoke-static {v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->access$000(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/source/CreativeCloudSource;->cancelCCDownloads(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)V

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$1;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;

    invoke-static {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;->access$200(Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession;)Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;->onDownloadCancel(I)V

    .line 116
    return-void
.end method

.method public onPublished()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onSavingCancelled()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
