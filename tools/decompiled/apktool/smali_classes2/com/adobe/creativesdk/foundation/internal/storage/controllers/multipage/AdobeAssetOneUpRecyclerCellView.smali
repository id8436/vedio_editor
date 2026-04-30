.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;
.source "AdobeAssetOneUpRecyclerCellView.java"


# instance fields
.field protected _cellPos:I

.field private handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;-><init>()V

    .line 23
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->height:I

    .line 24
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->width:I

    return-void
.end method

.method private setNoPreviewSize(II)V
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/4 v1, -0x1

    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge p2, v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_noPreviewView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_noPreviewView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public displayThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_cellPos:I

    if-ne v0, p2, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->displayThumbnail(Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_imageView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 70
    :cond_0
    return-void
.end method

.method public displayThumbnail(Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 102
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->width:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->height:I

    if-ne v0, v3, :cond_3

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

    invoke-interface {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;->getWidth()I

    move-result v2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

    invoke-interface {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;->getHeight()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

    invoke-interface {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;->setMeasurements(II)V

    .line 107
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->setNoPreviewSize(II)V

    .line 109
    :cond_3
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_cellPos:I

    if-ne v0, p2, :cond_4

    .line 110
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->displayThumbnail(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_imageView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    :cond_4
    return-void
.end method

.method protected handleNetworkOnline()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->handleNetworkOnline()V

    .line 75
    return-void
.end method

.method protected handleOffline(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, -0x1

    .line 86
    if-nez p1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_imageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->width:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->height:I

    if-ne v0, v1, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->width:I

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->height:I

    .line 92
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->width:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->height:I

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->setNoPreviewSize(II)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_noPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    :cond_2
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->handleOffline(Z)V

    .line 99
    return-void
.end method

.method public performInitialization(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 79
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView;->performInitialization(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_noInternetConnView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_noPreviewView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method protected prepareForReuse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_imageView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_noPreviewView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_imageView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_imageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public setCellPos(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->_cellPos:I

    .line 29
    return-void
.end method

.method public setNoPreviewHandler(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeAssetOneUpRecyclerCellView;->handler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/IAdobeNoPreviewSizeHandler;

    .line 120
    return-void
.end method
