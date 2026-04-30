.class public Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;
.super Landroid/view/animation/Animation;
.source "BehanceSDKResizeViewsAnimation.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->items:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;IFF)V
    .locals 8

    .prologue
    .line 23
    iget-object v7, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->items:Ljava/util/List;

    new-instance v0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;-><init>(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;Landroid/view/View;IFFLcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$1;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .prologue
    .line 28
    iget-object v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;

    .line 29
    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$200(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)I

    move-result v3

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$300(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)I

    move-result v4

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$200(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$400(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)F

    move-result v3

    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$500(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)F

    move-result v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 31
    invoke-static {v0}, Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;->access$100(Lcom/behance/sdk/ui/animations/BehanceSDKResizeViewsAnimation$ResizeItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 38
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
