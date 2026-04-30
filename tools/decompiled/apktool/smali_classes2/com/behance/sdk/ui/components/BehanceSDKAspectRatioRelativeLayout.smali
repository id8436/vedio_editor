.class public Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "BehanceSDKAspectRatioRelativeLayout.java"


# instance fields
.field private aspectRatio:D

.field private constrainWidth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->aspectRatio:D

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->aspectRatio:D

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->aspectRatio:D

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    .line 26
    return-void
.end method


# virtual methods
.method public constrainHeight()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    .line 44
    return-void
.end method

.method public constrainWidth()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    .line 40
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 30
    iget-boolean v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    if-eqz v0, :cond_1

    move v0, p1

    :goto_0
    iget-boolean v1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth:Z

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-double v2, v1

    iget-wide v4, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->aspectRatio:D

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 30
    :cond_0
    invoke-super {p0, v0, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 32
    return-void

    .line 30
    :cond_1
    iget-wide v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->aspectRatio:D

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->aspectRatio:D

    .line 36
    return-void
.end method
