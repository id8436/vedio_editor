.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectEditorContentRecyclerAdapter.java"

# interfaces
.implements Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;"
    }
.end annotation


# static fields
.field private static final MODULE_TYPE_AUDIO:I = 0x6

.field private static final MODULE_TYPE_COLLECTION:I = 0x7

.field private static final MODULE_TYPE_EMBED:I = 0x2

.field private static final MODULE_TYPE_IMAGE:I = 0x0

.field private static final MODULE_TYPE_TEXT:I = 0x1

.field private static final MODULE_TYPE_UNKNOWN:I = 0x8

.field private static final MODULE_TYPE_VIDEO_EMBED:I = 0x5

.field private static final MODULE_TYPE_VIDEO_LOCAL:I = 0x3

.field private static final MODULE_TYPE_VIDEO_PROCESSING:I = 0x4


# instance fields
.field private final MODULE_MARGIN:I

.field private final PROJECT_WIDTH:I

.field private final TOOLS_HIDE_TRANSLATION:I

.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

.field private context:Landroid/content/Context;

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private shownOutlineContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private shownToolOverlay:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private webViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    .line 83
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    .line 84
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_module_tools_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->TOOLS_HIDE_TRANSLATION:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->PROJECT_WIDTH:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_module_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->MODULE_MARGIN:I

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->webViewHeights:Landroid/util/SparseIntArray;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->hideToolOverlay(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->showToolOverlay(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->PROJECT_WIDTH:I

    return v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->MODULE_MARGIN:I

    return v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->clearCurrentToolOverlay()V

    return-void
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;)Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->webViewHeights:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private clearCurrentToolOverlay()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownToolOverlay:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownToolOverlay:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownToolOverlay:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownOutlineContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownOutlineContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->hideToolOverlay(Landroid/view/View;Landroid/view/View;)V

    .line 473
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownToolOverlay:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 474
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownOutlineContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownOutlineContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 477
    :cond_0
    return-void

    .line 472
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideToolOverlay(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 502
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->TOOLS_HIDE_TRANSLATION:I

    int-to-float v1, v1

    .line 504
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 506
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$13;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Landroid/view/View;)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 513
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 514
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 516
    if-eqz p2, :cond_0

    .line 517
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    :cond_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method private setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;)V
    .locals 3

    .prologue
    .line 388
    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->isFullBleed()Z

    move-result v1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->getId()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Ljava/lang/String;ZI)V

    .line 389
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_contract:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$9;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    return-void

    .line 389
    :cond_0
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_expand:I

    goto :goto_0
.end method

.method private setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Ljava/lang/String;ZI)V

    .line 405
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    return-void
.end method

