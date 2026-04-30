.class public Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;


# static fields
.field private static final FRAGMENT_TAG_COLOR_PICKER_DIALOG:Ljava/lang/String; = "FRAGMENT_TAG_COLOR_PICKER_DIALOG"

.field private static final GOOGLE_PHOTOS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final REQUEST_CODE_CC_ASSETS:I = 0x3ea

.field private static final REQUEST_CODE_IMAGE_CAPTURE:I = 0x3e9

.field private static final REQUEST_PHOTO_FROM_GOOGLE_PHOTOS:I = 0x3eb

.field private static final SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH:Ljava/lang/String; = "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH"

.field private static final TEXT_EDITOR_ANIM_DUR:I = 0x96

.field private static final TEXT_TOOL_FADE:F = 0.9f

.field private static final TOOLBAR_CROSSFADE_DUR:I = 0x15e


# instance fields
.field private activeEditWebView:Landroid/webkit/WebView;

.field alignShowing:Z

.field private appColor:I

.field biuShowing:Z

.field private drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

.field private headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

.field private imageCaptureFilePath:Ljava/lang/String;

.field private lastSelectedAlign:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

.field private lastTextSelectionState:Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

.field private moduleToReplace:I

.field private projectEditorContentAddCamera:Landroid/widget/ImageView;

.field private projectEditorContentAddCc:Landroid/widget/ImageView;

.field private projectEditorContentAddEmbed:Landroid/widget/ImageView;

.field private projectEditorContentAddText:Landroid/widget/ImageView;

.field private projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

.field private projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

.field private projectEditorContentBottomSheetHeaderContainer:Landroid/widget/RelativeLayout;

.field private projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private projectEditorContentDrop:Landroid/widget/ImageView;

.field private projectEditorContentEmpty:Landroid/widget/LinearLayout;

.field private projectEditorContentOverlay:Landroid/view/View;

.field private projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

.field private projectEditorContentRoot:Landroid/support/design/widget/CoordinatorLayout;

.field private projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

.field private projectEditorContentTextBold:Landroid/widget/ImageView;

.field private projectEditorContentTextCaps:Landroid/widget/ImageView;

.field private projectEditorContentTextCenter:Landroid/widget/ImageView;

.field private projectEditorContentTextClear:Landroid/widget/ImageView;

.field private projectEditorContentTextColor:Landroid/widget/ImageView;

.field private projectEditorContentTextContainer:Landroid/widget/LinearLayout;

.field private projectEditorContentTextItalic:Landroid/widget/ImageView;

.field private projectEditorContentTextLeft:Landroid/widget/ImageView;

.field private projectEditorContentTextLink:Landroid/widget/ImageView;

.field private projectEditorContentTextRight:Landroid/widget/ImageView;

.field private projectEditorContentTextStyle:Landroid/widget/ImageView;

.field private projectEditorContentTextUnderline:Landroid/widget/ImageView;

.field private projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

.field private projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

.field private textEditorCallbacks:Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

.field private textEditorPendingRunnable:Ljava/lang/Runnable;

