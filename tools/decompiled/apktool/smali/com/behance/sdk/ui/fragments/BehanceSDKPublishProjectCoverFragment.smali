.class public Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;
.super Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;
.source "BehanceSDKPublishProjectCoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;
.implements Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ADD_PROJECT_COVER_IMAGE_KEY:Ljava/lang/String; = "ADD_PROJECT_COVER_IMAGE_KEY"

.field private static final ADD_PROJECT_COVER_IMAGE_SELECTION_STATE:Ljava/lang/String; = "ADD_PROJECT_COVER_IMAGE_SELECTION_STATE"

.field private static final FIRST_IMAGE:I


# instance fields
.field private addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

.field private cover:Lcom/behance/sdk/project/modules/CoverImage;

.field private coverImage:Lcom/behance/sdk/project/modules/ImageModule;

.field private coverImageBackground:Landroid/view/View;

.field private coverImageSelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation
.end field

.field private cropImageView:Lcom/behance/sdk/edmodo/cropper/CropImageView;

.field private croppedImage:Landroid/widget/ImageView;

.field private filmStripLayout:Landroid/widget/LinearLayout;

.field private listener:Landroid/view/View$OnClickListener;

.field private position:I

.field private progressBar:Landroid/view/View;

.field private state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;-><init>()V

    .line 75
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    return-void
.end method

.method static synthetic access$002(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Lcom/behance/sdk/project/modules/CoverImage;)Lcom/behance/sdk/project/modules/CoverImage;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;)Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->showCoverImage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    return v0
.end method

