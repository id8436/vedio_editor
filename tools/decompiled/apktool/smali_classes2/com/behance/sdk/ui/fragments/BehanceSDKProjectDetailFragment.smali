.class public Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKProjectDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;
.implements Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;
.implements Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;


# static fields
.field public static final ARG_PROJECT_ID:Ljava/lang/String; = "ARG_PROJECT_ID"

.field private static final FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG:Ljava/lang/String; = "FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG"

.field private static final FRAGMENT_TAG_PROJECT_INFO_DIALOG:Ljava/lang/String; = "FRAGMENT_TAG_PROJECT_INFO_DIALOG"

.field private static final FRAGMENT_TAG_PROJECT_SHARE_DIALOG:Ljava/lang/String; = "PROJECT_DETAILS_FRAGMENT_FRAGMENT_TAG_PROJECT_SHARE_DIALOG"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field bgImageHeight:I

.field private commentCrossfader:Landroid/graphics/drawable/TransitionDrawable;

.field private commentsContainerOpen:Z

.field private fabToBarAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

.field private followButton:Landroid/widget/Button;

.field private fragNum:I

.field private getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

.field private headerContainer:Landroid/view/View;

.field private headerMaxScroll:I

.field private headerOffset:I

.field private headerStatsFeaturedContainer:Landroid/view/View;

.field private isLoggedInUserOnlyProjectOwner:Z

.field private loginToProceedDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

.field private mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

.field private matureContentBackgroundLayer:Landroid/view/View;

.field private matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

.field private mloader:Lcom/i/a/b/g;

.field private newCommentButton:Landroid/support/design/widget/FloatingActionButton;

.field private postCommentBtn:Landroid/widget/ImageView;

.field private postCommentContainer:Landroid/view/View;

.field private postCommentEditText:Landroid/widget/EditText;

.field private projectBG:Landroid/view/TextureView;

.field private projectBGImageScrollContainer:Landroid/widget/ScrollView;

.field private projectDetailsProgressSpinner:Landroid/view/View;

.field private projectId:Ljava/lang/String;

.field private projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

.field private restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

.field private rootView:Landroid/view/View;

.field private toolBarContainer:Landroid/view/View;

.field private toolBarMaxScroll:I

.field private toolBarOffset:I

.field private toolBarScrollDist:I

.field private toolBarView:Landroid/view/View;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private unFollowUserDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const-class v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 188
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 157
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentsContainerOpen:Z

    .line 171
    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fragNum:I

    .line 173
    iput v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerOffset:I

    .line 174
    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerMaxScroll:I

    .line 175
    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarMaxScroll:I

    .line 176
    iput v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarOffset:I

    .line 178
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->isLoggedInUserOnlyProjectOwner:Z

    .line 498
    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setupBG()V

    return-void
.end method

.method static synthetic access$1000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadSingleImageBG()V

    return-void
.end method

.method static synthetic access$1400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->checkAndSetHeaderMaxScroll()V

    return-void
.end method

