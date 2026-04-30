.class public Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectListView;
.super Landroid/widget/ListView;
.source "EdgeEffectListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 16
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-direct {v0, p1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_overscroll:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 27
    if-eqz p2, :cond_0

    .line 28
    sget-object v1, Lcom/behance/sdk/R$styleable;->BehanceSDKEdgeEffectView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 29
    sget v2, Lcom/behance/sdk/R$styleable;->BehanceSDKEdgeEffectView_bsdk_edgeeffect_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 30
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectListView;->setEdgeEffectColor(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public setEdgeEffectColor(I)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/behance/sdk/ui/components/edge_effect/EdgeEffectListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/components/edge_effect/ContextWrapperEdgeEffect;->setEdgeEffectColor(I)V

    .line 37
    return-void
.end method