.method static synthetic access$302(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    return p1
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->hideSelector(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->showSelector(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Lcom/behance/sdk/edmodo/cropper/CropImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cropImageView:Lcom/behance/sdk/edmodo/cropper/CropImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->croppedImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private addImagesToLayout(Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 231
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addImagetoLayout(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method private addImagetoLayout(I)V
    .locals 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 237
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 239
    sget v3, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_cover_image_filmstrip_list_item:I

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 240
    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectCoverImageFilmStripImage:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 241
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/project/modules/ImageModule;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iput p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    .line 243
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->showSelector(Landroid/view/View;)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getClickListenerForImages()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-virtual {v2, p1}, Landroid/view/View;->setId(I)V

    .line 250
    :cond_1
    return-void
.end method

.method private getClickListenerForImages()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->listener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->listener:Landroid/view/View$OnClickListener;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private hideSelector(I)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->hideSelector(Landroid/view/View;)V

    .line 269
    :cond_0
    return-void
.end method

.method private hideSelector(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 258
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectCoverImageFilmStripImageSelector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    return-void
.end method

.method private showCoverImage(I)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 306
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->updateSelectedCoverImage()V

    .line 307
    return-void
.end method

.method private showSelector(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectCoverImageFilmStripImageSelector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private updateSelectedCoverImage()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->DONE:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->croppedImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    invoke-virtual {v1}, Lcom/behance/sdk/project/modules/CoverImage;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->croppedImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cropImageView:Lcom/behance/sdk/edmodo/cropper/CropImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageBackground:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$color;->bsdk_add_project_cover_image_fragment_done_state_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 350
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cropImageView:Lcom/behance/sdk/edmodo/cropper/CropImageView;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/project/modules/ImageModule;->displayImage(Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->disableActionBarRightNav()V

    goto :goto_0
.end method


# virtual methods
.method protected backButtonPressed()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/behance/sdk/project/modules/CoverImage;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/project/modules/CoverImage;-><init>(Lcom/behance/sdk/project/modules/ImageModule;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setSelectedCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V

    .line 112
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->backButtonPressed()V

    .line 113
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_publish_project_select_cover:I

    return v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_content_project_cover_selection_title:I

    return v0
.end method

.method public launchAlbumsViewToPickPictures()V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 203
    invoke-static {}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->getUnlimitedImageSelectionOptions()Lcom/behance/sdk/BehanceSDKImageSelectorOptions;

    move-result-object v1

    .line 204
    const-string/jumbo v2, "INTENT_SERIALIZABLE_EXTRA_CC_ASSET_BROWSER_DISABLED"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/BehanceSDKImageSelectorOptions;->setCCAssetBrowserDisabled(Z)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 208
    const-string/jumbo v2, "FRAGMENT_TAG_ADD_PROJECT_COVER_NEW_IMAGE_SELECTION_FRAGMENT"

    invoke-static {p0, v1, v0, v2}, Lcom/behance/sdk/util/BehanceSDKLaunchUtil;->launchAlbumsViewToPickPicture(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;Lcom/behance/sdk/BehanceSDKImageSelectorOptions;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 211
    :cond_1
    return-void
.end method

.method protected nextButtonPressed()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->DONE:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setSelectedCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V

    .line 119
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->nextButtonPressed()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    if-ne v0, v1, :cond_0

    .line 121
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->DONE:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->actionBarForwardButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_addproject_custom_actionbar_forward_nav_default_txt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cropImageView:Lcom/behance/sdk/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/behance/sdk/project/modules/CoverImage;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-direct {v1, v2, v0}, Lcom/behance/sdk/project/modules/CoverImage;-><init>(Lcom/behance/sdk/project/modules/ImageModule;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 128
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->updateSelectedCoverImage()V
    :try_end_0
    .catch Lcom/behance/sdk/exception/NullReferenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_image_cropper_crop_failed_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 139
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addProjectModuleChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;)V

    .line 140
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 216
    sget v1, Lcom/behance/sdk/R$id;->add_project_cover_selection_fragment_add_btn:I

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->launchAlbumsViewToPickPictures()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;

    .line 223
    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestPermission(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->hideSoftKeyBoardIfActive(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->add_project_cover_selection_fragment_cover_image_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageBackground:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->add_project_cover_selection_fragment_cover_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/edmodo/cropper/CropImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cropImageView:Lcom/behance/sdk/edmodo/cropper/CropImageView;

    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->add_project_cover_selection_fragment_cropped_cover_Image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->croppedImage:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectCoverPrgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->progressBar:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->add_project_cover_selection_fragment_selected_images:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    .line 157
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getImagesSelectedForCover()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    .line 158
    if-eqz p3, :cond_0

    .line 159
    const-string/jumbo v0, "ADD_PROJECT_COVER_IMAGE_KEY"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 160
    const-string/jumbo v0, "ADD_PROJECT_COVER_IMAGE_SELECTION_STATE"

    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->valueOf(Ljava/lang/String;)Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getSelectedCoverImage()Lcom/behance/sdk/project/modules/CoverImage;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    .line 163
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/CoverImage;->getOriginalImage()Lcom/behance/sdk/project/modules/ImageModule;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 165
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 167
    iput v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    .line 169
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    .line 181
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    if-ne v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->actionBarForwardButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_addproject_project_cover_selection_right_nav_crop_txt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addImagesToLayout(Landroid/widget/LinearLayout;)V

    .line 185
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->updateSelectedCoverImage()V

    .line 186
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->add_project_cover_selection_fragment_add_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    if-eqz p3, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "FRAGMENT_TAG_ADD_PROJECT_COVER_NEW_IMAGE_SELECTION_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 191
    instance-of v1, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    if-eqz v1, :cond_3

    .line 192
    check-cast v0, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment;->setCallbacks(Lcom/behance/sdk/ui/fragments/BehanceSDKImageSelectorDialogFragment$Callbacks;)V

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->rootView:Landroid/view/View;

    return-object v0

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/CoverImage;->getBitMap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 171
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->DONE:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    goto :goto_0

    .line 173
    :cond_5
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    goto :goto_0

    .line 175
    :cond_6
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    .line 176
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 178
    iput v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onDetach()V

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->removeProjectModuleChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;)V

    .line 146
    return-void
.end method

.method public onImageSelectorOnError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onImageSelectorSelectionBackPressed()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public onImageSelectorSelectionCanceled()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onImageSelectorSelectionFinished(Ljava/util/List;)V
    .locals 4
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
    const/4 v1, 0x0

    .line 354
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addImagesSelectedForCover(Ljava/util/List;)V

    .line 356
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 357
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 358
    :goto_0
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->showCoverImage(I)V

    :goto_1
    move v0, v2

    .line 366
    :goto_2
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 367
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addImagetoLayout(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    .line 357
    goto :goto_0

    .line 363
    :cond_1
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->hideSelector(I)V

    .line 364
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->showCoverImage(I)V

    goto :goto_1

    .line 370
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    if-eqz v0, :cond_0

    .line 299
    const-string/jumbo v0, "ADD_PROJECT_COVER_IMAGE_SELECTION_STATE"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    if-eqz v0, :cond_1

    .line 301
    const-string/jumbo v0, "ADD_PROJECT_COVER_IMAGE_KEY"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 302
    :cond_1
    return-void
.end method

.method public projectModulesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getImagesSelectedForCover()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    .line 390
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    .line 393
    iput v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->position:I

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    .line 395
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->state:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    .line 396
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->actionBarForwardButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_addproject_project_cover_selection_right_nav_crop_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->updateSelectedCoverImage()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 401
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addImagetoLayout(I)V

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    return-void
.end method

.method public rotateImage(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->filmStripLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 409
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImageSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->addImagetoLayout(I)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->coverImage:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {p1, v0}, Lcom/behance/sdk/project/modules/ImageModule;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->updateSelectedCoverImage()V

    .line 414
    :cond_1
    return-void
.end method
