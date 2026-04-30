.class public Lcom/behance/sdk/ui/behaviors/BehanceSDKShiftForSnackbarBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BehanceSDKShiftForSnackbarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKShiftForSnackbarBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 22
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return v0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKShiftForSnackbarBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 14
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKShiftForSnackbarBehavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 35
    return-void
.end method
