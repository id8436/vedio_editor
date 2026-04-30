.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.super Ljava/lang/Object;
.source "AssetListCellView.java"


# static fields
.field private static sContext:Landroid/content/Context;

.field protected static typeface:Landroid/graphics/Typeface;


# instance fields
.field protected _aspectRatioHint:F

.field protected _assetsCount:Landroid/widget/TextView;

.field protected _bottomInfoLayout:Landroid/widget/LinearLayout;

.field protected _cellBottomSection:Landroid/widget/LinearLayout;

.field private _cellDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;",
            ">;"
        }
    .end annotation
.end field

.field protected _container:Landroid/widget/RelativeLayout;

.field protected _disable:Z

.field protected _extText:Landroid/widget/TextView;

.field protected _folderMenuIcon:Landroid/widget/RelativeLayout;

.field protected _forward:Landroid/widget/ImageView;

.field protected _gridViewLayout:Landroid/widget/LinearLayout;

.field protected _guid:Ljava/lang/String;

.field private _hasValidThumnailRendition:Z

.field private _href:Ljava/lang/String;

.field private _imageAssetMD5:Ljava/lang/String;

.field protected _imageViewAssetPicture:Landroid/widget/ImageView;

.field protected _imageViewSharedFolderIcon:Landroid/widget/ImageView;

.field private _isImageEmpty:Z

.field private _isSelectionEnabledOnCell:Z

.field protected _listDivider:Landroid/view/View;

.field protected _listMenuCellLayout:Landroid/widget/RelativeLayout;

.field protected _listMenuIcon:Landroid/widget/ImageView;

.field protected _listMenuLayout:Landroid/widget/RelativeLayout;

.field protected _mainRootView:Landroid/view/View;

.field protected _menuIcon:Landroid/widget/RelativeLayout;

.field protected _menuIconView:Landroid/widget/ImageView;

.field protected _modifiedDate:Landroid/widget/TextView;

.field protected _photoCountView:Landroid/widget/TextView;

.field protected _photoIcon:Landroid/widget/ImageView;

.field private _position:I

.field private _readOnly:Z

.field protected _selectBtn:Landroid/view/View;

.field protected _selected:Z

.field private _shared:Z

.field protected _sizeView:Landroid/widget/TextView;

.field protected _stagerredLayout:Landroid/widget/RelativeLayout;

.field protected _title:Ljava/lang/String;

.field protected _titleView:Landroid/widget/TextView;

.field protected _videoDuration:Landroid/widget/TextView;

.field protected _videoIndicator:Landroid/widget/ImageView;

.field protected _videoLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selected:Z

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_aspectRatioHint:F

    .line 77
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isImageEmpty:Z

    .line 81
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_shared:Z

    .line 82
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_readOnly:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_href:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isSelectionEnabledOnCell:Z

    .line 88
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/AdobeClean-SemiLight.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->typeface:Landroid/graphics/Typeface;

    .line 90
    :cond_0
    return-void
.end method

