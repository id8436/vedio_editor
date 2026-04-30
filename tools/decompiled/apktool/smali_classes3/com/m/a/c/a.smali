.class public Lcom/m/a/c/a;
.super Ljava/lang/Object;
.source "HeaderRenderer.java"


# instance fields
.field private final a:Lcom/m/a/b/a;

.field private final b:Lcom/m/a/d/b;


# direct methods
.method public constructor <init>(Lcom/m/a/d/b;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/m/a/b/a;

    invoke-direct {v0}, Lcom/m/a/b/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/m/a/c/a;-><init>(Lcom/m/a/d/b;Lcom/m/a/b/a;)V

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/m/a/d/b;Lcom/m/a/b/a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/m/a/c/a;->b:Lcom/m/a/d/b;

    .line 27
    iput-object p2, p0, Lcom/m/a/c/a;->a:Lcom/m/a/b/a;

    .line 28
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 66
    iget-object v0, p0, Lcom/m/a/c/a;->a:Lcom/m/a/b/a;

    invoke-virtual {v0, p2}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/m/a/c/a;->b:Lcom/m/a/d/b;

    invoke-interface {v0, p1}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/m/a/c/a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 48
    :cond_0
    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    invoke-virtual {p3, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 52
    return-void
.end method
