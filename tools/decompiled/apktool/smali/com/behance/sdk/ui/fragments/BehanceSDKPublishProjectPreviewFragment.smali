.class public Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;
.super Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;
.source "BehanceSDKPublishProjectPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;
.implements Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_REQUEST_CODE_CC_ASSET_BROWSER:I = 0x1a83

.field private static final ACTIVITY_RESULT_REQUEST_CODE_PICK_PICTURE_FROM_CAMERA:I = 0x1

.field private static final BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_PREVIEW_FRAGMENT:Ljava/lang/String; = "BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_FRAGMENT"

.field private static final BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT:Ljava/lang/String; = "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT"

.field private static final BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH:Ljava/lang/String; = "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH"

.field private static final VIEW_FLIPPER_EDIT_MODULES_VIEW_INDEX:I = 0x1

.field private static final VIEW_FLIPPER_PREVIEW_MODULES_VIEW_INDEX:I

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private editEmptyProjectMessage:Landroid/view/View;

.field private editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

.field private editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

.field mCurrentPhotoPath:Ljava/lang/String;

.field private previewEditViewFlipper:Landroid/widget/ViewFlipper;

.field private previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

.field private previewModulesListView:Landroid/widget/ListView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

.field private selectedCameraImageUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;-><init>()V

    .line 95
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayEditModulesView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->notifyPreviewViewGridAdapter()V

    return-void
.end method

