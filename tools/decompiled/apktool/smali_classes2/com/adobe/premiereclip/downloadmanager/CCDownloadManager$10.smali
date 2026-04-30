.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$adobePhotoAssetFile:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$projectKey:Ljava/lang/String;

.field final synthetic val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$adobePhotoAssetFile:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iput-object p3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$projectKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    iput-object p6, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$downloadPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 743
    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$adobePhotoAssetFile:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;->val$adobePhotoAssetFile:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 744
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getRenditions()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "2048"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;

    new-instance v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10$1;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$10;)V

    .line 743
    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->downloadRendition(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAssetRendition;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 781
    return-void
.end method
