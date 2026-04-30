.class public Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "BehanceSDKTouchHelperCallback.java"


# static fields
.field private static final ALPHA_FULL:F = 1.0f


# instance fields
.field private itemViewSwipeEnabled:Z

.field private longPressDragEnabled:Z

.field private final mAdapter:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->longPressDragEnabled:Z

    iput-boolean v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->itemViewSwipeEnabled:Z

    .line 23
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->mAdapter:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 102
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    instance-of v0, p2, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;

    if-eqz v0, :cond_0

    .line 106
    check-cast p2, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;

    .line 107
    invoke-interface {p2}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;->onItemCleared()V

    .line 109
    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v1, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->makeMovementFlags(II)I

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    .line 45
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->longPressDragEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    .line 47
    :goto_1
    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->makeMovementFlags(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 45
    goto :goto_1

    .line 49
    :cond_2
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->longPressDragEnabled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 50
    :goto_2
    iget-boolean v2, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->itemViewSwipeEnabled:Z

    if-eqz v2, :cond_3

    const/16 v1, 0x30

    .line 51
    :cond_3
    invoke-static {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->makeMovementFlags(II)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 49
    goto :goto_2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->itemViewSwipeEnabled:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->longPressDragEnabled:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 77
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 78
    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->mAdapter:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;->onItemMoved(II)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 87
    if-eqz p2, :cond_0

    .line 88
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;

    .line 91
    invoke-interface {v0}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;->onItemSelected()V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 96
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->mAdapter:Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKAdapterTouchHelper;->onItemRemoved(I)V

    .line 70
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->itemViewSwipeEnabled:Z

    .line 117
    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKTouchHelperCallback;->longPressDragEnabled:Z

    .line 113
    return-void
.end method
