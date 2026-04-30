.class public Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKImageSelectorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER:I = 0x1a85

.field private static final ACTIVITY_RESULT_REQUEST_CODE_PICK_PICTURE_FROM_CAMERA:I = 0x1

.field public static final ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES:Ljava/lang/String; = "ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES"

.field public static final ARGS_ALLOWED_FILE_EXTENSIONS_LIST:Ljava/lang/String; = "ARGS_ALLOWED_FILE_EXTENSIONS_LIST"

.field public static final ARGS_HIDE_CC_ASSET_BROWSER:Ljava/lang/String; = "ARGS_HIDE_CC_ASSET_BROWSER"

.field public static final ARGS_IMAGE_VALITATOR_TYPE:Ljava/lang/String; = "ARGS_IMAGE_VALITATOR_TYPE"

.field public static final ARGS_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "ARGS_MAX_IMAGE_HEIGHT"

.field public static final ARGS_MAX_IMAGE_SIZE_BYTES:Ljava/lang/String; = "ARGS_MAX_IMAGE_SIZE_BYTES"

.field public static final ARGS_MAX_IMAGE_WIDTH:Ljava/lang/String; = "ARGS_MAX_IMAGE_WIDTH"

.field public static final ARGS_MAX_NUMBER_OF_IMAGES:Ljava/lang/String; = "ARGS_MAX_NUMBER_OF_IMAGES"

.field public static final ARGS_MIN_IMAGE_HEIGHT:Ljava/lang/String; = "ARGS_MIN_IMAGE_HEIGHT"

.field public static final ARGS_MIN_IMAGE_SIZE_BYTES:Ljava/lang/String; = "ARGS_MIN_IMAGE_SIZE_BYTES"

.field public static final ARGS_MIN_IMAGE_WIDTH:Ljava/lang/String; = "ARGS_MIN_IMAGE_WIDTH"

.field public static final ARGS_PROHIBITED_FILE_EXTENSIONS_LIST:Ljava/lang/String; = "ARGS_PROHIBITED_FILE_EXTENSIONS_LIST"

.field private static final BUNDLE_KEY_CAMERA_IMAGE_URI:Ljava/lang/String; = "BUNDLE_KEY_CAMERA_IMAGE_URI"

.field private static final BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX:Ljava/lang/String; = "BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX"

.field private static final BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX:Ljava/lang/String; = "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX"

.field private static final BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH:Ljava/lang/String; = "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH"

.field private static final BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST:Ljava/lang/String; = "BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST"

.field private static final HEADLESS_FRAGMENT_TAG:Ljava/lang/String; = "IMAGE_SELECTOR_FRAGMENT_HEADLESS_FRAGMENT_TAG_SELECT_IMAGES"

.field private static final VIEW_FLIPPER_ALBUMS_VIEW_INDEX:I = 0x0

.field private static final VIEW_FLIPPER_ALBUM_IMAGES_VIEW_INDEX:I = 0x1

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private albumImagesGridView:Landroid/widget/GridView;

.field private albumsGridView:Landroid/widget/GridView;

.field private allowedFileExtensionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

.field private ccAssetBrowserDisabled:Z

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

.field private imageValidatorType:Ljava/lang/String;

.field private lastDisplayedAlbumIndex:I

.field mCurrentPhotoPath:Ljava/lang/String;

.field private maxImageHeight:I

.field private maxImageSizeBytes:J

.field private maxImageWidth:I

.field private maxNumberOfImages:I

.field private minImageHeight:I

.field private minImageSizeBytes:J

.field private minImageWidth:I

.field private progressSpinner:Landroid/view/View;

.field private prohibitedFileExtensionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCameraImageUri:Landroid/net/Uri;

.field private selectedImageModulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation
.end field

.field private showImageSelectionSources:Z

.field private titleBarActionBtnTxtView:Landroid/widget/TextView;

.field private titleBarTitleTxtView:Landroid/widget/TextView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->onAlbumGridItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->onAlbumImageGridItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    return-object v0
.end method

