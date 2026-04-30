.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;
.super Ljava/lang/Object;
.source "AdobeOneUpMultiPageViewPagerController.java"


# instance fields
.field private asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

.field private assetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

.field private fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

.field private mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

.field private mainRootView:Landroid/view/View;

.field private numPages:I

.field private oneUpViewContext:Landroid/content/Context;

.field private pagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

.field private reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;",
            ">;"
        }
    .end annotation
.end field

.field private zoomFocusX:F

.field private zoomFocusY:F

.field private zoomScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusX:F

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mainRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->getValidReusableWorker()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->getAssetViewerController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->numPages:I

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->numPages:I

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomScale:F

    return v0
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusY:F

    return v0
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusY:F

    return p1
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->oneUpViewContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusX:F

    return v0
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;F)F
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusX:F

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;[BLcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->handleAssetImageData([BLcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V

    return-void
.end method

.method private getAssetViewerController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->assetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    return-object v0
.end method

.method private getValidReusableWorker()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAssetImageData([BLcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mainRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 141
    :cond_0
    if-nez p1, :cond_1

    .line 142
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->handleNoPreview()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->getValidReusableWorker()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    invoke-static {v1, v2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->cacheKeyForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$1;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$2;

    invoke-direct {v3, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0

    .line 170
    :cond_2
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->displayThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getFragmentController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    return-object v0
.end method

.method public handleOrientationChange()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 375
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomScale:F

    move v1, v2

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 380
    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomScale:F

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(F)V

    .line 377
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 382
    :cond_1
    return-void
.end method

.method public performInitiallization(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->oneUpViewContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mainRootView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_multipage_vertical_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    .line 110
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->oneUpViewContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->pagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->setOffscreenPageLimit(I)V

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->setPageMargin(I)V

    .line 114
    return-void
.end method

.method public setAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 82
    return-void
.end method

.method public setAssetViewerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->assetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    .line 96
    return-void
.end method

.method public setFragmentController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->fragmentController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeMultiPageFragmentController;

    .line 86
    return-void
.end method

.method public setMainRootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mainRootView:Landroid/view/View;

    .line 78
    return-void
.end method

.method public setReuseableBitmapCacheWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 1

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public startViewPager(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomScale:F

    .line 120
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusX:F

    .line 121
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->zoomFocusY:F

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->pagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController$AdobeOneUpMultiPageAdapter;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeOneUpMultiPageViewPagerController;->mPager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;->setCurrentItem(I)V

    .line 128
    return-void
.end method
