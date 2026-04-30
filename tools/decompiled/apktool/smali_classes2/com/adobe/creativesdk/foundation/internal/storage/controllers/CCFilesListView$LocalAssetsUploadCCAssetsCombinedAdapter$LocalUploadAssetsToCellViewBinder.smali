.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;
.super Ljava/lang/Object;
.source "CCFilesListView.java"


# instance fields
.field _assetsUploadObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;)V
    .locals 1

    .prologue
    .line 896
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->_assetsUploadObservers:Ljava/util/HashMap;

    .line 898
    return-void
.end method

.method private getUploadSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 3

    .prologue
    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 919
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 932
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->_assetsUploadObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->getUploadSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->addObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V

    .line 936
    return-void
.end method

.method public resetBinder()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->_assetsUploadObservers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 902
    return-void
.end method

.method public unBindCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 3

    .prologue
    .line 939
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->_assetsUploadObservers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 940
    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->_assetsUploadObservers:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->getUploadSession()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->removeObserverForAssetUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Ljava/util/Observer;)V

    goto :goto_0
.end method

.method protected updateUploadCellViewStatus(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$LocalUploadAssetsToCellViewBinder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-static {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 910
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->getProgress()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadAssetCellView;->setUploadProgres(D)V

    goto :goto_0
.end method