.method private clearAlbumsCache()V
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/behance/sdk/files/LocalImageLoader;->clearCachedAlbumAndImagesData()V

    .line 530
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->clearAlbumsCache()V

    .line 533
    :cond_0
    return-void
.end method

.method private closeThisDialog()V
    .locals 0

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->dismissAllowingStateLoss()V

    .line 767
    return-void
.end method

.method private displayAlbumsView()V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarTitleTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_title_albums_txt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 619
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    sget v1, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 625
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 626
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 627
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 628
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_cancel_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private displaySelectedAlbumImagesView(Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 631
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getImages()Ljava/util/List;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 634
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 635
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->setSelectedImageModulesList(Ljava/util/List;)V

    .line 636
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->albumImagesGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 638
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    sget v1, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    if-ne v0, v1, :cond_1

    .line 639
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarTitleTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_title_choose_photos_txt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 640
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_multiple_photos_done_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 652
    :goto_0
    if-eqz p2, :cond_2

    .line 653
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_enter:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 654
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 659
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 665
    :goto_2
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarTitleTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_title_choose_single_photo_txt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 649
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_cancel_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 661
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_empty_album_msg:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayAlbumsView()V

    goto :goto_2
.end method

.method private displayToastMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 504
    if-eqz p1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;Lcom/behance/sdk/BehanceSDKImageSelectorOptions;)Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;
    .locals 6

    .prologue
    .line 147
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;-><init>()V

    .line 148
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;)V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    if-eqz p1, :cond_2

    .line 151
    const-string/jumbo v2, "ARGS_MAX_NUMBER_OF_IMAGES"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getMaxNumberOfImages()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getMinImageDimensions()Lcom/behance/sdk/BehanceSDKImageDimensions;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_0

    .line 154
    const-string/jumbo v3, "ARGS_MIN_IMAGE_WIDTH"

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKImageDimensions;->getWidth()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string/jumbo v3, "ARGS_MIN_IMAGE_HEIGHT"

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKImageDimensions;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getMaxImageDimensions()Lcom/behance/sdk/BehanceSDKImageDimensions;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_1

    .line 160
    const-string/jumbo v3, "ARGS_MAX_IMAGE_WIDTH"

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKImageDimensions;->getWidth()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string/jumbo v3, "ARGS_MAX_IMAGE_HEIGHT"

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKImageDimensions;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    :cond_1
    const-string/jumbo v2, "ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->isShowImageImageSelectionSources()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string/jumbo v2, "ARGS_HIDE_CC_ASSET_BROWSER"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->isCCAssetBrowserDisabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    const-string/jumbo v2, "ARGS_MIN_IMAGE_SIZE_BYTES"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getMinImageSizeInBytes()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    const-string/jumbo v2, "ARGS_MAX_IMAGE_SIZE_BYTES"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getMaxImageSizeInBytes()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    const-string/jumbo v2, "ARGS_ALLOWED_FILE_EXTENSIONS_LIST"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getAllowedFileExtensions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    const-string/jumbo v2, "ARGS_PROHIBITED_FILE_EXTENSIONS_LIST"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getProhibitedFileExtensions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    const-string/jumbo v2, "ARGS_IMAGE_VALITATOR_TYPE"

    invoke-virtual {p1}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getImageValidatorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    return-object v0

    .line 174
    :cond_2
    const-string/jumbo v2, "ARGS_MAX_NUMBER_OF_IMAGES"

    sget v3, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private handleActionBtnClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 369
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 370
    if-ne v0, v1, :cond_3

    .line 371
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    sget v1, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    if-ne v0, v1, :cond_2

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnCancel()V

    .line 374
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnImageSelection(Ljava/util/List;)V

    .line 377
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto :goto_0

    .line 380
    :cond_2
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnCancel()V

    .line 381
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto :goto_0

    .line 384
    :cond_3
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnCancel()V

    .line 385
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto :goto_0
.end method

.method private handleBackBtnClick()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 360
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayAlbumsView()V

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnBackPressed()V

    .line 364
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto :goto_0
.end method

.method private hideProgressSpinner()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->progressSpinner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->progressSpinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    :cond_0
    return-void
.end method