.method private calcDifferenceInDaysFromToday(Ljava/util/Date;Ljava/util/Calendar;)J
    .locals 4

    .prologue
    .line 484
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 486
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 487
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 488
    sub-long/2addr v0, v2

    .line 489
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 492
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFilesCountText(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_file_count_string_single:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_file_count_string_multiple:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFoldersCountText(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_folder_count_string_single:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_folder_count_string_multiple:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->sContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private updateSelectionBtnVisibility()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isSelectionEnabledOnCell:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->isMarkedDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_0
    return-void

    .line 337
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected changeSelectionOverlay()V
    .locals 4

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selected:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    const/16 v1, 0xed

    const/16 v2, 0xf0

    const/16 v3, 0xf1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public displayThumnail(Landroid/graphics/Bitmap;FZ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isImageEmpty:Z

    .line 382
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_hasValidThumnailRendition:Z

    .line 385
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setThumbnailOnAssetCell(Landroid/graphics/Bitmap;)V

    .line 386
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->updateSelectionBtnVisibility()V

    .line 388
    if-eqz p3, :cond_1

    .line 390
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 404
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 405
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setImageAssetAlpha(F)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_guid:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_href:Ljava/lang/String;

    return-object v0
.end method

.method public getImageMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageAssetMD5:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMenuIconView()Landroid/view/View;
.end method

.method protected getNoPreviewImageResId()I
    .locals 1

    .prologue
    .line 342
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->empty_generic_file:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_position:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public handleAfterImageLoadingComplete()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method protected handleAttachToCellDelegate()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setUpSelectionButtonState()V

    .line 313
    return-void
.end method

.method protected handleDisableChange()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_disable:Z

    if-eqz v0, :cond_1

    const v0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 279
    :cond_0
    return-void

    .line 278
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected handleGuidChange()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method protected abstract handleOnFinishInflate()V
.end method

.method protected handlePostInflate()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected handleSelectionMarkChange()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selected:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->changeSelectionOverlay()V

    goto :goto_0
.end method

.method protected handleTitleChange()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public hasValidThumbnailRendition()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_hasValidThumnailRendition:Z

    return v0
.end method

.method public abstract hidePopUpMenu()V
.end method

.method public initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setMainRootView(Landroid/view/View;)V

    .line 429
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->performOnFinishInflate()V

    .line 430
    return-void
.end method

.method public isEmptyImage()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isImageEmpty:Z

    return v0
.end method

.method public isMarkedDisabled()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_disable:Z

    return v0
.end method

.method public isMarkedSelected()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selected:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_readOnly:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_shared:Z

    return v0
.end method

.method public markSelected(Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selected:Z

    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleSelectionMarkChange()V

    .line 203
    return-void
.end method

.method protected performOnFinishInflate()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleOnFinishInflate()V

    .line 152
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handlePostInflate()V

    .line 153
    return-void
.end method

.method public prepareForReuse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 321
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_guid:Ljava/lang/String;

    .line 322
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_position:I

    .line 323
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_title:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_0
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_disable:Z

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isImageEmpty:Z

    .line 330
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_aspectRatioHint:F

    .line 331
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_cellDelegate:Ljava/lang/ref/WeakReference;

    .line 332
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_hasValidThumnailRendition:Z

    .line 333
    return-void
.end method

.method protected abstract providesSelection()Z
.end method

.method public setAssetImageAspectRatioHint(F)V
    .locals 0

    .prologue
    .line 413
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_aspectRatioHint:F

    .line 414
    return-void
.end method

.method protected setAssetsCount(II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 437
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_assetsCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 441
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_assetsCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 447
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_assetsCount:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    if-nez p1, :cond_3

    .line 450
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_assetsCount:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getFoldersCountText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 451
    :cond_3
    if-nez p2, :cond_4

    .line 452
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_assetsCount:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getFilesCountText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 454
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getFilesCountText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getFoldersCountText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_assetsCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCellDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_cellDelegate:Ljava/lang/ref/WeakReference;

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleAttachToCellDelegate()V

    .line 146
    :cond_0
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public abstract setContextMenuHandler(Landroid/view/View$OnClickListener;)V
.end method

.method public setDisabled(Z)V
    .locals 0

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_disable:Z

    .line 272
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleDisableChange()V

    .line 273
    return-void
.end method

.method protected setFolderMetrics(Z)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_guid:Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleGuidChange()V

    .line 240
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_href:Ljava/lang/String;

    .line 497
    return-void
.end method

.method protected setImageAssetAlpha(F)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 376
    return-void
.end method

.method public setImageMD5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageAssetMD5:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setImageRotation(F)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0
.end method

.method public setMainRootView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_mainRootView:Landroid/view/View;

    .line 133
    return-void
.end method

.method public setModifiedDate(Ljava/util/Date;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_modifiedDate:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getModifiedDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_modifiedDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPhotoAssetsCount(I)V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_photoCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_photoCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_photos_count_inside_collection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_position:I

    .line 169
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_readOnly:Z

    .line 262
    return-void
.end method

.method public setShared(Z)V
    .locals 0

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_shared:Z

    .line 252
    return-void
.end method

.method public setSize(J)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_sizeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_sizeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setThumbnailOnAssetCell(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/16 v1, 0x10e

    .line 346
    if-eqz p1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 362
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleAfterImageLoadingComplete()V

    .line 364
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_title:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->handleTitleChange()V

    .line 175
    return-void
.end method

.method protected setUpSelectionButtonState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->providesSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_cellDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;

    .line 291
    if-eqz v0, :cond_0

    .line 293
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;->getSelectionOverallVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isSelectionEnabledOnCell:Z

    .line 294
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isSelectionEnabledOnCell:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_selectBtn:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_isSelectionEnabledOnCell:Z

    goto :goto_0
.end method

.method protected toggleItemMarkSelection()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_cellDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;->handleAssetCellSelectionToggle(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V

    .line 285
    :cond_0
    return-void
.end method
