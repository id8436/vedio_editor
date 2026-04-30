.class public Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;
.super Landroid/view/animation/Animation;
.source "BehanceSDKResizeViewAnimation.java"


# instance fields
.field private final heightDelta:I

.field private final oldHeight:I

.field private final oldWidth:I

.field private view:Landroid/view/View;

.field private final widthDelta:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->view:Landroid/view/View;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldWidth:I

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldHeight:I

    .line 20
    iget v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldWidth:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->widthDelta:I

    .line 21
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldHeight:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->heightDelta:I

    .line 22
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->widthDelta:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->oldHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->heightDelta:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 29
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewAnimation;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 30
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 35
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