.method private imageMatchesRequirements(Lcom/behance/sdk/project/modules/ImageModule;)Z
    .locals 12

    .prologue
    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-static {v2}, Lcom/behance/sdk/util/BehanceSDKUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 430
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->prohibitedFileExtensionsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->prohibitedFileExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->prohibitedFileExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    sget v3, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_file_type_not_allowed_msg:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->prohibitedFileExtensionsList:Ljava/util/ArrayList;

    .line 433
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 432
    invoke-virtual {p0, v3, v4}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    .line 499
    :goto_0
    return v0

    .line 439
    :cond_0
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->allowedFileExtensionsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->allowedFileExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 440
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->allowedFileExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 441
    sget v3, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_file_type_allowed_msg:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->allowedFileExtensionsList:Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 441
    invoke-virtual {p0, v3, v4}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    sget v3, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_file_type_invalid_msg:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->getWidth()I

    move-result v2

    .line 454
    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->getHeight()I

    move-result v3

    .line 455
    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->getSizeInBytes()J

    move-result-wide v4

    .line 457
    cmp-long v6, v4, v10

    if-lez v6, :cond_4

    .line 458
    iget-wide v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageSizeBytes:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    iget-wide v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageSizeBytes:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageSizeBytes:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    sget v3, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_size_less_than_min_required_msg:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_3
    iget-wide v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageSizeBytes:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    iget-wide v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageSizeBytes:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageSizeBytes:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    sget v3, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_size_more_than_max_allowed_msg:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    :cond_4
    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_size_invalid_msg:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_5
    if-lez v2, :cond_a

    if-lez v3, :cond_a

    .line 478
    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageWidth:I

    if-lez v4, :cond_7

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageHeight:I

    if-lez v4, :cond_7

    .line 479
    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageWidth:I

    if-lt v2, v4, :cond_6

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageHeight:I

    if-ge v3, v4, :cond_7

    .line 480
    :cond_6
    sget v4, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_dimensions_less_than_min_required_msg:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageHeight:I

    .line 481
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    .line 480
    invoke-virtual {p0, v4, v5}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :cond_7
    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageWidth:I

    if-lez v4, :cond_9

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageHeight:I

    if-lez v4, :cond_9

    .line 488
    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageWidth:I

    if-gt v2, v4, :cond_8

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageHeight:I

    if-le v3, v4, :cond_9

    .line 489
    :cond_8
    sget v4, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_dimensions_more_than_max_allowed_msg:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageHeight:I

    .line 490
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    .line 489
    invoke-virtual {p0, v4, v5}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 495
    goto/16 :goto_0

    .line 497
    :cond_a
    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_image_dimensions_invalid_msg:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displayToastMessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private launchCCAssetBrowser()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 575
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->launchCreativeCloudAssetBrowser()V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private launchCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 587
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->launchCameraToCapturePicture()V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private launchCameraToCapturePicture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 685
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUtils;->createTempImageFile()Ljava/io/File;

    move-result-object v0

    .line 686
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->mCurrentPhotoPath:Ljava/lang/String;

    .line 688
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 691
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v2

    .line 692
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDK;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v2

    .line 694
    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    .line 696
    const-string/jumbo v0, "output"

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 697
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Camera intent not found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_add_wip_pick_source_view_camera_launch_error:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem creating temp file to capture image"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_add_wip_pick_source_view_camera_launch_error:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private launchCreativeCloudAssetBrowser()V
    .locals 3

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->allowedFileExtensionsList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->getAdobeAssetMimeTypes(Ljava/util/List;)Ljava/util/EnumSet;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_0

    .line 672
    const-string/jumbo v2, "ARGS_ALLOWED_MIME_TYPES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 674
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 675
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MULTI_SELECT:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SHOW_MULTI_SELECT_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 676
    const-string/jumbo v2, "ARGS_ASSET_BROWSER_OPTIONS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->imageValidatorType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 679
    const-string/jumbo v0, "ARGS_IMAGE_VALIDATOR_TYPE"

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->imageValidatorType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    :cond_2
    const/16 v0, 0x1a85

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 681
    return-void