.method private setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Ljava/lang/String;ZI)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 411
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 413
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 415
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 416
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 417
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 418
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_module_reg_padding_inner:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 421
    iget-object v4, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebContainer:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_0

    move v3, v6

    :goto_0
    if-eqz p3, :cond_1

    move v0, v6

    :goto_1
    invoke-virtual {v4, v3, v2, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 422
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p3, :cond_2

    move v2, v6

    :goto_2
    iput v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 423
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p3, :cond_3

    move v2, v6

    :goto_3
    iput v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<html><head><meta name=\"viewport\" content=\"width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    invoke-static {p2}, Lcom/behance/sdk/util/BehanceSDKProjectEditorEmbedUtils;->getWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\"/></head><body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    invoke-static {p2}, Lcom/behance/sdk/util/BehanceSDKProjectEditorEmbedUtils;->setHtmlPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebToolsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 432
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebToolsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->TOOLS_HIDE_TRANSLATION:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 433
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebClickHandler:Landroid/view/View;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$10;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$10;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$11;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$11;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModulePlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$12;

    invoke-direct {v1, p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$12;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    invoke-virtual {v0, p0, p4}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->setCallbacks(Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView$HeightChangeCallbacks;I)V

    .line 461
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->webViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 462
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->webViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->setMinimumHeight(I)V

    .line 463
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->webViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->setHeight(I)V

    .line 468
    :goto_4
    return-void

    :cond_0
    move v3, v2

    .line 421
    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_module_reg_padding_outer:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_2

    .line 423
    :cond_3
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_module_reg_padding_outer:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_3

    .line 465
    :cond_4
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->setMinimumHeight(I)V

    .line 466
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;->setHeight(I)V

    goto :goto_4
.end method

.method private setupImage(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 133
    .line 134
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 136
    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 137
    :goto_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 138
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 140
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->PROJECT_WIDTH:I

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    sub-int v1, v0, v2

    .line 141
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageFullBleed:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_contract:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getHeight()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getWidth()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isNewModule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 148
    :goto_3
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 149
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->TOOLS_HIDE_TRANSLATION:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 150
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageFullBleed:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$3;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageReplace:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$4;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_module_reg_padding_outer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 140
    :cond_1
    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->MODULE_MARGIN:I

    mul-int/lit8 v2, v1, 0x2

    goto/16 :goto_1

    .line 141
    :cond_2
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_expand:I

    goto/16 :goto_2

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getDisp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    goto :goto_3
.end method

.method private setupTextModule(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    .line 224
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 225
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 233
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$5;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;)V

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->setupTextEditWebView(Landroid/webkit/WebView;Landroid/content/Context;Lcom/behance/sdk/util/BehanceSDKTextEditorJSBridge$ITextEditorJSBridge;)V

    .line 303
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextOverlay:Landroid/view/View;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$6;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_1
    return-void

    .line 230
    :cond_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setupVideoAudioEmbed(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 6

    .prologue
    .line 344
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    if-eqz v0, :cond_1

    .line 345
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    move-object v0, p2

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->getId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Ljava/lang/String;I)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;

    if-eqz v0, :cond_4

    .line 347
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;

    .line 348
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 349
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->PROJECT_WIDTH:I

    iget v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->MODULE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, p2

    .line 350
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    .line 351
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getHeight()I

    move-result v1

    if-gtz v1, :cond_3

    .line 352
    :cond_2
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v1, p2

    .line 353
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 354
    const/16 v1, 0x13

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setHeight(I)V

    .line 355
    const/16 v1, 0x12

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->setWidth(I)V

    .line 356
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 358
    :cond_3
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->PROJECT_WIDTH:I

    iget v5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->MODULE_MARGIN:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getWidth()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    check-cast p2, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {p2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 360
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoToolsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 361
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoToolsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->TOOLS_HIDE_TRANSLATION:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 362
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$7;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$8;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModulePlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 379
    :cond_4
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;

    .line 381
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_video_processing_title:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 382
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_video_processing_description:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 383
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningIcon:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_video_camera:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private showToolOverlay(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 480
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->scrollForModuleSelection(I)V

    .line 482
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->onEditTextInActive()V

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->clearCurrentToolOverlay()V

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 487
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 489
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 490
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 492
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 494
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownToolOverlay:Ljava/lang/ref/WeakReference;

    .line 495
    if-eqz p3, :cond_1

    .line 496
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->shownOutlineContainer:Ljava/lang/ref/WeakReference;

    .line 497
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 499
    :cond_1
    return-void
.end method


# virtual methods
.method public addModule(ILcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->notifyItemInserted(I)V

    .line 567
    return-void
.end method

.method public addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->addModule(ILcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 562
    return-void
.end method

.method public deleteModule(I)V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->notifyItemRemoved(I)V

    .line 556
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->onModuleRemoved(I)V

    .line 558
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    .line 539
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    if-eqz v0, :cond_2

    .line 527
    const/4 v0, 0x2

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    if-eqz v0, :cond_5

    .line 529
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    .line 530
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getHtml()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 531
    const/4 v0, 0x5

    goto :goto_0

    .line 532
    :cond_3
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 533
    const/4 v0, 0x3

    goto :goto_0

    .line 535
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 536
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    if-eqz v0, :cond_6

    .line 537
    const/4 v0, 0x6

    goto :goto_0

    .line 539
    :cond_6
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isModuleFullBleed(I)Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;

    .line 114
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v1, :cond_1

    .line 115
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupImage(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    if-eqz v1, :cond_2

    .line 117
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupTextModule(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;)V

    goto :goto_0

    .line 118
    :cond_2
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    if-eqz v1, :cond_3

    .line 119
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;)V

    goto :goto_0

    .line 120
    :cond_3
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    if-eqz v1, :cond_4

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupVideoAudioEmbed(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    goto :goto_0

    .line 122
    :cond_4
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    if-eqz v1, :cond_5

    .line 123
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    move-object v1, v0

    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;->getHtml()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAudio;->getId()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->setupEmbed(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;Ljava/lang/String;I)V

    goto :goto_0

    .line 124
    :cond_5
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;

    .line 126
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_unsupported_module_title:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 127
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_unsupported_module_description:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 128
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningIcon:Landroid/widget/ImageView;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_unsupported_module:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    packed-switch p2, :pswitch_data_0

    .line 107
    :pswitch_0
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_module_warning:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 95
    :pswitch_1
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_module_image:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 97
    :pswitch_2
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_module_text:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 101
    :pswitch_3
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_module_video_audio_embed:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :pswitch_4
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_module_video_local:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onHeightChange(II)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->webViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 578
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 594
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 595
    check-cast v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleTextViewHolder;->bsdkCardProjectEditorModuleTextWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter$AdapterCallbacks;->onEditTextInActive()V

    .line 598
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 599
    return-void
.end method

.method public replaceModule(ILcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 571
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->notifyItemChanged(I)V

    .line 573
    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->modules:Ljava/util/List;

    .line 550
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorContentRecyclerAdapter;->notifyDataSetChanged()V

    .line 551
    return-void
.end method
