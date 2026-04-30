.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BehanceSDKProjectDetailFragment.java"


# instance fields
.field scroll:I

.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 1

    .prologue
    .line 523
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->scroll:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 526
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 527
    if-nez p2, :cond_0

    .line 528
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Z)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 532
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Z)V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Z)V

    goto :goto_0
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 544
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 546
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$402(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;I)I

    .line 547
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 548
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$402(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;I)I

    .line 551
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 552
    sub-float v1, v4, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 553
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 556
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 558
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->scroll:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->scroll:I

    .line 559
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    if-lez v0, :cond_4

    .line 560
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/TextureView;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->scroll:I

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget v2, v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget v2, v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 564
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    .line 566
    return-void

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)I

    move-result v0

    if-gez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0, v5}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$402(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;I)I

    goto :goto_0

    .line 555
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v1

    sub-float v0, v4, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    iget v0, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$3;->scroll:I

    neg-int v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_2
.end method
