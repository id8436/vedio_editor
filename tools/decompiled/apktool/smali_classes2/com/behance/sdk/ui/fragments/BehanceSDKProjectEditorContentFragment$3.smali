.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;
.super Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;
.source "BehanceSDKProjectEditorContentFragment.java"


# instance fields
.field private bottomPadding:I

.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-direct {p0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 264
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v6

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v4}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->getPeekHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v1, v5, v2}, Lcom/behance/sdk/ui/components/BehanceSDKBackgroundGestureRecycler;->setPadding(IIII)V

    .line 265
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v6

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v4}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->getPeekHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    cmpl-float v0, p2, v7

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->getPeekHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v1, v6, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->bottomPadding:I

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->bottomPadding:I

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->bottomPadding:I

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 273
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->getPeekHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v2, p2, v6

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->bottomPadding:I

    goto :goto_0
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 257
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectEditorContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKProjectEditorActivity;->setToolbarShadow(Z)V

    .line 260
    :cond_0
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
