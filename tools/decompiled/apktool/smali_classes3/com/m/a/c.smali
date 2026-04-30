.class public Lcom/m/a/c;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "StickyRecyclerHeadersDecoration.java"


# instance fields
.field private final a:Lcom/m/a/b;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/m/a/a/a;

.field private final d:Lcom/m/a/d/b;

.field private final e:Lcom/m/a/a;

.field private final f:Lcom/m/a/c/a;

.field private final g:Lcom/m/a/b/a;


# direct methods
.method public constructor <init>(Lcom/m/a/b;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/m/a/d/a;

    invoke-direct {v0}, Lcom/m/a/d/a;-><init>()V

    new-instance v1, Lcom/m/a/b/a;

    invoke-direct {v1}, Lcom/m/a/b/a;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/m/a/c;-><init>(Lcom/m/a/b;Lcom/m/a/d/b;Lcom/m/a/b/a;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/m/a/b;Lcom/m/a/c/a;Lcom/m/a/d/b;Lcom/m/a/b/a;Lcom/m/a/a/a;Lcom/m/a/a;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/m/a/c;->b:Landroid/util/SparseArray;

    .line 48
    iput-object p1, p0, Lcom/m/a/c;->a:Lcom/m/a/b;

    .line 49
    iput-object p5, p0, Lcom/m/a/c;->c:Lcom/m/a/a/a;

    .line 50
    iput-object p3, p0, Lcom/m/a/c;->d:Lcom/m/a/d/b;

    .line 51
    iput-object p2, p0, Lcom/m/a/c;->f:Lcom/m/a/c/a;

    .line 52
    iput-object p4, p0, Lcom/m/a/c;->g:Lcom/m/a/b/a;

    .line 53
    iput-object p6, p0, Lcom/m/a/c;->e:Lcom/m/a/a;

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/m/a/b;Lcom/m/a/d/b;Lcom/m/a/b/a;)V
    .locals 6

    .prologue
    .line 34
    new-instance v4, Lcom/m/a/c/a;

    invoke-direct {v4, p2}, Lcom/m/a/c/a;-><init>(Lcom/m/a/d/b;)V

    new-instance v5, Lcom/m/a/a/b;

    invoke-direct {v5, p1, p2}, Lcom/m/a/a/b;-><init>(Lcom/m/a/b;Lcom/m/a/d/b;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/m/a/c;-><init>(Lcom/m/a/b;Lcom/m/a/d/b;Lcom/m/a/b/a;Lcom/m/a/c/a;Lcom/m/a/a/a;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/m/a/b;Lcom/m/a/d/b;Lcom/m/a/b/a;Lcom/m/a/c/a;Lcom/m/a/a/a;)V
    .locals 7

    .prologue
    .line 40
    new-instance v6, Lcom/m/a/a;

    invoke-direct {v6, p1, p5, p2, p3}, Lcom/m/a/a;-><init>(Lcom/m/a/b;Lcom/m/a/a/a;Lcom/m/a/d/b;Lcom/m/a/b/a;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/m/a/c;-><init>(Lcom/m/a/b;Lcom/m/a/c/a;Lcom/m/a/d/b;Lcom/m/a/b/a;Lcom/m/a/a/a;Lcom/m/a/a;)V

    .line 43
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/m/a/c;->g:Lcom/m/a/b/a;

    invoke-virtual {v0, p2}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/m/a/c;->c:Lcom/m/a/a/a;

    invoke-interface {v0, p1, p2}, Lcom/m/a/a/a;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/m/a/c;->c:Lcom/m/a/a/a;

    invoke-interface {v0}, Lcom/m/a/a/a;->a()V

    .line 147
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 59
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 60
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/m/a/c;->e:Lcom/m/a/a;

    invoke-virtual {v1, v0}, Lcom/m/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, p3, v0}, Lcom/m/a/c;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/m/a/c;->d:Lcom/m/a/d/b;

    invoke-interface {v1, p3}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/m/a/c;->a(Landroid/graphics/Rect;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 88
    iget-object v0, p0, Lcom/m/a/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 90
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/m/a/c;->a:Lcom/m/a/b;

    invoke-interface {v0}, Lcom/m/a/b;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 110
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 97
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 94
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/m/a/c;->e:Lcom/m/a/a;

    iget-object v4, p0, Lcom/m/a/c;->d:Lcom/m/a/d/b;

    invoke-interface {v4, p2}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    invoke-virtual {v3, v1, v4, v2}, Lcom/m/a/a;->a(Landroid/view/View;II)Z

    move-result v3

    .line 102
    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/m/a/c;->e:Lcom/m/a/a;

    invoke-virtual {v4, v2}, Lcom/m/a/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    :cond_4
    iget-object v4, p0, Lcom/m/a/c;->c:Lcom/m/a/a/a;

    invoke-interface {v4, p2, v2}, Lcom/m/a/a/a;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v4

    .line 104
    iget-object v5, p0, Lcom/m/a/c;->e:Lcom/m/a/a;

    invoke-virtual {v5, p2, v4, v1, v3}, Lcom/m/a/a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 106
    iget-object v3, p0, Lcom/m/a/c;->f:Lcom/m/a/c/a;

    invoke-virtual {v3, p2, p1, v4, v1}, Lcom/m/a/c/a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 107
    iget-object v3, p0, Lcom/m/a/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method
