.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorContentFragment.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

.field final synthetic val$behavior:Landroid/support/design/widget/BottomSheetBehavior;

.field final synthetic val$bsdkProjectEditorStylesDetailRecycler:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$bsdkProjectEditorStylesRecycler:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$dialog:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView;Landroid/support/design/widget/BottomSheetDialog;Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    iput-object p2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesRecycler:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$dialog:Landroid/support/design/widget/BottomSheetDialog;

    iput-object p5, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$behavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;Z)V
    .locals 0

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->animate(Z)V

    return-void
.end method

.method private animate(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1093
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$behavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 1094
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1095
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesRecycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v1, v1

    int-to-float v1, v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$3;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$3;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;)V

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1116
    return-void

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    goto :goto_0

    .line 1095
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onFontsClick(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V
    .locals 4

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;

    invoke-direct {v3, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$2;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;)V

    invoke-direct {v1, v2, p1, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$TextFontCallback;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1084
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->animate(Z)V

    .line 1085
    return-void
.end method

.method public onStylesClick(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V
    .locals 4

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->val$bsdkProjectEditorStylesDetailRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$1;

    invoke-direct {v3, p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;)V

    invoke-direct {v1, v2, p1, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1071
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->animate(Z)V

    .line 1072
    return-void
.end method

.method public onTextSizeChanged(I)V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$13;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$1500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/behance/sdk/util/BehanceSDKPublishTextUtils;->setTextSize(Landroid/webkit/WebView;I)V

    .line 1090
    return-void
.end method
