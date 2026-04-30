.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;
.super Ljava/lang/Object;
.source "AssetsRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAssetView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field private mPosition:I

.field private mViewType:I

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;II)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;->mAssetView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    .line 925
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;->mPosition:I

    .line 926
    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;->mViewType:I

    .line 927
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;->mPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->handlePopupMenuClick(ILandroid/view/View;)V

    .line 933
    return-void
.end method
