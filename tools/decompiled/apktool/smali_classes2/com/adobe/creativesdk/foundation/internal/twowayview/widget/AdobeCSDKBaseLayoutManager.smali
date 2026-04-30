.class public abstract Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;
.source "AdobeCSDKBaseLayoutManager.java"


# instance fields
.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field private final mSmoothScrollbarEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 37
    return-void
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 90
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p1

    move-object v4, p0

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ScrollbarHelper;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return v6

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ScrollbarHelper;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result v6

    goto :goto_0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 79
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p1

    move-object v4, p0

    .line 78
    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ScrollbarHelper;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result v0

    goto :goto_0
.end method

.method protected ensureLayoutStateDueToChildContentChange(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/OrientationHelper;->createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 71
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getPendingScrollPosition()I

    move-result v1

    .line 59
    if-ne v1, v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getFirstVisiblePosition()I

    move-result v1

    .line 61
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->setPendingScrollPositionWithOffset(II)V

    goto :goto_0

    .line 68
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/AdobeCSDKBaseLayoutManager;->setPendingScrollPositionWithOffset(II)V

    goto :goto_0
.end method
