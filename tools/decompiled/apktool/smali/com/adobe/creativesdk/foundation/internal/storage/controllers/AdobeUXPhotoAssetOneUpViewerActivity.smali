.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;
.source "AdobeUXPhotoAssetOneUpViewerActivity.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;


# instance fields
.field private mImageSelectbtn:Landroid/widget/ImageButton;

.field private photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

.field private photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->updateSelectionBtn()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->setShareIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getUniqueNameForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUniqueNameForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getGUID()Ljava/lang/String;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 406
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 407
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 408
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 410
    :cond_2
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private onViewFileDetailsPressed()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method private setShareIntent()V
    .locals 7

    .prologue
    .line 423
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    .line 424
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    .line 426
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;ILcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 528
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getUniqueNameForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;

    move-result-object v3

    .line 529
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ".png"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->isMenuEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->enableOrDisableOpenBtn(IZ)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getRenditionForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    goto :goto_0
.end method

.method private updateSelectionBtn()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->containsAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public enableOrDisableOpenBtn(IZ)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 304
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    if-ne p1, v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtn:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 307
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 310
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->removeSelectedAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 312
    :cond_0
    if-eqz p2, :cond_2

    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtn:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtn:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public fetchCurrentPageIndex()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    return v0
.end method

.method protected getCurrentAssetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getItemPageChangeListener()Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXAssetViewerPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXAssetViewerPageChangeListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$1;)V

    return-object v0
.end method

.method public getItemTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPagerOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method protected getShareFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getUniqueNameForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public handleAssetCollectionChanged()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 300
    return-void
.end method

.method public handleAssetSelectionChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getSelectedAssetCount()I

    move-result v0

    .line 342
    if-ge v0, v2, :cond_0

    .line 343
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_open_files:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenFileText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    return-void

    .line 344
    :cond_0
    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 345
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_open_multiple_files_99:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_open_multiple_files:I

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hideActionsBar()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->hideOrShowBaseActivityActionsBar()V

    .line 279
    return-void
.end method

.method public hideOrShowActionsBar()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->hideOrShowBaseActivityActionsBar()V

    .line 295
    return-void
.end method

.method protected initializeConfiguration()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->_oneUpViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;

    const-string/jumbo v1, "ADOBE_ONE_UP_VIEW_PHOTO_CONFIGURATION"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerController;->getConfiguration(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getAdobePhotoAssetDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getAdobePhotoAsset()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->createPhotoAssetViewerController(Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoAssetsDataSource;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    .line 147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->configuration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerBaseConfiguration;

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->isDataSourceValidForAssetViewerLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->finish()V

    .line 263
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->setCurrentAssetViewerActivity(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAssetViewerActivity;)V

    .line 186
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXPhotoAssetViewerAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    .line 188
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_item_pager:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mAdapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXAssetViewerPageChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$AdobeUXAssetViewerPageChangeListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDepthPageTransformer;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDepthPageTransformer;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "adobeassetviewerimages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtn:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_library_items_image_selectbtn:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    .line 223
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->updateSelectionBtnVisibility(Z)V

    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getSelectedIndex()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 228
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPhotoNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_ASSET_VIEWER_OF:I

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getTotalAssetsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->isMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtnContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->isMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->isMultiSelectModeActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    :goto_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->updateSelectionBtn()V

    .line 246
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->handleAssetSelectionChanged()V

    goto/16 :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtnContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->isDataSourceValidForAssetViewerLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 396
    :goto_0
    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->isMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getMenuLayout()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getMenuLayout()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 364
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 366
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getAdobeString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 369
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getActionViewID(I)Ljava/lang/Integer;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_1

    .line 376
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 377
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->setActionView(ILandroid/view/View;)V

    .line 378
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$3;

    invoke-direct {v2, p0, p1, v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;Landroid/view/Menu;ILandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 394
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->setShareIntent()V

    .line 396
    :cond_3
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->destorySharedInstance()V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImagePath:Ljava/io/File;

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->resetCurrentAdobeUXAssetViewerActivity()V

    .line 119
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 545
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 546
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->onBackPressed()V

    .line 559
    :cond_0
    :goto_0
    return v4

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getEventHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;-><init>()V

    .line 554
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;->setOriginalAsset(Ljava/lang/Object;)V

    .line 555
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewDataType;->ADOBE_ONE_UP_VIEW_DATA_TYPE_PHOTOS:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewDataType;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;->setType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewDataType;)V

    .line 556
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->getEventHandler()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/IAdobeOneUpViewerEventHandler;->handleMenuClick(ILcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewData;Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->setSelectedIndex(I)V

    .line 269
    const-string/jumbo v0, "ASSET_ONE_UP_ACTIVITY"

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetShareBaseOneUpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    return-void
.end method

.method public showActionsBar()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->hideOrShowBaseActivityActionsBar()V

    .line 286
    return-void
.end method

.method protected updateOpenBtnContainerVisibility()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->isMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtnContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mOpenBtnContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSelectionBtnVisibility(Z)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photosConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/OneUpViewConfiguration/AdobeOneUpViewerPhotosConfiguration;->isMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->photoAssetViewerController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobePhotoAssetViewerController;->isMultiSelectModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    if-eqz p1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXPhotoAssetOneUpViewerActivity;->mImageSelectbtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
