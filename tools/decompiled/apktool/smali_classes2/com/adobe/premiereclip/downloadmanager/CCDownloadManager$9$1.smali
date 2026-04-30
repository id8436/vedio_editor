.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 5

    .prologue
    .line 700
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelDownloadOfCreativeCloudFileAssetInMediaPicker()V

    .line 701
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$downloadPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v4, v4, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 702
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "cancelled download!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void
.end method

.method public onCompletion(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 707
    if-eqz p1, :cond_0

    .line 708
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadCreativeCloudFileAssetInMediaPicker()V

    .line 710
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "CC image downloaded..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$200(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;)V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$downloadPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v4, v4, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 716
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "CC download cancel..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 697
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->onCompletion(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 4

    .prologue
    .line 721
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didFailDownloadOfCreativeCloudFileAssetInMediaPicker()V

    .line 722
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$300(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 723
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "CC image download error..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 697
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$projectKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$downloadPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$400(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;D)V

    .line 730
    return-void
.end method
