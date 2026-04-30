.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;
.super Ljava/lang/Object;
.source "AdobeOneUpMultiPageStaggeredGridViewController.java"


# instance fields
.field protected _asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

.field private _fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

.field protected _mainRootView:Landroid/view/View;

.field protected _multiPageSectionalTextView:Landroid/widget/TextView;

.field protected _mutiPageSectionalHeader:Landroid/view/View;

.field protected _oneUpViewContext:Landroid/content/Context;

.field protected _staggeredGridView:Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;

.field protected num_pages:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->num_pages:I

    return-void
.end method

.method private TryAspectRatioSetupFromAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 3

    .prologue
    .line 214
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 217
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :try_start_0
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 225
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 226
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredCellView;->setAssetImageAspectRatioHint(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->TryAspectRatioSetupFromAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    return-void
.end method


# virtual methods
.method public getFragmentController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    return-object v0
.end method

.method public getMainRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mainRootView:Landroid/view/View;

    return-object v0
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mainRootView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_multipage_StaggeredGridView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_staggeredGridView:Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;

    .line 68
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_oneUpViewContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mainRootView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_one_up_multi_page_grid_section_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mutiPageSectionalHeader:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mainRootView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_one_up_multi_page_grid_section_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_multiPageSectionalTextView:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_staggeredGridView:Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$AdobeMultiPageStaggeredGridViewAdapter;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$AdobeMultiPageStaggeredGridViewAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mutiPageSectionalHeader:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mutiPageSectionalHeader:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_multiPageSectionalTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_oneUpViewContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_multi_page_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->num_pages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_staggeredGridView:Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method

.method public setAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 54
    return-void
.end method

.method public setFragmentController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    .line 58
    return-void
.end method

.method public setMainRootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageStaggeredGridViewController;->_mainRootView:Landroid/view/View;

    .line 50
    return-void
.end method
