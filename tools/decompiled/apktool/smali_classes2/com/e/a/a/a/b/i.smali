.class public Lcom/e/a/a/a/b/i;
.super Ljava/lang/Object;
.source "DraggingItemInfo.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:I

.field public final e:I

.field public final f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/i;->a:I

    .line 34
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/i;->b:I

    .line 35
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/e/a/a/a/b/i;->c:J

    .line 36
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/e/a/a/a/b/i;->d:I

    .line 37
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lcom/e/a/a/a/b/i;->e:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    .line 39
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/e/a/a/a/d/d;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 40
    return-void
.end method
