.class Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "BehanceSDKDrawerBehavior.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private constrain(III)I
    .locals 0

    .prologue
    .line 601
    if-ge p1, p2, :cond_0

    :goto_0
    return p2

    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$600(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$700(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->constrain(III)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$700(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$600(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 555
    if-ne p1, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    .line 558
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-virtual {v0, p3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->dispatchOnSlide(I)V

    .line 552
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 563
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 565
    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$500(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 566
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$600(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v1

    .line 588
    :goto_0
    iget-object v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$800(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 589
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    .line 590
    new-instance v1, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;

    iget-object v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-direct {v1, v2, p1, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;-><init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;Landroid/view/View;I)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 595
    :goto_1
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$500(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 570
    goto :goto_0

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-virtual {v2, p1, p3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$700(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v1

    .line 574
    const/4 v0, 0x5

    goto :goto_0

    .line 575
    :cond_2
    cmpl-float v2, p3, v3

    if-nez v2, :cond_4

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 577
    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$600(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v4}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$500(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 578
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$600(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v1

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$500(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 582
    goto :goto_0

    .line 585
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$500(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    .line 586
    goto :goto_0

    .line 593
    :cond_5
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$000(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v2

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$100(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$000(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$200(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 541
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$300(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 542
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$400(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;->this$0:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    invoke-static {v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->access$400(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
