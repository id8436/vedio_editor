.class public Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BehanceSDKSpaceItemDecorationGrid.java"


# instance fields
.field private final mSpaceHeight:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput p1, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;->mSpaceHeight:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->bsdk_card_grid_item_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;->mSpaceHeight:I

    .line 19
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;->mSpaceHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 29
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;->mSpaceHeight:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 30
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;->mSpaceHeight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 31
    iget v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;->mSpaceHeight:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 32
    return-void
.end method
