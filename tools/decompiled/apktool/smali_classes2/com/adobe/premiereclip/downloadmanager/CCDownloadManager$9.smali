.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

.field final synthetic val$assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$downloadURI:Ljava/net/URI;

.field final synthetic val$projectKey:Ljava/lang/String;

.field final synthetic val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$downloadURI:Ljava/net/URI;

    iput-object p4, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$selectedAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    iput-object p5, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$projectKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$downloadPath:Ljava/lang/String;

    iput-object p7, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$assetFile:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;->val$downloadURI:Ljava/net/URI;

    new-instance v2, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9$1;-><init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->downloadAssetFile(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 732
    return-void
.end method
