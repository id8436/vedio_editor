.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 5

    .prologue
    .line 776
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$downloadPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v4, v4, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 777
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didCancelDownloadOfCreativeCloudPhotoAssetInMediaPicker()V

    .line 778
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "LR photo download cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 745
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 5

    .prologue
    .line 749
    if-eqz p1, :cond_0

    .line 750
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didDownloadCreativeCloudPhotoAssetInMediaPicker()V

    .line 751
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "LR photo downloaded..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$500(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;[B)V

    .line 758
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$downloadPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v4, v4, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$100(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 756
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "LR photo download cancel..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;)V
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$projectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v3, v3, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$300(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 763
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didFailDownloadOfCreativeCloudPhotoAssetInMediaPicker()V

    .line 764
    const-string/jumbo v0, "CCDownloadManager"

    const-string/jumbo v1, "LR photo download error..."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 745
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v0, v0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v1, v1, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$projectKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;->this$1:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;

    iget-object v2, v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$downloadPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->access$400(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Ljava/lang/String;Ljava/lang/String;D)V

    .line 771
    const-string/jumbo v0, "CCDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LR photo download ongoing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method