.field private textToolWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->moduleToReplace:I

    .line 668
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    .line 853
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastSelectedAlign:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/util/Map;Z)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setGalleryAdapters(Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;I)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->smoothScrollContentRecyclerToPosition(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->launchStyleDialog()V

    return-void
.end method

.method static synthetic access$1202(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastTextSelectionState:Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->launchLinkInputDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/ImageView;Z)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->showTextEditTools()V

    return-void
.end method

.method static synthetic access$2300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorCallbacks:Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Z)Z
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setAlignBiuNotShowing(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->hideTextEditTools()V

    return-void
.end method

.method static synthetic access$2600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateSelectedAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentEmpty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRoot:Landroid/support/design/widget/CoordinatorLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    return-void
.end method

.method private addEmbedModule(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 638
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getNextNewModuleId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;-><init>(ILjava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->transformEmbed(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    .line 642
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;-><init>()V

    .line 643
    invoke-virtual {v1, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->setHtml(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->setId(I)V

    .line 645
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->setNewModule(Z)V

    .line 647
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->moduleCountChanged()V

    .line 651
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateEmptyState()V

    .line 653
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$7;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$7;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    return-void
.end method

.method private addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;Z)V

    .line 544
    return-void
.end method

.method private addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;Z)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    .line 547
    new-instance v4, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getNextNewModuleId()I

    move-result v0

    invoke-direct {v4, v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;-><init>(ILjava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->uploadFile(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    .line 550
    const/4 v1, 0x0

    .line 551
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$25;->$SwitchMap$com$behance$sdk$enums$BehanceSDKProjectModuleType:[I

    invoke-virtual {p2}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 573
    :goto_0
    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v1, v3}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->setNewModule(Z)V

    .line 575
    invoke-virtual {v4}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->setId(I)V

    .line 577
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 578
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->moduleToReplace:I

    if-ne v0, v6, :cond_2

    .line 579
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 585
    :cond_0
    :goto_1
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->moduleToReplace:I

    if-ne v0, v6, :cond_3

    .line 586
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->moduleCountChanged()V

    .line 587
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateEmptyState()V

    .line 590
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$6;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$6;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    :goto_2
    return-void

    .line 553
    :pswitch_0
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;-><init>()V

    move-object v0, v1

    .line 554
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    .line 555
    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setPath(Ljava/lang/String;)V

    .line 556
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->getStoredImageDetails(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 557
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setHeight(I)V

    .line 558
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setWidth(I)V

    .line 559
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getWidth()I

    move-result v2

    const/16 v5, 0x578

    if-lt v2, v5, :cond_1

    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->setFullBleed(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 562
    :pswitch_1
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;-><init>()V

    move-object v0, v1

    .line 563
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 564
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setWidth(I)V

    move-object v0, v1

    .line 565
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setHeight(I)V

    goto/16 :goto_0

    .line 568
    :pswitch_2
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;-><init>()V

    goto/16 :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->moduleToReplace:I

    invoke-virtual {v0, v2, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->replaceModule(ILcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    goto :goto_1

    .line 597
    :cond_3
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->finishReplace()V

    goto :goto_2

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private alternateAlignShowing()V
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastSelectedAlign:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    .line 858
    return-void
.end method

.method private alternateAlignShowing(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V
    .locals 10

    .prologue
    const v9, -0x4099999a    # -0.9f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 861
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    .line 863
    new-instance v0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;

    invoke-direct {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;-><init>()V

    .line 864
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->setDuration(J)V

    .line 865
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 867
    iget-boolean v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v3, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_all:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 869
    mul-int/lit8 v3, v2, 0x3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 871
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_style:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v7, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 872
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_biu:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v7, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 873
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v7, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 874
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_caps:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v7, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 875
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_link:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v4, v5, v7, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 876
    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_clear:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v0, v4, v2, v7, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 877
    sget-object v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$25;->$SwitchMap$com$behance$sdk$enums$BehanceSDKProjectModuleAlignment:[I

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 950
    :goto_1
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 951
    return-void

    :cond_0
    move v0, v2

    .line 861
    goto/16 :goto_0

    .line 879
    :pswitch_0
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 880
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 881
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v8, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 882
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v8, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_1

    .line 885
    :pswitch_1
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 886
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 887
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v8, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 888
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v8, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_1

    .line 891
    :pswitch_2
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 892
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 893
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v8, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 894
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v8, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_1

    .line 898
    :cond_1
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_style:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v4, v5

    const v5, 0x3dccccd0    # 0.100000024f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 899
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_biu:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v4, v5

    const v5, 0x3dccccd0    # 0.100000024f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 900
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v4, v5

    const v5, 0x3dccccd0    # 0.100000024f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 901
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_caps:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v4, v5

    const v5, 0x3dccccd0    # 0.100000024f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 902
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_link:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v4, v5

    const v5, 0x3dccccd0    # 0.100000024f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 903
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_clear:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v4, v5

    const v5, 0x3dccccd0    # 0.100000024f

    const v6, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 904
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 905
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 906
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 907
    sget-object v3, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$25;->$SwitchMap$com$behance$sdk$enums$BehanceSDKProjectModuleAlignment:[I

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 928
    :goto_2
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastSelectedAlign:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 930
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$11;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_1

    .line 909
    :pswitch_3
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 910
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 911
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 912
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_2

    .line 915
    :pswitch_4
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 916
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 917
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 918
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_2

    .line 921
    :pswitch_5
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 922
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 923
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 924
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_2

    .line 877
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 907
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private alternateBiuShowing()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, -0x4099999a    # -0.9f

    const v7, 0x3f666666    # 0.9f

    const v5, 0x3dccccd0    # 0.100000024f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 954
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    .line 956
    new-instance v0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;

    invoke-direct {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;-><init>()V

    .line 957
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->setDuration(J)V

    .line 958
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 960
    iget-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v1, :cond_4

    .line 961
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    .line 963
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_all:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 965
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_style:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 966
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_bold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v6, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 967
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_italic:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v6, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 968
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_underline:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v6, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 969
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    mul-int/lit8 v3, v1, 0x9

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_biu:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v6, v9}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 970
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 971
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_caps:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 972
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_link:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 973
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_clear:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 974
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 975
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v1, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 1002
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1003
    return-void

    .line 954
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 976
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    .line 977
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v1, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_1

    .line 978
    :cond_3
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    .line 979
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v1, v6, v8}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_1

    .line 981
    :cond_4
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 982
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_bold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 983
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_italic:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 984
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_underline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 985
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_biu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 986
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 987
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_caps:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 988
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_link:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 989
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_clear:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 990
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_6

    .line 991
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    .line 997
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 998
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 999
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    goto/16 :goto_1

    .line 992
    :cond_6
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_7

    .line 993
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_2

    .line 994
    :cond_7
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_5

    .line 995
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v7}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->addItem(Landroid/view/View;IFF)V

    goto :goto_2
.end method

.method private finishReplace()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x0

    .line 1433
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->moduleToReplace:I

    .line 1434
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$23;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$23;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1439
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1440
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1441
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1442
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 1443
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$24;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$24;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    .line 1444
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1449
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1450
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1451
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1452
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1453
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1454
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    .line 1455
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1457
    return-void
.end method

.method public static getBehanceMimeType(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 516
    .line 517
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_1

    .line 519
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_1

    .line 523
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    .line 530
    :goto_0
    return-object v0

    .line 525
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->VIDEO:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    goto :goto_0

    .line 530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBoldClick()V
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing()V

    .line 778
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->toggleBold(Landroid/webkit/WebView;)V

    .line 774
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 776
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto :goto_0
.end method

.method private handleItalicClick()V
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing()V

    .line 789
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->toggleItalic(Landroid/webkit/WebView;)V

    .line 785
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 787
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto :goto_0
.end method

.method private handleUnderlineClick()V
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing()V

    .line 800
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->toggleUnderline(Landroid/webkit/WebView;)V

    .line 796
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 798
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto :goto_0
.end method

.method private hideTextEditTools()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x15e

    .line 1225
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1227
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1228
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1229
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1230
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1231
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$18;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$18;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    .line 1232
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1253
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1255
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRoot:Landroid/support/design/widget/CoordinatorLayout;

    .line 169
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    .line 170
    sget v0, Lcom/behance/sdk/R$id;->project_editor_gallery_album_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 171
    sget v0, Lcom/behance/sdk/R$id;->project_editor_gallery_item_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 172
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentEmpty:Landroid/widget/LinearLayout;

    .line 173
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_drop:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentDrop:Landroid/widget/ImageView;

    .line 174
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    .line 175
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_bottom_sheet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

    .line 176
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_bottom_sheet_header_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderContainer:Landroid/widget/RelativeLayout;

    .line 177
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_bottom_sheet_header_actions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

    .line 178
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_add_cc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddCc:Landroid/widget/ImageView;

    .line 179
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_add_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddCamera:Landroid/widget/ImageView;

    .line 180
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_add_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddText:Landroid/widget/ImageView;

    .line 181
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_add_embed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddEmbed:Landroid/widget/ImageView;

    .line 182
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_bottom_sheet_header_replace_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 183
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    .line 184
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_biu_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    .line 185
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_style:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    .line 186
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    .line 188
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_bold:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    .line 189
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_italic:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    .line 190
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_underline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    .line 191
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_caps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    .line 192
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    .line 193
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    .line 194
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_center:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcom/behance/sdk/R$id;->project_editor_content_text_clear:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    .line 197
    return-void
.end method

.method private isGooglePhotosDisabled(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 343
    const/4 v0, 0x0

    .line 345
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.apps.photos"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_0
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 350
    goto :goto_1
.end method

.method public static isGooglePhotosInstalled(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 536
    :try_start_0
    const-string/jumbo v3, "com.google.android.apps.photos"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 538
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 536
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    move v0, v1

    .line 538
    goto :goto_0
.end method

.method private isValidEmbed(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 634
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "<iframe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchLinkInputDialog()V
    .locals 5

    .prologue
    .line 1122
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1123
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_editor_dialog_link_title:I

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1124
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_project_editor_dialog_text_input:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1125
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1126
    sget v2, Lcom/behance/sdk/R$id;->project_editor_dialog_text_input_field:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1127
    sget v2, Lcom/behance/sdk/R$string;->bsdk_generic_alert_dialog_ok_btn_label:I

    new-instance v3, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;

    invoke-direct {v3, p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$14;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1133
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1134
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1135
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x20008

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1136
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1137
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1138
    return-void
.end method

.method private launchStyleDialog()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1024
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->setPadding(IIII)V

    .line 1025
    new-instance v4, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 1026
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_dialog_project_editor_text_styles:I

    invoke-virtual {v0, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1027
    invoke-virtual {v4, v1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 1028
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$12;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v4, v0}, Landroid/support/design/widget/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1045
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1047
    :cond_0
    invoke-virtual {v4}, Landroid/support/design/widget/BottomSheetDialog;->show()V

    .line 1049
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_styles_recycler:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 1050
    sget v0, Lcom/behance/sdk/R$id;->bsdk_project_editor_styles_detail_recycler:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 1052
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v5

    .line 1053
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_style_card_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {v5, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 1054
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1055
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1056
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setTranslationX(F)V

    .line 1057
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v6, v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$TextFontCallback;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1058
    new-instance v10, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;

    .line 1059
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastTextSelectionState:Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->getFont()Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    move-result-object v6

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastTextSelectionState:Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->getStyle()Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v7

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastTextSelectionState:Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;->getSizePX()I

    move-result v8

    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView;Landroid/support/design/widget/BottomSheetDialog;Landroid/support/design/widget/BottomSheetBehavior;)V

    move-object v4, v10

    move-object v5, v9

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;ILcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;)V

    .line 1058
    invoke-virtual {v3, v10}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1119
    return-void
.end method

.method private setAlignBiuNotShowing(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 841
    iget-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v1, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing()V

    .line 848
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v1, :cond_1

    .line 845
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setGalleryAdapters(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryFolderRecyclerAdapter$GalleryFolderCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1424
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v3, v0, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1428
    :cond_0
    if-eqz p2, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setState(I)V

    .line 1430
    :cond_1
    return-void
.end method

.method private setIconColor(Landroid/widget/ImageView;Z)V
    .locals 2

    .prologue
    .line 1329
    if-eqz p2, :cond_0

    .line 1330
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->appColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1333
    :goto_0
    return-void

    .line 1332
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private showTextEditTools()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x15e

    const/4 v2, 0x0

    .line 1190
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1191
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1193
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1196
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1197
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1198
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$17;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$17;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    .line 1199
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1220
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1221
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1222
    return-void
.end method

.method private smoothScrollContentRecyclerToPosition(I)V
    .locals 3

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    .line 1462
    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1461
    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1460
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 1463
    sub-int v0, p1, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    add-int/lit8 v1, p1, -0x5

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->scrollToPosition(I)V

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->smoothScrollToPosition(I)V

    .line 1466
    return-void
.end method

.method private updateDropLayer(ZZ)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 829
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentDrop:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentDrop:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_background_editor_add_content_drop_on:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 831
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentDrop:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_note_add_blue:I

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 833
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 834
    return-void

    .line 829
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 830
    :cond_1
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_background_editor_add_content_drop:I

    goto :goto_1

    .line 831
    :cond_2
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_note_add:I

    goto :goto_2

    :cond_3
    move v0, v2

    .line 832
    goto :goto_3

    :cond_4
    move v1, v2

    .line 833
    goto :goto_4
.end method

.method private updateEmptyState()V
    .locals 2

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentEmpty:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1338
    return-void

    .line 1337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectedAlignment(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1006
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_3

    .line 1007
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 1008
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 1009
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v3, :cond_2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setIconColor(Landroid/widget/ImageView;Z)V

    .line 1018
    :goto_3
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastSelectedAlign:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    .line 1019
    return-void

    :cond_0
    move v0, v2

    .line 1007
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1008
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1009
    goto :goto_2

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v0, v5

    :goto_4
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1012
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1013
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v0, v5

    :goto_6
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1014
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v0, :cond_8

    move v0, v3

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1015
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v1

    :cond_4
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1016
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    if-ne p1, v1, :cond_9

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_5
    move v0, v2

    .line 1011
    goto :goto_4

    :cond_6
    move v0, v4

    .line 1012
    goto :goto_5

    :cond_7
    move v0, v2

    .line 1013
    goto :goto_6

    :cond_8
    move v0, v4

    .line 1014
    goto :goto_7

    :cond_9
    move v3, v4

    .line 1016
    goto :goto_8
.end method


# virtual methods
.method public getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 501
    .line 503
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 505
    :try_start_1
    const-string/jumbo v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 507
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 509
    if-eqz v1, :cond_0

    .line 510
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_0
    return-object v0

    .line 509
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 510
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_1
    throw v0

    .line 509
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public handleAddCreativeCloudFileClick()V
    .locals 5

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_M4V:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_MP4:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_QUICKTIME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 475
    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MULTI_SELECT:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SHOW_MULTI_SELECT_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    .line 476
    const-string/jumbo v3, "ARGS_ALLOWED_MIME_TYPES"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 477
    const-string/jumbo v1, "ARGS_ASSET_BROWSER_OPTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 478
    const-string/jumbo v1, "ARGS_IMAGE_VALIDATOR_TYPE"

    const-string/jumbo v2, "PUBLISH_PROJECT_IMAGE_VALIDATOR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 480
    return-void
.end method

.method public handleAddEmbedClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 617
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 618
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 619
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->isValidEmbed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_embed_clipboard_invalid:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 630
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addEmbedModule(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_embed_clipboard_empty:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public handleAddTextClick()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setState(I)V

    .line 603
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->smoothScrollContentRecyclerToPosition(I)V

    .line 605
    new-instance v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-direct {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;-><init>()V

    .line 606
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getNextNewModuleId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->setId(I)V

    .line 607
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->setNewModule(Z)V

    .line 609
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->moduleCountChanged()V

    .line 613
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateEmptyState()V

    .line 614
    return-void
.end method

.method public handleCameraClick()V
    .locals 4

    .prologue
    .line 483
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->createImageFile(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 491
    :goto_0
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->imageCaptureFilePath:Ljava/lang/String;

    .line 493
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/BehanceSDK;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    const/16 v0, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 498
    :cond_0
    return-void

    .line 488
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 421
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 365
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->imageCaptureFilePath:Ljava/lang/String;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->imageCaptureFilePath:Ljava/lang/String;

    goto :goto_0

    .line 380
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 381
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 383
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 385
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->getModuleTypeFromPath(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    goto :goto_1

    .line 393
    :pswitch_2
    if-ne p2, v1, :cond_0

    .line 394
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 396
    :goto_2
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 397
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "content://com.google.android.apps.photos.content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 401
    new-instance v3, Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;

    invoke-direct {v3, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDecodeBitmapAsyncTaskListener;)V

    .line 402
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/InputStream;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/behance/sdk/asynctasks/BehanceSDKDecodeBitmapAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 403
    :catch_0
    move-exception v1

    .line 404
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getBehanceMimeType(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    goto :goto_3

    .line 363
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorCallbacks:Lcom/behance/sdk/listeners/IBehanceSDKEditorTextCallbacks;

    .line 359
    :cond_0
    return-void
.end method

.method public onBitmapSavedToFile(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$5;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddCc:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleAddCreativeCloudFileClick()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddCamera:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 674
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleCameraClick()V

    goto :goto_0

    .line 675
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddText:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 676
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleAddTextClick()V

    goto :goto_0

    .line 677
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddEmbed:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 678
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleAddEmbedClick()V

    goto :goto_0

    .line 679
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 680
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setAlignBiuNotShowing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$8;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$8;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    .line 688
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 690
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 691
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto :goto_0

    .line 692
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 693
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleBoldClick()V

    goto :goto_0

    .line 694
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 695
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleItalicClick()V

    goto :goto_0

    .line 696
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 697
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->handleUnderlineClick()V

    goto/16 :goto_0

    .line 698
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 699
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setAlignBiuNotShowing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$9;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    .line 718
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 720
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 721
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setAlignBiuNotShowing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->toggleUppercase(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 723
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 724
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_c

    .line 725
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto/16 :goto_0

    .line 728
    :cond_c
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_d

    .line 729
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->alignLeft(Landroid/webkit/WebView;)V

    .line 730
    :cond_d
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->LEFT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    goto/16 :goto_0

    .line 731
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 732
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_f

    .line 733
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto/16 :goto_0

    .line 736
    :cond_f
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_10

    .line 737
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->alignCenter(Landroid/webkit/WebView;)V

    .line 738
    :cond_10
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->CENTER:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    goto/16 :goto_0

    .line 739
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 740
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->biuShowing:Z

    if-eqz v0, :cond_12

    .line 741
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateBiuShowing()V

    goto/16 :goto_0

    .line 744
    :cond_12
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alignShowing:Z

    if-eqz v0, :cond_13

    .line 745
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->alignRight(Landroid/webkit/WebView;)V

    .line 746
    :cond_13
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->RIGHT:Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->alternateAlignShowing(Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;)V

    goto/16 :goto_0

    .line 747
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 748
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setAlignBiuNotShowing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$10;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$10;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    .line 759
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->getState(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 761
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 762
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->setAlignBiuNotShowing(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->clearFormatting(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 764
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->finishReplace()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
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
    const/4 v6, 0x0

    .line 202
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_project_editor_content:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->initView(Landroid/view/View;)V

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRoot:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CoordinatorLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "FRAGMENT_TAG_PROJECT_EDITOR_HEADLESS_FRAGMENT"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    .line 211
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppColor()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->appColor:I

    .line 213
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 215
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationList;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_module_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationList;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 217
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheet:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->from(Landroid/view/View;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    .line 220
    if-eqz p3, :cond_1

    .line 221
    const-string/jumbo v0, "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->imageCaptureFilePath:Ljava/lang/String;

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 226
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getImagePickerColumnCount(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$dimen;->bsdk_gallery_grid_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 230
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getFiles()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->loadFiles(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;)V

    .line 242
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setTranslationX(F)V

    .line 243
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setScrollingChild(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 253
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setBottomSheetCallback(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;)V

    .line 276
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddCc:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddCamera:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddText:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentAddEmbed:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_all:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    .line 296
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextStyle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 297
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBold:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_bold:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 298
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextItalic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_italic:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 299
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextUnderline:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_underline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 300
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextBiuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_biu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextColor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 302
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCaps:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_caps:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLink:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_link:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextClear:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_clear:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_icon_width_align:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textToolWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentTextCenter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateEmptyState()V

    .line 311
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 313
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$4;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->setOnBackgroundGestureListener(Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler$OnBackgroundGestureListener;)V

    .line 339
    return-object v1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setState(I)V

    goto/16 :goto_0

    .line 233
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    .line 239
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    .line 233
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 805
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 825
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 807
    :pswitch_1
    invoke-direct {p0, v3, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateDropLayer(ZZ)V

    goto :goto_0

    .line 810
    :pswitch_2
    invoke-direct {p0, v3, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateDropLayer(ZZ)V

    goto :goto_0

    .line 813
    :pswitch_3
    invoke-direct {p0, v3, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateDropLayer(ZZ)V

    goto :goto_0

    .line 816
    :pswitch_4
    invoke-direct {p0, v0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateDropLayer(ZZ)V

    goto :goto_0

    .line 819
    :pswitch_5
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentActivity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 820
    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/behance/sdk/util/BehanceSDKFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->IMAGE:Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    invoke-direct {p0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onEditTextCreated(ILandroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$20;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;ILandroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1287
    return-void
.end method

.method public onEditTextInActive()V
    .locals 2

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$16;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$16;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1187
    return-void
.end method

.method public onEditTextWebViewActive(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->activeEditWebView:Landroid/webkit/WebView;

    .line 1156
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$15;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1167
    return-void
.end method

.method public onFilesLoaded(Ljava/util/Map;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1406
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$22;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Ljava/util/Map;)V

    .line 1416
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v2, p2

    .line 1406
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1419
    :cond_0
    return-void
.end method

.method public onFolderClicked(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1355
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKGalleryItemsRecyclerAdapter$GalleryCallbacks;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1357
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1358
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1360
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setScrollingChild(Landroid/view/View;)V

    .line 1361
    return-void
.end method

.method public onGooglePhotosClicked()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1378
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1379
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const-string/jumbo v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1381
    const-string/jumbo v1, "*/*"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move v1, v0

    .line 1383
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1384
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1385
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1386
    const-string/jumbo v0, "com.google.android.apps.photos"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    new-instance v5, Landroid/content/ComponentName;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1388
    const/16 v0, 0x3eb

    invoke-virtual {p0, v2, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1393
    :cond_0
    return-void

    .line 1383
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onItemClicked(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 1342
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->getModuleTypeFromPath(Ljava/lang/String;)Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->addFileModule(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;)V

    .line 1343
    return-void
.end method

.method public onModuleRemoved(I)V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->moduleCountChanged()V

    .line 1148
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->updateEmptyState()V

    .line 1149
    return-void
.end method

.method public onModuleReplaceRequested(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1291
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1292
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1294
    iput p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->moduleToReplace:I

    .line 1295
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderActions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1296
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1297
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 1298
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$21;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$21;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    .line 1299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1305
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setAlpha(F)V

    .line 1306
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentBottomSheetHeaderReplaceImage:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1308
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1309
    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    .line 1310
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1311
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1312
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setState(I)V

    .line 1314
    :cond_0
    return-void
.end method

.method public onReturnToFoldersClicked()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1347
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryItemRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1348
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1350
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->drawerBehavior:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorGalleryAlbumRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setScrollingChild(Landroid/view/View;)V

    .line 1351
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 663
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 664
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->imageCaptureFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 665
    const-string/jumbo v0, "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH"

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->imageCaptureFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    return-void
.end method

.method public onSelectionStateChanged(Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;)V
    .locals 2

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->lastTextSelectionState:Lcom/behance/sdk/dto/BehanceSDKTextSelectionState;

    .line 1260
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1261
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->textEditorPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1276
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$19;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshRecycler()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->headlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setModules(Ljava/util/List;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public scrollForModuleSelection(I)V
    .locals 5

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->projectEditorContentRecycler:Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, p1, v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 1320
    :cond_0
    return-void
.end method

.method public showGooglePhotos()Z
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->isGooglePhotosInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->isGooglePhotosDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    :cond_0
    const/4 v0, 0x0

    .line 1400
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
