.class public Lcom/behance/sdk/ui/components/BehanceSDKSnappingRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BehanceSDKSnappingRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 32
    instance-of v0, v0, Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;->getPositionForVelocity(II)I

    move-result v3

    .line 34
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 35
    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    if-gt v0, v2, :cond_5

    .line 36
    :cond_0
    if-gt v3, v2, :cond_1

    if-le v0, v1, :cond_1

    move v0, v1

    .line 46
    :goto_0
    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 50
    :goto_1
    return v2

    .line 38
    :cond_1
    if-nez v3, :cond_2

    if-le v0, v2, :cond_2

    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-le v3, v2, :cond_3

    if-nez v0, :cond_3

    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    if-le v3, v2, :cond_4

    if-ne v0, v2, :cond_4

    move v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    if-ne v3, v2, :cond_6

    if-nez v0, :cond_6

    if-gtz p2, :cond_6

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v2

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 58
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 60
    instance-of v2, v0, Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingRecyclerView;->getScrollState()I

    move-result v2

    if-nez v2, :cond_1

    .line 73
    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;

    invoke-interface {v0}, Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;->getFixScrollPos()I

    move-result v0

    .line 74
    if-ge v0, v4, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingRecyclerView;->smoothScrollToPosition(I)V

    .line 78
    :cond_1
    return v1
.end method
