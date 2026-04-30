.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;
.source "CCFilesSectionListView.java"


# instance fields
.field private _recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method protected addAssetRenditionToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected addAssetRenditionToCache([BLjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected createAssetItemsAdapter(Landroid/content/Context;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createUploadCombinedAdapter()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$LocalUploadAssetsCCFilesCombinedListAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_list_view_image_margin_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/DividerDecoration;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getMainRootView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 63
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_assets_listview:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_listview_swipe_refresh_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 67
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_assetbrowser_listView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView;->_recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    return-object v1
.end method

.method protected loadAssetRenditionFromCache(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method protected resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;

    invoke-virtual {p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/SectionalListFolderCellView;->resetFolderView(ZZZ)V

    .line 96
    return-void
.end method
