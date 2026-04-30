.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;
.super Ljava/lang/Object;
.source "AssetsRecyclerView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

.field final synthetic val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field final synthetic val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->val$collection:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_photoCountView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setPhotoAssetsCount(I)V

    .line 592
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 584
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$8;->onCompletion(Ljava/lang/Integer;)V

    return-void
.end method