.method private displayEditModulesView(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 289
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->showEmptyProjectMessage()V

    .line 297
    :goto_0
    if-eqz p2, :cond_2

    .line 298
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_publish_project_edit_enter_anim:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 299
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_publish_project_preview_exit_anim:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 305
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->updateNavigationControls()V

    .line 306
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editEmptyProjectMessage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setVisibility(I)V

    .line 295
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->initializeListView(Ljava/util/List;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 302
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private displayEditModulesView(Z)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectModules()Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-direct {p0, v0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayEditModulesView(Ljava/util/List;Z)V

    .line 318
    return-void
.end method

.method private displayPreviewModulesView(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 268
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectModules()Ljava/util/List;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 270
    :cond_0
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_preview_project_fragment_list_item:I

    invoke-direct {v1, v2, v3, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    .line 271
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewModulesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->setCallbacks(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter$Callbacks;)V

    .line 273
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$fraction;->bsdk_add_project_preview_fragment_screen_width_percentage:I

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 274
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewModulesListView:Landroid/widget/ListView;

    invoke-static {v1, v2, v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->setContentViewPaddings(Landroid/content/Context;Landroid/view/View;F)V

    .line 275
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewModulesListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 277
    :cond_1
    if-eqz p1, :cond_2

    .line 278
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_publish_project_preview_enter_anim:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 279
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_publish_project_edit_exit_anim:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 285
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->updateNavigationControls()V

    .line 286
    return-void

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initializeEditProjectScreen()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditProjectModulesListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditEmptyProjectMessageLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editEmptyProjectMessage:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditOptionAlbums:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditOptionCamera:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditOptionEmbed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectEditOptionCreativeCloud:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 221
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    .line 224
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;

    .line 227
    invoke-virtual {v0}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->getCCAssetBrowserDisabled()Z

    move-result v0

    .line 230
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 231
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :goto_0
    return-void

    .line 233
    :cond_2
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initializeListView(Ljava/util/List;)V
    .locals 3
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
    .line 541
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_adapter_publish_project_edit_fragment_grid_item:I

    invoke-direct {v0, v1, v2, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    .line 542
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 543
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 544
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->setCallBack(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;)V

    .line 545
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$6;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    .line 554
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 556
    return-void
.end method

.method private initializePreviewProjectScreen()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewProjectModulesListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewModulesListView:Landroid/widget/ListView;

    .line 170
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewPrgressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 171
    return-void
.end method

.method private isEmptyProject()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectModules()Ljava/util/List;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreviewScreen()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyEditViewGridAdapter(Ljava/util/List;)V
    .locals 1
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
    .line 532
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->notifyDataSetChanged()V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayEditModulesView(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private notifyPreviewViewGridAdapter()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectPreviewAdapter;->notifyDataSetChanged()V

    .line 529
    :cond_0
    return-void
.end method

.method private showEmptyProjectMessage()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->disableActionBarRightNav()V

    .line 310
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editEmptyProjectMessage:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editModulesDragSortListView:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setVisibility(I)V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    .line 313
    return-void
.end method


# virtual methods
.method protected backButtonPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 452
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 453
    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isEmptyProject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayPreviewModulesView(ZZ)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->backButtonPressed()V

    goto :goto_0
.end method

.method public closeWorkflow()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method protected enableActionBarRightNav()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isEmptyProject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->enableActionBarRightNav()V

    .line 430
    :cond_0
    return-void
.end method

.method protected getBackButtonID()I
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isPreviewScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragmentTitlebarBackBtnLayout:I

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getBackButtonID()I

    move-result v0

    goto :goto_0
.end method

.method protected getForwardButtonID()I
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isPreviewScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragmentTitlebarActionBtnTxtView:I

    .line 333
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getForwardButtonID()I

    move-result v0

    goto :goto_0
.end method

.method protected getForwardButtonText()I
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isPreviewScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getForwardButtonText()I

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_project_edit_project_fragment_right_navigation:I

    goto :goto_0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_publish_project_preview:I

    return v0
.end method

.method protected getTitle()I
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isPreviewScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_project_preview_project_fragment_title:I

    .line 361
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_project_edit_project_fragment_title:I

    goto :goto_0
.end method

.method protected getTitleViewID()I
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isPreviewScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget v0, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragmentTitlebarTitleTxtView:I

    .line 345
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->getTitleViewID()I

    move-result v0

    goto :goto_0
.end method

.method public launchCameraToCapturePicture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 491
    :try_start_0
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKUtils;->createTempImageFile()Ljava/io/File;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->mCurrentPhotoPath:Ljava/lang/String;

    .line 493
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 497
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v2

    .line 498
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDK;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v2

    .line 500
    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    .line 502
    const-string/jumbo v0, "output"

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 503
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Camera intent not found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_add_wip_pick_source_view_camera_launch_error:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    sget-object v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem creating temp file to capture image"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_add_wip_pick_source_view_camera_launch_error:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public launchCreativeCloudAssetBrowser()V
    .locals 5

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 482
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MULTI_SELECT:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SHOW_MULTI_SELECT_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 483
    const-string/jumbo v4, "ARGS_ALLOWED_MIME_TYPES"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 484
    const-string/jumbo v2, "ARGS_ASSET_BROWSER_OPTIONS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 485
    const-string/jumbo v2, "ARGS_IMAGE_VALIDATOR_TYPE"

    const-string/jumbo v3, "PUBLISH_PROJECT_IMAGE_VALIDATOR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const/16 v2, 0x1a83

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 487
    return-void
.end method

.method protected nextButtonPressed()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 443
    if-nez v0, :cond_0

    .line 444
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->nextButtonPressed()V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayPreviewModulesView(ZZ)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 389
    sparse-switch p1, :sswitch_data_0

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 391
    :sswitch_0
    if-ne p2, v0, :cond_1

    .line 392
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Camera Activity returned with ok result. [Photo Uri - %s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addImageSelectedForProject(Ljava/io/File;)V

    .line 397
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->addImageToGallery(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectModules()Ljava/util/List;

    move-result-object v0

    .line 399
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->notifyEditViewGridAdapter(Ljava/util/List;)V

    .line 400
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->enableActionBarRightNav()V

    goto :goto_0

    .line 403
    :cond_1
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Camera Activity returned with not ok result. [Result - %s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 408
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 410
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 412
    new-instance v2, Lcom/behance/sdk/project/modules/CreativeCloudAssetModule;

    invoke-direct {v2, v0}, Lcom/behance/sdk/project/modules/CreativeCloudAssetModule;-><init>(Ljava/io/File;)V

    .line 413
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addModuleToCurrentProject(Lcom/behance/sdk/project/modules/ProjectModule;)V

    goto :goto_1

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getProjectModules()Ljava/util/List;

    move-result-object v0

    .line 416
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->notifyEditViewGridAdapter(Ljava/util/List;)V

    .line 417
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->enableActionBarRightNav()V

    goto/16 :goto_0

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1a83 -> :sswitch_1
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 123
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->addProjectModuleChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v3, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewAndEditViewFlipper:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    .line 136
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->initializePreviewProjectScreen()V

    .line 137
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->initializeEditProjectScreen()V

    .line 139
    if-eqz p3, :cond_0

    .line 140
    const-string/jumbo v0, "BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_FRAGMENT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    .line 141
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    const-string/jumbo v3, "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->mCurrentPhotoPath:Ljava/lang/String;

    .line 147
    :goto_0
    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0, v2, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayPreviewModulesView(ZZ)V

    .line 149
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->enableActionBarRightNav()V

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    return-object v0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->isEmptyProject()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 144
    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->displayEditModulesView(Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onDetach()V

    .line 129
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->removeProjectModuleChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;)V

    .line 130
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->backButtonPressed()V

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRotate(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->rotateImage(Lcom/behance/sdk/project/modules/ImageModule;)V

    .line 561
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 468
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 469
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_CHILD_INDEX_EDIT_PREVIEW_FRAGMENT"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 471
    const-string/jumbo v0, "BUNDLE_KEY_CAMERA_IMAGE_URI_EDIT_FRAGMENT"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->selectedCameraImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->mCurrentPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 473
    const-string/jumbo v0, "BUNDLE_KEY_LAST_DISPLAYED_PHOTO_PATH"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_2
    return-void
.end method

.method public onViewLoadingComplete()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewModulesListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public projectModulesChanged(Ljava/util/List;)V
    .locals 1
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
    .line 517
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->disableActionBarRightNav()V

    .line 523
    :goto_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->notifyPreviewViewGridAdapter()V

    .line 524
    return-void

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->enableActionBarRightNav()V

    .line 521
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->notifyEditViewGridAdapter(Ljava/util/List;)V

    goto :goto_0
.end method

.method public remove(I)V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 566
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v1

    sget-object v2, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v1, v2}, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 567
    check-cast v1, Lcom/behance/sdk/project/modules/ImageModule;

    .line 568
    invoke-virtual {v1}, Lcom/behance/sdk/project/modules/ImageModule;->clearRotation()V

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->removeProjectModule(Lcom/behance/sdk/project/modules/ProjectModule;)V

    .line 571
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->publishProjectManager:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->isEmptyProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->showEmptyProjectMessage()V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->editImageAdapter:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public rotateImage(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->notifyPreviewViewGridAdapter()V

    .line 581
    return-void
.end method

.method protected updateNavigationControls()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectBaseFragment;->updateNavigationControls()V

    .line 368
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkPublishProjectPreviewFragmentTitlebarEditActionBtnTxtView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$5;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->previewEditViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 378
    if-nez v1, :cond_1

    .line 379
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
