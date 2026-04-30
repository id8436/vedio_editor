.class public Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BehanceSDKDividerItemDecoration.java"


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private horizontalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 21
    iput p3, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->horizontalPadding:I

    .line 22
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 8

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 28
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    .line 32
    iget-object v3, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 33
    iget-object v4, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->horizontalPadding:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->horizontalPadding:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v0, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    iget-object v0, p0, Lcom/behance/sdk/ui/decorators/BehanceSDKDividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
