.class Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;
.super Ljava/lang/Object;
.source "CCDownloadManager.java"


# instance fields
.field public asset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

.field public progress:D

.field final synthetic this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;D)V
    .locals 1

    .prologue
    .line 823
    iput-object p1, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->this$0:Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    iput-object p2, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    .line 825
    iput-wide p3, p0, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$AssetDownloadEntity;->progress:D

    .line 826
    return-void
.end method
