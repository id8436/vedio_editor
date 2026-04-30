.class Lcom/adobe/premiereclip/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/downloadmanager/CCDownloadSession$Listener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;

.field final synthetic val$bumper:Z


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;Z)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iput-boolean p2, p0, Lcom/adobe/premiereclip/MainActivity$14;->val$bumper:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCancel(I)V
    .locals 0

    .prologue
    .line 1782
    return-void
.end method

.method public onDownloadComplete(Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/MediaInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1760
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1761
    if-lez p3, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0398

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1764
    :cond_0
    sub-int v1, p2, p3

    sub-int/2addr v1, v0

    .line 1765
    if-lez v1, :cond_1

    .line 1766
    new-instance v2, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v3, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    iget-object v4, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    .line 1767
    invoke-virtual {v4}, Lcom/adobe/premiereclip/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a039a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const v6, 0x7f0a039b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1768
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-virtual {v5, v6, v7}, Lcom/adobe/premiereclip/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1, v9}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1769
    invoke-virtual {v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 1771
    :cond_1
    if-lez v0, :cond_2

    .line 1772
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/MediaInfo;->getAssetUrl()Ljava/lang/String;

    move-result-object v0

    .line 1773
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1774
    iget-object v2, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/MediaInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/media/MediaInfo;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/MediaInfo;->getAssetDate()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/adobe/premiereclip/MainActivity$14;->val$bumper:Z

    invoke-static {v2, v3, v1, v0, v4}, Lcom/adobe/premiereclip/MainActivity;->access$1800(Lcom/adobe/premiereclip/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1775
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$14;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1600(Lcom/adobe/premiereclip/MainActivity;)V

    .line 1777
    :cond_2
    return-void
.end method

.method public onDownloadProgress(D)V
    .locals 0

    .prologue
    .line 1756
    return-void
.end method

.method public onDownloadStart()V
    .locals 0

    .prologue
    .line 1751
    return-void
.end method
