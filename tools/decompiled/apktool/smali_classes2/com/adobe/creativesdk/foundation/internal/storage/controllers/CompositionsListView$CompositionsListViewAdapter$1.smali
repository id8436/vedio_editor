.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;
.super Ljava/lang/Object;
.source "CompositionsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;

.field final synthetic val$assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

.field final synthetic val$packageCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;

.field final synthetic val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$pages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$packageCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$assetPackagePages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$pages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 366
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method
