.class public Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BehanceSDKSpaceItemDecorationGridEdgeless.java"


# instance fields
.field private final mSpaceHeight:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 27
    iput p1, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;->mSpaceHeight:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_card_grid_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;->mSpaceHeight:I

    .line 24
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 33
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    .line 34
    rem-int v4, v2, v3

    .line 35
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    div-int/2addr v0, v3

    mul-int/2addr v0, v3

    if-lt v2, v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 37
    add-int/lit8 v0, v3, -0x1

    if-ne v4, v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 38
    if-nez v4, :cond_3

    :goto_3
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 39
    return-void

    .line 35
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;->mSpaceHeight:I

    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;->mSpaceHeight:I

    goto :goto_1

    .line 37
    :cond_2
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;->mSpaceHeight:I

    goto :goto_2

    .line 38
    :cond_3
    iget v1, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGridEdgeless;->mSpaceHeight:I

    goto :goto_3
.end method
