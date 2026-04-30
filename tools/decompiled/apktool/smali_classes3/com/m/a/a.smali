.class public Lcom/m/a/a;
.super Ljava/lang/Object;
.source "HeaderPositionCalculator.java"


# instance fields
.field private final a:Lcom/m/a/b;

.field private final b:Lcom/m/a/d/b;

.field private final c:Lcom/m/a/a/a;

.field private final d:Lcom/m/a/b/a;


# direct methods
.method public constructor <init>(Lcom/m/a/b;Lcom/m/a/a/a;Lcom/m/a/d/b;Lcom/m/a/b/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/m/a/a;->a:Lcom/m/a/b;

    .line 26
    iput-object p2, p0, Lcom/m/a/a;->c:Lcom/m/a/a/a;

    .line 27
    iput-object p3, p0, Lcom/m/a/a;->b:Lcom/m/a/d/b;

    .line 28
    iput-object p4, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    .line 29
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v0, p2}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 100
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    .line 101
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-direct {p0, p1}, Lcom/m/a/a;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 111
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 105
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 106
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    invoke-direct {p0, p1}, Lcom/m/a/a;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v0, p6}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v1, p4}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 149
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcom/m/a/a;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 151
    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p6}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 152
    if-ge v0, v1, :cond_0

    .line 153
    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-direct {p0, p1}, Lcom/m/a/a;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    .line 157
    invoke-virtual {p5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p6}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v0

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 158
    if-ge v0, v1, :cond_0

    .line 159
    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/m/a/a;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 117
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 118
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    if-lez v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/m/a/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/m/a/a;->c:Lcom/m/a/a/a;

    invoke-interface {v4, p1, v3}, Lcom/m/a/a/a;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v4, v3}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 125
    iget-object v5, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v5, p2}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 127
    iget-object v6, p0, Lcom/m/a/a;->b:Lcom/m/a/d/b;

    invoke-interface {v6, p1}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 129
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 130
    if-ge v2, v3, :cond_0

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 135
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 136
    if-ge v2, v3, :cond_0

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/m/a/a;->b:Lcom/m/a/d/b;

    invoke-interface {v2, p1}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/m/a/a;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 177
    :goto_1
    return-object v0

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 78
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/m/a/a;->a:Lcom/m/a/b;

    invoke-interface {v0}, Lcom/m/a/b;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 192
    iget-object v3, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v3, p3}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 194
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 195
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/m/a/a;->c:Lcom/m/a/a/a;

    invoke-interface {v5, p1, v4}, Lcom/m/a/a/a;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v4

    if-eq v4, p3, :cond_1

    :cond_0
    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 201
    :cond_1
    if-ne p4, v2, :cond_2

    .line 202
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v0, v4, v0

    .line 203
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 204
    if-le v0, v3, :cond_3

    move v0, v1

    .line 205
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v0, v4, v0

    .line 209
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    .line 210
    if-le v0, v3, :cond_3

    move v0, v1

    .line 211
    goto :goto_0

    :cond_3
    move v0, v2

    .line 215
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 82
    iget-object v0, p0, Lcom/m/a/a;->b:Lcom/m/a/d/b;

    invoke-interface {v0, p1}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/m/a/a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v3

    .line 85
    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/m/a/a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/m/a/a;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 87
    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/m/a/a;->c:Lcom/m/a/a/a;

    invoke-interface {v1, p1, v0}, Lcom/m/a/a/a;->a(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v6

    .line 89
    iget-object v0, p0, Lcom/m/a/a;->b:Lcom/m/a/d/b;

    invoke-interface {v0, p1}, Lcom/m/a/d/b;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/m/a/a;->a(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 93
    :cond_0
    return-object v3
.end method

.method public a(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/m/a/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/m/a/a;->a:Lcom/m/a/b;

    invoke-interface {v1, p1}, Lcom/m/a/b;->getHeaderId(I)J

    move-result-wide v2

    .line 70
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 74
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/m/a/a;->a:Lcom/m/a/b;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v1, v4}, Lcom/m/a/b;->getHeaderId(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 44
    if-ne p2, v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 46
    iget-object v1, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v1, p1}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 52
    :goto_0
    if-gt v2, v1, :cond_1

    iget-object v1, p0, Lcom/m/a/a;->a:Lcom/m/a/b;

    invoke-interface {v1, p3}, Lcom/m/a/b;->getHeaderId(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :goto_1
    return v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 49
    iget-object v1, p0, Lcom/m/a/a;->d:Lcom/m/a/b/a;

    invoke-virtual {v1, p1}, Lcom/m/a/b/a;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
