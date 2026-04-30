.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;
.super Ljava/lang/Object;
.source "AssetsRecyclerView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

.field final synthetic val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field final synthetic val$cellposition:I

.field final synthetic val$isFolderShared:Z

.field final synthetic val$isReadOnly:Z

.field final synthetic val$shouldFilterOutAsset:Z


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZIZ)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iput-boolean p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$isFolderShared:Z

    iput-boolean p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$isReadOnly:Z

    iput p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$cellposition:I

    iput-boolean p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$shouldFilterOutAsset:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 293
    if-nez p2, :cond_1

    .line 294
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$isFolderShared:Z

    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$isReadOnly:Z

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$cellposition:I

    if-ne v0, v1, :cond_0

    .line 296
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$shouldFilterOutAsset:Z

    if-eqz v0, :cond_2

    const v0, 0x3e99999a    # 0.3f

    .line 297
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$3;->val$assetViewCell:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v1, p2, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->displayThumnail(Landroid/graphics/Bitmap;FZ)V

    goto :goto_0

    .line 296
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method
