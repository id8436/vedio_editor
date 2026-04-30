.class public Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "BehanceSDKSnappingLinearLayoutManager.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKSnappingLayoutManager;


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static FRICTION:D = 0.0

.field private static final INFLEXION:F = 0.35f


# instance fields
.field private deceleration:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->DECELERATION_RATE:F

    .line 24
    const-wide v0, 0x3feae147ae147ae1L    # 0.84

    sput-wide v0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->FRICTION:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->calculateDeceleration(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 35
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->calculateDeceleration(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private calcPosForVelocity(IIII)I
    .locals 6

    .prologue
    .line 61
    mul-int v0, p1, p1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 62
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getSplineFlingDistance(D)D

    move-result-wide v0

    .line 64
    int-to-double v2, p2

    if-lez p1, :cond_0

    :goto_0
    add-double/2addr v0, v2

    .line 66
    if-gez p1, :cond_1

    .line 68
    int-to-double v2, p4

    int-to-double v4, p3

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 70
    :goto_1
    return v0

    .line 64
    :cond_0
    neg-double v0, v0

    goto :goto_0

    .line 70
    :cond_1
    int-to-double v2, p4

    int-to-double v4, p3

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_1
.end method

.method private calculateDeceleration(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 39
    const-wide v0, 0x4078216adbeefaf2L    # 386.0885886511961

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->FRICTION:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->deceleration:D

    .line 44
    return-void
.end method

.method private getSplineDeceleration(D)D
    .locals 7

    .prologue
    .line 109
    const-wide v0, 0x3fd6666660000000L    # 0.3499999940395355

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 110
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->deceleration:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(D)D
    .locals 9

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getSplineDeceleration(D)D

    move-result-wide v0

    .line 103
    sget v2, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->deceleration:D

    mul-double/2addr v4, v6

    sget v6, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 104
    return-wide v0
.end method


# virtual methods
.method public getFixScrollPos()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getOrientation()I

    move-result v2

    if-nez v2, :cond_2

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 132
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPositionForVelocity(II)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 53
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 52
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->calcPosForVelocity(IIII)I

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 56
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 55
    invoke-direct {p0, p2, v1, v2, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->calcPosForVelocity(IIII)I

    move-result v0

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager$1;

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager$1;-><init>(Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 99
    return-void
.end method
