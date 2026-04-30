.class public Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView;
.super Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectScrollView;
.source "BehanceSDKCustomVerticalScrollView.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectScrollView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectScrollView;->onScrollChanged(IIII)V

    .line 55
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;->onCustomScrollViewScrollChanged(IIII)V

    .line 58
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView;->callbacks:Lcom/behance/sdk/ui/components/BehanceSDKCustomVerticalScrollView$Callbacks;

    .line 66
    return-void
.end method
