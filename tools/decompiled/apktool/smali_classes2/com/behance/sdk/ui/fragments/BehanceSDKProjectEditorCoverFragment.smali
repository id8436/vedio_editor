.class public Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKProjectEditorCoverFragment.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;


# static fields
.field private static final FRAGMENT_TAG_GALLERY_PICKER:Ljava/lang/String; = "FRAGMENT_TAG_GALLERY_PICKER"

.field private static final REQUEST_CODE_CC_ASSETS:I = 0x7d2

.field private static final REQUEST_CODE_IMAGE_CAPTURE:I = 0x7d1


# instance fields
.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field private imageCaptureFilePath:Ljava/lang/String;

.field private projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

.field private projectEditorCoverLoader:Landroid/widget/RelativeLayout;

.field private projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->hideLoader()V

    return-void
.end method

.method private addFileAndSelect(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->getStoredImageDetails(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;-><init>(Ljava/lang/String;IIZ)V

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->addCoverAdditionalImages(Lcom/behance/sdk/dto/BehanceSDKImageDTO;)V

    .line 183
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->addCoverItem(Lcom/behance/sdk/dto/BehanceSDKImageDTO;)V

    .line 184
    invoke-virtual {p0, p1, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->onCoverClick(Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method private hideLoader()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverLoader:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/behance/sdk/R$id;->project_editor_cover_crop_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    .line 63
    sget v0, Lcom/behance/sdk/R$id;->project_editor_cover_loader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverLoader:Landroid/widget/RelativeLayout;

    .line 64
    sget v0, Lcom/behance/sdk/R$id;->project_editor_cover_thumbnail_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 65
    return-void
.end method

.method private setProjectEditorCoverCropViewImageUri(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->showLoader()V

    .line 113
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setImageUri(Landroid/net/Uri;Lcom/behance/sdk/listeners/BehanceSDKImageLoadListener;)V

    .line 119
    return-void
.end method

.method private showLoader()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverLoader:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public cropAndSave()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->getCurrentlySelectedPos()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->crop()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    if-nez v0, :cond_1

    .line 222
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->saveCoverBitmap(Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->imageCaptureFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->addFileAndSelect(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->imageCaptureFilePath:Ljava/lang/String;

    goto :goto_0

    .line 199
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 200
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 202
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->addFileAndSelect(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCCSelected()V
    .locals 6

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "ARGS_ALLOWED_MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "ARGS_IMAGE_VALIDATOR_TYPE"

    const-string/jumbo v2, "PUBLISH_PROJECT_IMAGE_VALIDATOR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method

.method public onCameraSelected()V
    .locals 4

    .prologue
    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->createImageFile(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->imageCaptureFilePath:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/BehanceSDK;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 160
    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const/16 v0, 0x7d1

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    :cond_0
    return-void

    .line 154
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCoverClick(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setEnabled(Z)V

    .line 132
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->setProjectEditorCoverCropViewImageUri(Landroid/net/Uri;)V

    .line 133
    return-void

    .line 132
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_project_editor_cover:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->initView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v4, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 75
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverImages()Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 78
    :goto_0
    iget-object v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/behance/sdk/R$dimen;->bsdk_cover_list_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 81
    iget-object v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverThumbnailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;Ljava/util/List;I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->hideLoader()V

    .line 95
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setEnabled(Z)V

    .line 108
    :cond_0
    :goto_1
    return-object v3

    :cond_1
    move v0, v2

    .line 77
    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->setProjectEditorCoverCropViewImageUri(Landroid/net/Uri;)V

    .line 99
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setEnabled(Z)V

    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->setProjectEditorCoverCropViewImageUri(Landroid/net/Uri;)V

    .line 105
    :goto_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->projectEditorCoverCropView:Lcom/behance/sdk/ui/components/BehanceSDKCropView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKCropView;->setEnabled(Z)V

    goto :goto_1

    .line 104
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->setProjectEditorCoverCropViewImageUri(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public onFileSelected(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->addFileAndSelect(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onNewClick()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;-><init>()V

    .line 138
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->setCallbacks(Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;)V

    .line 139
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorCoverFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FRAGMENT_TAG_GALLERY_PICKER"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 140
    return-void
.end method
