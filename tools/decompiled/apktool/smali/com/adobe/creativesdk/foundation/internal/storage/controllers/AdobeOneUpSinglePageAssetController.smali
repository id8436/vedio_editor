.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;
.super Ljava/lang/Object;
.source "AdobeOneUpSinglePageAssetController.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeOneUpCellViewController;


# instance fields
.field protected _asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

.field protected _currentAssetPos:I

.field protected _displayMetrics:Landroid/util/DisplayMetrics;

.field protected _filesConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;

.field protected _mainRootView:Landroid/view/View;

.field protected _oneUpViewContext:Landroid/content/Context;

.field private _reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;",
            ">;"
        }
    .end annotation
.end field

.field private assetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

.field protected imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

.field private oneUpControllerCode:I

.field touchBuffer:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;[B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->handleAssetImageData([B)V

    return-void
.end method

.method private createTapHandlerForAnnotation()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView$ICellViewTapHandling;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$5;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;)V

    .line 284
    return-object v0
.end method

.method private getAssetViewerController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->assetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    return-object v0
.end method

.method private handleAssetImageData([B)V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_mainRootView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-nez p1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->handleNoPreview()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->saveImageByteDataIntoCache(Ljava/lang/String;[B)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;)V

    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$3;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    goto :goto_0

    .line 188
    :cond_3
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->displayThumbnail(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 193
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->handleVideoFiles()V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelAnyOneUpImageOperation()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->cancelImageLoad(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_filesConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->getEventHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_filesConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;->getEventHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;->clear(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 262
    :cond_0
    return-void
.end method

.method public getAsset()Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    return-object v0
.end method

.method public getController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->getAssetViewerController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAssetPos()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_currentAssetPos:I

    return v0
.end method

.method public getMainRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_mainRootView:Landroid/view/View;

    return-object v0
.end method

.method public getOneUpControllerCode()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->oneUpControllerCode:I

    return v0
.end method

.method public initiateDisplay()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetOneUpViewerActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->isOnline()V

    .line 208
    const/4 v3, 0x1

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 211
    if-eqz v0, :cond_3

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_3

    .line 214
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->displayThumbnail(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 216
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->handleVideoFiles()V

    :cond_0
    move v0, v2

    .line 224
    :goto_0
    if-eqz v0, :cond_1

    .line 226
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$4;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;)V

    .line 248
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;-><init>(FF)V

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 257
    :cond_1
    :goto_1
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->handleNoNetwork()V

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public performInitialization(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;)V
    .locals 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_oneUpViewContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_filesConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerFilesConfiguration;

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_oneUpViewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_displayMetrics:Landroid/util/DisplayMetrics;

    .line 108
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_mainRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setMainRootView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_currentAssetPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setCurrentAssetPos(I)V

    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_oneUpViewContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->performInitialization(Landroid/content/Context;)V

    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setOneUpCellViewController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeOneUpCellViewController;)V

    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->getOneUpControllerCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setOneUpControllerCode(I)V

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->createTapHandlerForAnnotation()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView$ICellViewTapHandling;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setCellViewTabHandling(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpBaseCellView$ICellViewTapHandling;)V

    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->createPhotoTapListenenr()V

    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->getAttacher()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomDelegate(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;)V

    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->initiallizeVideoButton()V

    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_oneUpViewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->touchBuffer:F

    .line 136
    return-void
.end method

.method public setAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 93
    return-void
.end method

.method public setAssetViewerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->assetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    .line 59
    return-void
.end method

.method public setCurrentAssetPos(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_currentAssetPos:I

    .line 85
    return-void
.end method

.method public setMainRootView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_mainRootView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_mainRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 64
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_oneUpViewContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->imageCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->setContext(Landroid/content/Context;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setOneUpControllerCode(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->oneUpControllerCode:I

    .line 275
    return-void
.end method

.method public setReuseableBitmapCacheWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 1

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeOneUpSinglePageAssetController;->_reusableBitmapCacheWorker:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