.method static synthetic access$1600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->launchUserProfile(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleUnFollowUserDialogOkClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarScrollDist:I

    return v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Z)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->animateToolbar(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarOffset:I

    return v0
.end method

.method static synthetic access$402(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;I)I
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarOffset:I

    return p1
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBG:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBGImageScrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->concealCommentsView()V

    return-void
.end method

.method private animateToolbar(Z)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40400000    # 3.0f

    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 574
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 575
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 576
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarOffset:I

    .line 584
    :goto_0
    return-void

    .line 578
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarScrollDist:I

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarOffset:I

    .line 579
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 580
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 581
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private checkAndSetHeaderMaxScroll()V
    .locals 4

    .prologue
    .line 941
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarMaxScroll:I

    if-gez v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_status_bar_spacer:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarMaxScroll:I

    .line 944
    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_toolbar_container_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarScrollDist:I

    .line 947
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerMaxScroll:I

    if-gez v0, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_toolbar_container_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_status_bar_spacer:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerMaxScroll:I

    .line 952
    :cond_1
    return-void
.end method

.method private checkForMatureContent(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)Z
    .locals 2

    .prologue
    .line 691
    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isMatureContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    const-string/jumbo v0, "allowed"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getMatureAccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayMatureContentDialog()V

    .line 695
    const/4 v0, 0x1

    .line 701
    :goto_0
    return v0

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->closeProjectActivity()V

    .line 701
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeProjectActivity()V
    .locals 1

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1378
    :cond_0
    return-void
.end method

.method private concealCommentsView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 392
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 394
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fabToBarAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fabToBarAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->barToFab()V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentsContainerOpen:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 399
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 401
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 402
    iput-boolean v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentsContainerOpen:Z

    goto :goto_0
.end method

.method private createUnFollowUserAlertDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1310
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unFollowUserDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 1311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$style;->BsdkDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1312
    sget v1, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_user_dialog_ok_btn_label:I

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$9;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$9;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1319
    invoke-virtual {v0, v3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unFollowUserDialog:Landroid/app/AlertDialog;

    .line 1322
    :cond_0
    return-void
.end method

.method private decrementAndDisplayCommentsCount()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getCommentsCount()I

    move-result v0

    .line 467
    add-int/lit8 v0, v0, -0x1

    .line 468
    if-gez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :cond_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->setCommentsCount(I)V

    .line 472
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayCommentCount()V

    .line 473
    return-void
.end method

.method private dismissLoginToProceedAlertDialog()V
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loginToProceedDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loginToProceedDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loginToProceedDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->dismiss()V

    .line 1504
    :cond_0
    return-void
.end method

.method private dismissMatureContentDialog()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->dismiss()V

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->dismiss()V

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentBackgroundLayer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    return-void
.end method

.method private displayCommentCount()V
    .locals 6

    .prologue
    .line 489
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getCommentsCount()I

    move-result v1

    .line 491
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v0, "###,###,###,###"

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v3, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderStatsComments:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 495
    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    return-void
.end method

.method private displayFollowUserBtn()V
    .locals 3

    .prologue
    .line 1301
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lcom/behance/sdk/R$string;->bsdk_follow:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1302
    return-void

    .line 1301
    :cond_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_follow_all:I

    goto :goto_0
.end method

.method private displayLoginToProceedAlertDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->getLoginToProceedDialogInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loginToProceedDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    .line 1497
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loginToProceedDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->show()V

    .line 1498
    return-void
.end method

.method private displayMatureContentDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 705
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getMatureAccess()Ljava/lang/String;

    move-result-object v0

    .line 706
    const-string/jumbo v1, "logged-out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_dialog_title:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_mature_content_dialog_user_not_logged_in_message_text:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_mature_content_dialog_log_in_button_text:I

    sget v4, Lcom/behance/sdk/R$string;->bsdk_mature_content_alert_go_back_button_text:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 710
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setCancelable(Z)V

    .line 711
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    .line 729
    :goto_0
    return-void

    .line 714
    :cond_0
    const-string/jumbo v1, "restricted-age"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_mature_content_alert_title_text:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_mature_content_res_age_alert_msg_text:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_mature_content_res_age_back_btn_lbl:I

    invoke-static {v0, v1, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->getInstance(Landroid/content/Context;III)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    .line 717
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setCancelable(Z)V

    .line 718
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->restrictedAgeDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->show()V

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_mature_content_alert_title_text:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_mature_content_alert_msg_text:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_mature_content_alert_turn_off_button_text:I

    sget v4, Lcom/behance/sdk/R$string;->bsdk_mature_content_alert_go_back_button_text:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 724
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setCancelable(Z)V

    .line 725
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    goto :goto_0
.end method

.method private displayProjectDetails(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 425
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->isLoggedInUserOnlyProjectOwner:Z

    .line 426
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v3

    .line 428
    if-eqz v3, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 431
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    invoke-virtual {v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 432
    iput-boolean v5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->isLoggedInUserOnlyProjectOwner:Z

    .line 433
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->isLoggedInUserOnlyProjectOwner:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->checkForMatureContent(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentBackgroundLayer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_2
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isAllowComments()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 448
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayProjectModules()V

    .line 449
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayCommentCount()V

    .line 450
    invoke-direct {p0, p1, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadProjectComments(Ljava/lang/String;Z)V

    .line 451
    return-void

    :cond_3
    move v0, v2

    .line 446
    goto :goto_0
.end method

.method private displayProjectModules()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 501
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->populateProjectInfoView(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 504
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->hideProjectLoadingProgressBar()V

    .line 505
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadActionBarControls()V

    .line 507
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setupBG()V

    .line 508
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 509
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->addComments(Ljava/util/List;)V

    .line 510
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isMoreCommentsAvailable()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setMoreToLoad(Z)V

    .line 511
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setHeaderHeight(I)V

    .line 513
    :cond_0
    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setCallbacks(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;)V

    .line 514
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 515
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 517
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 569
    :cond_2
    return-void
.end method

.method private displayUnFollowUserBtn()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_unfollow:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1306
    return-void
.end method

.method private followUnfollowUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 5

    .prologue
    .line 1280
    invoke-virtual {p1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_user_dialog_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1282
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->createUnFollowUserAlertDialog()V

    .line 1283
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unFollowUserDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unFollowUserDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1289
    :goto_0
    return-void

    .line 1286
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayUnFollowUserBtn()V

    .line 1287
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    goto :goto_0
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 1476
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1477
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1478
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    .line 1479
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 1480
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1484
    :goto_0
    return-object v0

    .line 1482
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 679
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 681
    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 682
    int-to-float v2, p3

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 683
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 684
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 685
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 686
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 687
    return-object v0
.end method

.method private handleAppreciateButtonClick()V
    .locals 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProject(Ljava/lang/String;)V

    .line 1533
    :cond_0
    return-void
.end method

.method private handleFeatureRibbonClick(Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;)V
    .locals 2

    .prologue
    .line 1106
    if-eqz p1, :cond_0

    .line 1108
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->getSiteDomain()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-string/jumbo v1, "https://www.behance.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->getSiteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->launchUrlIntent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleFollowUnFollowUserClick()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1217
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v1

    .line 1218
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 1220
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1221
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isFollowUnFollowTaskInProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1223
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followUnfollowUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_multiple_owners_more_one:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_follow_user_msg:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayLoginToProceedAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_multiple_owners_more:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1235
    :cond_4
    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1237
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1238
    const/4 v0, -0x1

    .line 1239
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v1

    .line 1240
    if-eqz v1, :cond_e

    .line 1241
    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    move v1, v0

    .line 1242
    :goto_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1243
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1244
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v2, v3

    :goto_4
    move v3, v2

    move v2, v0

    .line 1247
    goto :goto_3

    .line 1245
    :cond_5
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 1246
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    move v2, v3

    goto :goto_4

    .line 1248
    :cond_6
    if-ne v3, v2, :cond_9

    .line 1250
    if-ne v2, v7, :cond_8

    .line 1251
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 1252
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_user_dialog_title:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    :goto_5
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->createUnFollowUserAlertDialog()V

    .line 1259
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unFollowUserDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unFollowUserDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1254
    :cond_7
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_user_dialog_title:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1256
    :cond_8
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_multiple_users_dialog_title:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1262
    :cond_9
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1263
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 1264
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v3

    if-eq v3, v1, :cond_a

    .line 1265
    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v3, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    goto :goto_6

    .line 1268
    :cond_b
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayUnFollowUserBtn()V

    goto/16 :goto_0

    .line 1271
    :cond_c
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1272
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_follow_user_msg:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayLoginToProceedAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v1, v0

    goto/16 :goto_2
.end method

.method private handleMatureContentGoBackButtonClick()V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->closeProjectActivity()V

    .line 1131
    return-void
.end method

.method private handleMatureContentTurnOffButtonClick()V
    .locals 3

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->lockScreenOrientation()V

    .line 1120
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->dismissMatureContentDialog()V

    .line 1121
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->showProjectLoadingProgressBar()V

    .line 1122
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;-><init>()V

    .line 1123
    new-instance v1, Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;-><init>()V

    .line 1124
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;->setSafeBrowsingOn(Z)V

    .line 1125
    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;->setSettings(Lcom/behance/sdk/dto/search/BehanceSDKUserSettingsOnServerDTO;)V

    .line 1126
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setMatureContentAccessForUser(Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V

    .line 1127
    return-void
.end method

.method private handleMoreInfoClick()V
    .locals 4

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1058
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKProjectInfoDialogFragment;-><init>()V

    .line 1059
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1060
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1061
    const-string/jumbo v3, "FRAGMENT_TAG_PROJECT_INFO_DIALOG"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1062
    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1065
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1066
    const-string/jumbo v1, "FRAGMENT_TAG_PROJECT_INFO_DIALOG"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1068
    :cond_1
    return-void
.end method

.method private handleMultipleOwnerClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1144
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 1145
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    .line 1146
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$color;->bsdk_card_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1148
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$layout;->bsdk_adapter_project_detail_owner_list_item:I

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectOwnersListArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1151
    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;

    invoke-direct {v1, p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$8;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1158
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1159
    return-void
.end method

.method private handleOwnerViewClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->launchUserProfile(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleMultipleOwnerClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handlePostCommentClick()V
    .locals 3

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->concealCommentsView()V

    .line 1163
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentEditText:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isPostProjectCommentTaskInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_post_comment_empty_error_msg:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleProjectLoadingFailure(Ljava/lang/Exception;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 822
    if-eqz p1, :cond_2

    .line 823
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem loading project details from server"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->hideProjectLoadingProgressBar()V

    .line 830
    invoke-virtual {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 831
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 836
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 838
    :cond_1
    return-void

    .line 825
    :cond_2
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem loading project details from server"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleShareProjectClick()V
    .locals 3

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "PROJECT_DETAILS_FRAGMENT_FRAGMENT_TAG_PROJECT_SHARE_DIALOG"

    invoke-direct {p0, v0, v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->launchProjectShareContentDialog(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 1074
    :cond_0
    return-void
.end method

.method private handleUnFollowUserDialogOkClick()V
    .locals 3

    .prologue
    .line 1292
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayFollowUserBtn()V

    .line 1293
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1294
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1295
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v2, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->unFollowUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    goto :goto_0

    .line 1297
    :cond_1
    return-void
.end method

.method private hideProjectLoadingProgressBar()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectDetailsProgressSpinner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectDetailsProgressSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 796
    :cond_0
    return-void
.end method

.method private incrementAndDisplayCommentsCount()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getCommentsCount()I

    move-result v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    .line 457
    if-gez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 460
    :cond_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->setCommentsCount(I)V

    .line 461
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayCommentCount()V

    .line 462
    return-void
.end method

.method private launchProjectShareContentDialog(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1077
    if-eqz p1, :cond_1

    .line 1078
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1079
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1080
    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1081
    if-eqz v2, :cond_2

    .line 1082
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1083
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    move-object v1, v0

    .line 1085
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1086
    new-instance v2, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;

    invoke-direct {v2}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;-><init>()V

    .line 1087
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setLongUrlToShare(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setTitle(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setOwnerName(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setTags(Ljava/util/List;)V

    .line 1091
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setDescription(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setId(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setOwnerProfileURL(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v0

    const/16 v3, 0x194

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->findCoverImageInIncreasingSizeOrderAndFallback(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setCoverImageURL(Ljava/lang/String;)V

    .line 1098
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;->setShortUrlToShare(Ljava/lang/String;)V

    .line 1100
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKShareContentType;->PROJECT:Lcom/behance/sdk/enums/BehanceSDKShareContentType;

    invoke-static {v2, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->getInstance(Lcom/behance/sdk/dto/BehanceSDKShareContentDTO;Lcom/behance/sdk/enums/BehanceSDKShareContentType;)Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    move-result-object v0

    .line 1101
    invoke-virtual {v0, v1, p3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1103
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private launchUrlIntent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1047
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1049
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private launchUserProfile(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 2

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://www.behance.net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->launchUrlIntent(Ljava/lang/String;)V

    .line 1042
    :cond_0
    return-void
.end method

.method private loadActionBarControls()V
    .locals 2

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;

    .line 734
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectDetailActivity;->onSuccessfulLoadOfProjectDetails(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 737
    :cond_0
    return-void
.end method

.method private loadProjectComments(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isAllowComments()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectCommentsAsyncTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 767
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 768
    :cond_0
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;-><init>()V

    .line 769
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->loadProjectCommentsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V

    .line 773
    :cond_1
    return-void
.end method

.method private loadProjectCommentsNextPageFromServer()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isAllowComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isMoreCommentsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 777
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectCommentsAsyncTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 778
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 779
    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 780
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;-><init>()V

    .line 781
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 782
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->loadProjectCommentsNextPageFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V

    .line 784
    :cond_0
    return-void
.end method

.method private loadProjectDetails(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 415
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayProjectDetails(Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadProjectFromServer(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private loadProjectDetailsFromServer(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 744
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectDetailsAsyncTaskInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->showProjectLoadingProgressBar()V

    .line 758
    :goto_0
    return-void

    .line 747
    :cond_0
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;-><init>()V

    .line 748
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->shouldDownloadHDImage()Z

    move-result v1

    .line 749
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$bool;->bsdk_large_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 750
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->setProjectID(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->setDownloadHD(Z)V

    .line 752
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_follow_user_html_button_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->setFollowHTMLButtonText(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_following_user_html_button_text:I

    .line 754
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->setFollowingHTMLButtonText(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;->setLargeTablet(Z)V

    .line 756
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->loadProjectDetailsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;)V

    goto :goto_0
.end method

.method private loadProjectFromServer(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadProjectDetailsFromServer(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method private loadSingleImageBG()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getBgImageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V

    .line 676
    return-void
.end method

.method private lockScreenOrientation()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1435
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1437
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1441
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1442
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    .line 1443
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 1444
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 1445
    packed-switch v0, :pswitch_data_0

    .line 1465
    if-le v2, v1, :cond_4

    .line 1466
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1447
    :pswitch_0
    if-le v1, v2, :cond_1

    .line 1448
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1453
    :pswitch_1
    if-le v2, v1, :cond_2

    .line 1454
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1456
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1459
    :pswitch_2
    if-le v1, v2, :cond_3

    .line 1460
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1462
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1468
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;-><init>()V

    .line 193
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string/jumbo v2, "ARG_PROJECT_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "frag_num"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 197
    return-object v0
.end method

.method private populateProjectInfoView(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 849
    if-eqz p1, :cond_7

    .line 851
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_3

    .line 853
    const/4 v0, -0x1

    .line 854
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_a

    .line 856
    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    move v1, v0

    .line 857
    :goto_0
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 858
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 859
    :cond_0
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    .line 860
    goto :goto_1

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    sget v0, Lcom/behance/sdk/R$string;->bsdk_unfollow:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 866
    :goto_4
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v0, "###,###,###,###"

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsToolbarTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 869
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$dimen;->bsdk_adapter_project_info_featured_list_container_padding_right:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 870
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getFeatures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 871
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/behance/sdk/R$dimen;->bsdk_adapter_project_info_featured_list_item_ribbon_image_width_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 872
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/behance/sdk/R$dimen;->bsdk_adapter_project_info_featured_list_item_ribbon_image_horizontal_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 873
    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 874
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_5

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_multiple_owners_more_one:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 881
    :goto_5
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v3, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderArtistName:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderStatsViews:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getViewsCount()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderStatsAppreciations:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getAppreciationsCount()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderStatsComments:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getCommentsCount()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderAvatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 886
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mloader:Lcom/i/a/b/g;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    const/16 v3, 0xfa

    invoke-virtual {v1, v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/i/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 888
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderFeaturedRibbonsContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 889
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 890
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 891
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;

    .line 892
    sget v3, Lcom/behance/sdk/R$layout;->bsdk_adapter_project_info_featured_list_item:I

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 893
    sget v3, Lcom/behance/sdk/R$id;->bsdk_projectInfoFeaturedIconImgView:I

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 894
    iget-object v7, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mloader:Lcom/i/a/b/g;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;->getSiteRibbonBiggerImage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$6;

    invoke-direct {v9, p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$6;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v8, v9}, Lcom/i/a/b/g;->a(Ljava/lang/String;Lcom/i/a/b/f/a;)V

    .line 900
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 901
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 861
    :cond_2
    sget v0, Lcom/behance/sdk/R$string;->bsdk_follow_all:I

    goto/16 :goto_3

    .line 863
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/behance/sdk/R$string;->bsdk_unfollow:I

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    :cond_4
    sget v0, Lcom/behance/sdk/R$string;->bsdk_follow:I

    goto :goto_7

    .line 879
    :cond_5
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_8

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_multiple_owners_more:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    .line 905
    :cond_6
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$7;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 934
    :cond_7
    return-void

    :cond_8
    move-object v1, v0

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method

.method private revealCommentsView()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_comment_user_msg:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayLoginToProceedAlertDialog(Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fabToBarAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fabToBarAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->fabToBar()V

    goto :goto_0

    .line 377
    :cond_2
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentsContainerOpen:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 379
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_card_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 381
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 383
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 384
    iput-boolean v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentsContainerOpen:Z

    goto :goto_0
.end method

.method private setupBG()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBG:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 592
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBG:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getBgImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getBgImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->isBgImageRepeat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getBgImageUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setSaveEnabled(Z)V

    .line 629
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadSingleImageBG()V

    .line 630
    iput v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    goto :goto_0
.end method

.method private shouldDownloadHDImage()Z
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showProjectLoadingProgressBar()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectDetailsProgressSpinner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectDetailsProgressSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 790
    :cond_0
    return-void
.end method

.method private unlockScreenOrientation()V
    .locals 2

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1428
    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 1432
    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    return-object v0
.end method

.method public loadNextPage()V
    .locals 0

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadProjectCommentsNextPageFromServer()V

    .line 1583
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 477
    if-ne p1, v0, :cond_1

    .line 478
    if-ne p2, v0, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayFollowUserBtn()V

    .line 480
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 481
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->isCurrentUserFollowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v2, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->unFollowUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    goto :goto_0

    .line 486
    :cond_1
    return-void
.end method

.method public onAppreciateProjectAsyncTaskFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1423
    return-void
.end method

.method public onAppreciateProjectAsyncTaskSuccess(Z)V
    .locals 6

    .prologue
    .line 1416
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v0, "###,###,###,###"

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderStatsAppreciations:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getAppreciationsCount()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 982
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailFragmentCommentFAB:I

    if-ne v0, v1, :cond_1

    .line 983
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->revealCommentsView()V

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderArtistContainer:I

    if-ne v0, v1, :cond_2

    .line 986
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleOwnerViewClick(Landroid/view/View;)V

    goto :goto_0

    .line 987
    :cond_2
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsFragmentPostCommentSend:I

    if-ne v0, v1, :cond_3

    .line 988
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handlePostCommentClick()V

    goto :goto_0

    .line 990
    :cond_3
    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogNotOKBtn:I

    if-ne v0, v1, :cond_4

    .line 991
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleMatureContentGoBackButtonClick()V

    goto :goto_0

    .line 993
    :cond_4
    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogOKBtn:I

    if-ne v0, v1, :cond_5

    .line 994
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleMatureContentTurnOffButtonClick()V

    goto :goto_0

    .line 996
    :cond_5
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderFollowButton:I

    if-ne v0, v1, :cond_6

    .line 997
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleFollowUnFollowUserClick()V

    goto :goto_0

    .line 999
    :cond_6
    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsToolbarTitle:I

    if-ne v0, v1, :cond_8

    .line 1000
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-le v0, v2, :cond_7

    .line 1002
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->scrollToPosition(I)V

    .line 1003
    :cond_7
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 1007
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_9

    .line 1009
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 1010
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    .line 1011
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/behance/sdk/BehanceSDK;->launchProjectDetailsActivity(Landroid/content/Context;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1015
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    if-eqz v0, :cond_a

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1017
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->launchUserProfile(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    goto :goto_0

    .line 1018
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;

    .line 1020
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleFeatureRibbonClick(Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mloader:Lcom/i/a/b/g;

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setHasOptionsMenu(Z)V

    .line 207
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 353
    sget v0, Lcom/behance/sdk/R$menu;->bsdk_project_details_view_actions:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 355
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 213
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_project_detail:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerContainer:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsToolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 216
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_actionbar_back_button:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 217
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 218
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 219
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsToolBarContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarContainer:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_view_toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->toolBarView:Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailFragmentProgressSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectDetailsProgressSpinner:Landroid/view/View;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 231
    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_icon_float_comment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 232
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$color;->bsdk_behance_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v0, v6

    .line 234
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentCrossfader:Landroid/graphics/drawable/TransitionDrawable;

    .line 235
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->commentCrossfader:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailFragmentCommentFAB:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    .line 238
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsFragmentPostCommentContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsFragmentPostCommentET:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentEditText:Landroid/widget/EditText;

    .line 240
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsFragmentPostCommentSend:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentBtn:Landroid/widget/ImageView;

    .line 241
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 265
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 267
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->newCommentButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->postCommentContainer:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;->getInstance(Landroid/content/Context;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fabToBarAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKFabToBarAnimator;

    .line 273
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsRecycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    .line 274
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    new-instance v1, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v6, v4}, Lcom/behance/sdk/ui/components/BehanceSDKPreCachingLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 275
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setCallbackListener(Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;)V

    .line 276
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->initializeScrollListener(Landroid/support/v7/widget/LinearLayoutManager;)V

    .line 278
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBG:Landroid/view/TextureView;

    .line 279
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBG:Landroid/view/TextureView;

    new-instance v1, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 300
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsBackgroundImageScrollContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectBGImageScrollContainer:Landroid/widget/ScrollView;

    .line 302
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderArtistContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailFragmentMatureContentBackgroundLayer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->matureContentBackgroundLayer:Landroid/view/View;

    .line 307
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectId:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 309
    if-nez v0, :cond_6

    .line 312
    :goto_0
    if-eqz p3, :cond_1

    .line 313
    const-string/jumbo v0, "ARG_PROJECT_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectId:Ljava/lang/String;

    .line 314
    const-string/jumbo v0, "frag_num"

    invoke-virtual {p3, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fragNum:I

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HEADLESS_FRAGMENT_TAG_GET_PROJECT_DETAILS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fragNum:I

    if-ne v0, v5, :cond_3

    const-string/jumbo v0, ""

    .line 318
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 320
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    if-nez v0, :cond_2

    .line 321
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    .line 322
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HEADLESS_FRAGMENT_TAG_GET_PROJECT_DETAILS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fragNum:I

    if-ne v0, v5, :cond_4

    const-string/jumbo v0, ""

    .line 323
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;)V

    .line 328
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsToolbarTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderStatsFeaturedContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->headerStatsFeaturedContainer:Landroid/view/View;

    .line 332
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsHeaderFollowButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    .line 333
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->followButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectDetailsAsyncTaskInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->showProjectLoadingProgressBar()V

    .line 348
    :goto_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->rootView:Landroid/view/View;

    return-object v0

    .line 317
    :cond_3
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fragNum:I

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 322
    :cond_4
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->fragNum:I

    .line 323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadProjectDetails(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object p3, v0

    goto/16 :goto_0
.end method

.method public onDeleteCommentFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 1574
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1575
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem deleting comment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1576
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_delete_comment_failure_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1578
    :cond_0
    return-void
.end method

.method public onDeleteCommentRequested(Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)V
    .locals 3

    .prologue
    .line 1508
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    .line 1511
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1512
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1516
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->decrementAndDisplayCommentsCount()V

    .line 1518
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_1
    return-void
.end method

.method public onDeleteCommentSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1564
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->getProjectComments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProjectComments(Ljava/util/List;)V

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_delete_comment_failure_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->dismissMatureContentDialog()V

    .line 843
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->dismissLoginToProceedAlertDialog()V

    .line 844
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unlockScreenOrientation()V

    .line 845
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 846
    return-void
.end method

.method public onFollowUnFollowUserFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1356
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem following user [User id - %d]"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1358
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1361
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1362
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayFollowUserBtn()V

    .line 1363
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_follow_user_failure_msg:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1365
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayUnFollowUserBtn()V

    .line 1366
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_user_failure_msg:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1372
    :cond_2
    return-void
.end method

.method public onFollowUnFollowUserSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1326
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1327
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 1328
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1329
    const-string/jumbo v2, ""

    .line 1330
    if-eqz p1, :cond_2

    .line 1331
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1333
    invoke-virtual {v0, v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCurrentUserFollowing(Z)V

    .line 1334
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayUnFollowUserBtn()V

    goto :goto_0

    .line 1336
    :cond_1
    invoke-virtual {v0, v6}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->setCurrentUserFollowing(Z)V

    .line 1337
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayFollowUserBtn()V

    goto :goto_0

    .line 1340
    :cond_2
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->isFollowUser()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1341
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayFollowUserBtn()V

    .line 1342
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_follow_user_failure_msg:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1344
    :cond_3
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayUnFollowUserBtn()V

    .line 1345
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_follow_user_view_unfollow_user_failure_msg:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1352
    :cond_4
    return-void
.end method

.method public onGetProjectCommentsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_problem_loading_project_comments_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 969
    :cond_0
    return-void
.end method

.method public onGetProjectCommentsSuccess(Ljava/util/List;ZLcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;Z",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->addComments(Ljava/util/List;)V

    .line 959
    if-nez p2, :cond_0

    .line 960
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setMoreToLoad(Z)V

    .line 962
    :cond_0
    return-void
.end method

.method public onGetProjectDetailsFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 818
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_problem_loading_project_details_msg:I

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleProjectLoadingFailure(Ljava/lang/Exception;I)V

    .line 819
    return-void
.end method

.method public onGetProjectDetailsSuccess(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 800
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    if-eqz p1, :cond_2

    .line 802
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getPublishedDate()J

    move-result-wide v0

    .line 803
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 804
    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 805
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->hideProjectLoadingProgressBar()V

    .line 806
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->displayProjectDetails(Ljava/lang/String;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_problem_loading_project_details_msg:I

    invoke-direct {p0, v4, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleProjectLoadingFailure(Ljava/lang/Exception;I)V

    goto :goto_0

    .line 811
    :cond_2
    sget v0, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_problem_loading_project_details_msg:I

    invoke-direct {p0, v4, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleProjectLoadingFailure(Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method public onImageClicked(I)V
    .locals 4

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getImageURLsArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;->getInstance([Ljava/lang/String;I)Lcom/behance/sdk/ui/fragments/BehanceSDKImageDisplayDialogFragment;

    move-result-object v0

    .line 1551
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1552
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 1553
    const-string/jumbo v3, "FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1554
    if-eqz v1, :cond_0

    .line 1555
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1557
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1558
    const-string/jumbo v1, "FRAGMENT_TAG_IMAGE_DISPLAY_DIALOG"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 1559
    return-void
.end method

.method protected onNetworkConnectivityAvailable()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->loadProjectDetails(Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 364
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 361
    :pswitch_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 362
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1179
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 1180
    return-void
.end method

.method public onPostCommentFailure(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1211
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem posting comment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_post_comment_failure_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1214
    :cond_0
    return-void
.end method

.method public onPostCommentSuccess(ILcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1185
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_1

    .line 1188
    new-instance v1, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;-><init>()V

    .line 1189
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->getCommentContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->setContent(Ljava/lang/String;)V

    .line 1190
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->setUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 1191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->setCreatedDate(J)V

    .line 1192
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->setId(Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->newCommentPosted(Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;)V

    .line 1194
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getProjectDetailsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;

    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->projectRecycler:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->getProjectComments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProjectComments(Ljava/util/List;)V

    .line 1198
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->incrementAndDisplayCommentsCount()V

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->isUserVerified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_post_comment_failure_msg:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1203
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_failure_msg_unverifiedUser:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPostSettingsTaskFailure(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1407
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem saving User settings on server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_app_settings_dialog_save_user_settings_error_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1409
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unlockScreenOrientation()V

    .line 1410
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->closeProjectActivity()V

    .line 1412
    :cond_0
    return-void
.end method

.method public onPostSettingsTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1382
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1383
    if-nez p1, :cond_1

    .line 1384
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem saving User settings on server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_app_settings_dialog_save_user_settings_error_msg:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_successfully_stored_user_settings:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1388
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->hideProjectLoadingProgressBar()V

    .line 1389
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->unlockScreenOrientation()V

    goto :goto_0
.end method

.method public onProjectAppreciated()V
    .locals 0

    .prologue
    .line 1524
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleAppreciateButtonClick()V

    .line 1527
    return-void
.end method

.method public onProjectInfoClicked()V
    .locals 0

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleMoreInfoClick()V

    .line 1540
    return-void
.end method

.method public onProjectShareClick()V
    .locals 0

    .prologue
    .line 1544
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->handleShareProjectClick()V

    .line 1546
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->animateToolbar(Z)V

    .line 411
    return-void
.end method

.method public setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 977
    return-void
.end method