.end method

.method private loadAlbums()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setAlbumsGridAdapter()V

    .line 301
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->hideProgressSpinner()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->loadAlbumsFromDevice()V

    goto :goto_0
.end method

.method private loadAlbumsFromDevice()V
    .locals 3

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->showProgressSpinner()V

    .line 309
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->showImageSelectionSources:Z

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->loadAlbums(Landroid/content/Context;Z)V

    .line 310
    return-void
.end method

.method private notifyCallbacksOnBackPressed()V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->clearAlbumsCache()V

    .line 550
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$5;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 559
    :cond_0
    return-void
.end method

.method private notifyCallbacksOnCameraImageCaptureSuccess(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 1

    .prologue
    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnImageSelection(Ljava/util/List;)V

    .line 513
    return-void
.end method

.method private notifyCallbacksOnCancel()V
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->clearAlbumsCache()V

    .line 537
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$4;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 546
    :cond_0
    return-void
.end method

.method private notifyCallbacksOnError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->clearAlbumsCache()V

    .line 563
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$6;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 572
    :cond_0
    return-void
.end method

.method private notifyCallbacksOnImageSelection(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->clearAlbumsCache()V

    .line 517
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 526
    :cond_0
    return-void
.end method

.method private onAlbumGridItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 601
    instance-of v0, v0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    if-eqz v0, :cond_0

    .line 602
    iput p3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->lastDisplayedAlbumIndex:I

    .line 603
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    .line 604
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v1

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->DEVICE_ALBUM:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v1, v2, :cond_1

    .line 605
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 606
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displaySelectedAlbumImagesView(Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;Z)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v1

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CAMERA:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v1, v2, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->launchCamera()V

    goto :goto_0

    .line 609
    :cond_2
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CREATIVE_CLOUD:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v0, v1, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->launchCCAssetBrowser()V

    goto :goto_0
.end method

.method private onAlbumImageGridItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 391
    instance-of v1, v0, Lcom/behance/sdk/project/modules/ImageModule;

    if-eqz v1, :cond_2

    .line 392
    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 393
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->imageMatchesRequirements(Lcom/behance/sdk/project/modules/ImageModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->getFile()Ljava/io/File;

    move-result-object v1

    .line 395
    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 403
    instance-of v1, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;

    .line 405
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->setSelectedImageModulesList(Ljava/util/List;)V

    .line 406
    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumImageGridArrayAdapter;->notifyDataSetChanged()V

    .line 409
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    sget v1, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    if-lt v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnImageSelection(Ljava/util/List;)V

    .line 412
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 416
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_multiple_photos_done_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 423
    :cond_2
    :goto_1
    return-void

    .line 399
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setAlbumsGridAdapter()V
    .locals 5

    .prologue
    .line 333
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsList()Ljava/util/List;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_2

    .line 335
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->ccAssetBrowserDisabled:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    .line 337
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v3

    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CREATIVE_CLOUD:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    invoke-virtual {v3, v4}, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 343
    :cond_1
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKAlbumGridArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 344
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->albumsGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    :cond_2
    return-void
.end method

.method private showProgressSpinner()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->progressSpinner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 782
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 712
    sparse-switch p1, :sswitch_data_0

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 714
    :sswitch_0
    if-ne p2, v0, :cond_1

    .line 715
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Camera Activity returned with ok result. [Photo Uri - %s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    new-instance v1, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-direct {v1, v0}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 720
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnCameraImageCaptureSuccess(Lcom/behance/sdk/project/modules/ImageModule;)V

    .line 722
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->addImageToGallery(Landroid/content/Context;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->clearAlbumsCache()V

    .line 724
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->loadAlbums()V

    .line 725
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto :goto_0

    .line 728
    :cond_1
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Camera Activity returned with not ok result. [Result - %s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 732
    :sswitch_1
    if-ne p2, v0, :cond_5

    .line 733
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 734
    const-string/jumbo v1, "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 735
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 736
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 738
    new-instance v3, Lcom/behance/sdk/project/modules/CreativeCloudAssetModule;

    invoke-direct {v3, v0}, Lcom/behance/sdk/project/modules/CreativeCloudAssetModule;-><init>(Ljava/io/File;)V

    .line 739
    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->imageMatchesRequirements(Lcom/behance/sdk/project/modules/ImageModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 742
    :cond_3
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnImageSelection(Ljava/util/List;)V

    .line 744
    :cond_4
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto/16 :goto_0

    .line 746
    :cond_5
    if-nez p2, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnCancel()V

    .line 748
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    goto/16 :goto_0

    .line 712
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1a85 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewTitlebarActionBtnTxtView:I

    if-ne v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->handleActionBtnClick()V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewBackBtnImageView:I

    if-ne v0, v1, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->handleBackBtnClick()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkImageSelectorViewTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setStyle(II)V

    .line 184
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 189
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 190
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_image_selector:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 192
    iput v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->lastDisplayedAlbumIndex:I

    .line 194
    if-eqz p3, :cond_8

    .line 195
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 196
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->lastDisplayedAlbumIndex:I

    .line 197
    const-string/jumbo v0, "BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 198
    instance-of v4, v0, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 199
    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    .line 201
    :cond_0
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->mCurrentPhotoPath:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "BUNDLE_KEY_CAMERA_IMAGE_URI"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    sget v4, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    iput v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    .line 211
    iput v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageHeight:I

    .line 212
    iput v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageWidth:I

    .line 213
    iput v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageHeight:I

    .line 214
    iput v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageWidth:I

    .line 215
    iput-wide v8, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageSizeBytes:J

    .line 216
    iput-wide v8, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageSizeBytes:J

    .line 217
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->imageValidatorType:Ljava/lang/String;

    .line 218
    if-eqz v0, :cond_2

    .line 219
    const-string/jumbo v4, "ARGS_MAX_NUMBER_OF_IMAGES"

    sget v5, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    .line 220
    const-string/jumbo v4, "ARGS_MIN_IMAGE_WIDTH"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageWidth:I

    .line 221
    const-string/jumbo v4, "ARGS_MIN_IMAGE_HEIGHT"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageHeight:I

    .line 222
    const-string/jumbo v4, "ARGS_MAX_IMAGE_WIDTH"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageWidth:I

    .line 223
    const-string/jumbo v4, "ARGS_MAX_IMAGE_HEIGHT"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageHeight:I

    .line 224
    const-string/jumbo v4, "ARGS_ALBUMS_WITH_IMAGE_SELECTION_SOURCES"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->showImageSelectionSources:Z

    .line 225
    const-string/jumbo v4, "ARGS_MIN_IMAGE_SIZE_BYTES"

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->minImageSizeBytes:J

    .line 226
    const-string/jumbo v4, "ARGS_MAX_IMAGE_SIZE_BYTES"

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxImageSizeBytes:J

    .line 227
    const-string/jumbo v4, "ARGS_ALLOWED_FILE_EXTENSIONS_LIST"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->allowedFileExtensionsList:Ljava/util/ArrayList;

    .line 228
    const-string/jumbo v4, "ARGS_PROHIBITED_FILE_EXTENSIONS_LIST"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->prohibitedFileExtensionsList:Ljava/util/ArrayList;

    .line 229
    const-string/jumbo v4, "ARGS_IMAGE_VALITATOR_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->imageValidatorType:Ljava/lang/String;

    .line 230
    const-string/jumbo v4, "ARGS_HIDE_CC_ASSET_BROWSER"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->ccAssetBrowserDisabled:Z

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v4, "IMAGE_SELECTOR_FRAGMENT_HEADLESS_FRAGMENT_TAG_SELECT_IMAGES"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    .line 236
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    if-nez v0, :cond_3

    .line 237
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    .line 238
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    const-string/jumbo v5, "IMAGE_SELECTOR_FRAGMENT_HEADLESS_FRAGMENT_TAG_SELECT_IMAGES"

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;)V

    .line 242
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewFlipper:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 243
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewProgressSpinner:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->progressSpinner:Landroid/view/View;

    .line 245
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewBackBtnImageView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewTitlebarActionBtnTxtView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewTitlebarTitleTxtView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarTitleTxtView:Landroid/widget/TextView;

    .line 253
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewAlbumsGridView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->albumsGridView:Landroid/widget/GridView;

    .line 254
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->albumsGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 262
    sget v0, Lcom/behance/sdk/R$id;->bsdkImageSelectorViewAlbumImagesGridView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->albumImagesGridView:Landroid/widget/GridView;

    .line 263
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->albumImagesGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->maxNumberOfImages:I

    sget v4, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->UNLIMITED_NUM_OF_IMAGES:I

    if-ne v0, v4, :cond_4

    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v4, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_multiple_photos_cancel_label:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 277
    :goto_1
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->lastDisplayedAlbumIndex:I

    if-ltz v0, :cond_6

    if-ne v1, v7, :cond_6

    .line 278
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->lastDisplayedAlbumIndex:I

    invoke-static {v0, v1}, Lcom/behance/sdk/files/LocalImageLoader;->getFromAlbumWithImageSelectionSources(Landroid/content/Context;I)Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getAlbumType()Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    move-result-object v1

    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->DEVICE_ALBUM:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    if-ne v1, v4, :cond_5

    .line 280
    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->displaySelectedAlbumImagesView(Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;Z)V

    .line 288
    :goto_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 290
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->isAlbumsLoadingInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->showProgressSpinner()V

    .line 295
    :goto_3
    return-object v3

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->titleBarActionBtnTxtView:Landroid/widget/TextView;

    sget v4, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_titlebar_action_btn_cancel_label:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_2

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_2

    .line 293
    :cond_7
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->loadAlbums()V

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 315
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;)V

    .line 318
    :cond_0
    return-void
.end method

.method public onGetAlbumsFailure(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->hideProgressSpinner()V

    .line 802
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem loading albums"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_image_selector_view_error_loading_albums_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->notifyCallbacksOnError(Ljava/lang/Exception;)V

    .line 805
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->closeThisDialog()V

    .line 807
    :cond_0
    return-void
.end method

.method public onGetAlbumsSuccess()V
    .locals 1

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setAlbumsGridAdapter()V

    .line 794
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->hideProgressSpinner()V

    .line 796
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->handleBackBtnClick()V

    .line 773
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 811
    packed-switch p1, :pswitch_data_0

    .line 844
    :goto_0
    :pswitch_0
    return-void

    .line 813
    :pswitch_1
    array-length v0, p3

    if-ne v0, v4, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    aget v0, p3, v3

    if-eqz v0, :cond_1

    :cond_0
    array-length v0, p3

    if-ne v0, v3, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 814
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->launchCameraToCapturePicture()V

    goto :goto_0

    .line 816
    :cond_2
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_camera:I

    .line 818
    array-length v1, p3

    if-ne v1, v4, :cond_6

    .line 819
    aget v0, p3, v2

    if-eqz v0, :cond_4

    aget v0, p3, v3

    if-eqz v0, :cond_4

    .line 820
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error:I

    .line 829
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 821
    :cond_4
    aget v0, p3, v2

    if-eqz v0, :cond_5

    .line 822
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_camera:I

    goto :goto_1

    .line 824
    :cond_5
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    goto :goto_1

    .line 826
    :cond_6
    array-length v1, p3

    if-ne v1, v3, :cond_3

    .line 827
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    goto :goto_1

    .line 834
    :pswitch_2
    array-length v0, p3

    if-ne v0, v3, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 835
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->launchCreativeCloudAssetBrowser()V

    goto :goto_0

    .line 837
    :cond_7
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    .line 839
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 323
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_ALBUM_INDEX"

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->lastDisplayedAlbumIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string/jumbo v0, "BUNDLE_KEY_SELECTED_IMAGE_MODULES_LIST"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedImageModulesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 326
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v0, "BUNDLE_KEY_CAMERA_IMAGE_URI"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->selectedCameraImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->mCurrentPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 329
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->callbacks:Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;

    .line 763
    return-void
.end method
