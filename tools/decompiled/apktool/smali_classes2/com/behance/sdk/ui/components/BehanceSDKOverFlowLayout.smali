.class public Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;
.super Landroid/view/ViewGroup;
.source "BehanceSDKOverFlowLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private line_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 93
    instance-of v0, p1, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    new-instance v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getChildCount()I

    move-result v4

    .line 102
    sub-int v5, p4, p2

    .line 103
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingLeft()I

    move-result v2

    .line 104
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingTop()I

    move-result v1

    .line 106
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 107
    invoke-virtual {p0, v3}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 108
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v7, 0x8

    if-eq v0, v7, :cond_1

    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 110
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 111
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;

    .line 112
    add-int v9, v2, v7

    if-le v9, v5, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingLeft()I

    move-result v2

    .line 114
    iget v9, p0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->line_height:I

    add-int/2addr v1, v9

    .line 116
    :cond_0
    add-int v9, v2, v7

    add-int/2addr v8, v1

    invoke-virtual {v6, v2, v1, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 117
    iget v0, v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v0, v7

    add-int/2addr v2, v0

    .line 106
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 40
    sget-boolean v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingRight()I

    move-result v1

    sub-int v7, v0, v1

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 44
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getChildCount()I

    move-result v8

    .line 45
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingLeft()I

    move-result v3

    .line 48
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingTop()I

    move-result v2

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 52
    const/high16 v0, -0x80000000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v0

    .line 57
    :goto_0
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_3

    .line 58
    invoke-virtual {p0, v6}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v10, 0x8

    if-eq v0, v10, :cond_6

    .line 60
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;

    .line 61
    const/high16 v10, -0x80000000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v9, v10, v1}, Landroid/view/View;->measure(II)V

    .line 62
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 63
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v11, v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;->vertical_spacing:I

    add-int/2addr v9, v11

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 65
    add-int v9, v3, v10

    if-le v9, v7, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->getPaddingLeft()I

    move-result v3

    .line 67
    add-int/2addr v2, v4

    .line 70
    :cond_1
    iget v0, v0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout$LayoutParams;->horizontal_spacing:I

    add-int/2addr v0, v10

    add-int/2addr v3, v0

    move v0, v4

    .line 57
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v0

    goto :goto_1

    .line 54
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 73
    :cond_3
    iput v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->line_height:I

    .line 75
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 76
    add-int v0, v2, v4

    .line 83
    :goto_3
    invoke-virtual {p0, v7, v0}, Lcom/behance/sdk/ui/components/BehanceSDKOverFlowLayout;->setMeasuredDimension(II)V

    .line 84
    return-void

    .line 78
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    .line 79
    add-int v0, v2, v4

    if-ge v0, v5, :cond_5

    .line 80
    add-int v0, v2, v4

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_2
.end method
