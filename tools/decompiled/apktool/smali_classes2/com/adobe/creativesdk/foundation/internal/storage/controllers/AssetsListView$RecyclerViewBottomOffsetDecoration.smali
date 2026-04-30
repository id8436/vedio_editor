.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "AssetsListView.java"


# instance fields
.field private mOffset:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;I)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 76
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;->mOffset:I

    .line 77
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 82
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 83
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 84
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    .line 85
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$RecyclerViewBottomOffsetDecoration;->mOffset:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
