.class public Lcom/e/a/a/a/d/d;
.super Ljava/lang/Object;
.source "CustomRecyclerViewUtils.java"


# direct methods
.method public static a(I)I
    .locals 3

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown layout type (= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    const/4 v0, -0x1

    .line 63
    :goto_0
    return v0

    .line 59
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/support/v7/widget/LinearLayoutManager;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v2, v1}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/LinearLayoutManager;IIZZ)Landroid/view/View;

    move-result-object v0

    .line 230
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)I
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    instance-of v0, p0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 71
    check-cast p0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x2

    .line 89
    :goto_0
    return v0

    .line 74
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 76
    :cond_1
    instance-of v0, p0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    .line 77
    check-cast p0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_3
    instance-of v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_5

    .line 83
    check-cast p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    .line 84
    const/4 v0, 0x4

    goto :goto_0

    .line 86
    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    .line 89
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 194
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 195
    if-ne v0, v1, :cond_0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;Z)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 147
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 148
    if-eqz p1, :cond_0

    .line 149
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/LinearLayoutManager;)I

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 151
    :cond_0
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 128
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 129
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 130
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 132
    return-object p2
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 114
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 117
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 118
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 119
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 123
    :goto_0
    return-object p1

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;FF)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/e/a/a/a/d/d;->a(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/support/v7/widget/LinearLayoutManager;IIZZ)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v6, v0

    .line 244
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getHeight()I

    move-result v1

    move v5, v1

    .line 245
    :goto_1
    if-le p2, p1, :cond_3

    .line 246
    :goto_2
    const/4 v2, 0x0

    .line 247
    :goto_3
    if-eq p1, p2, :cond_7

    .line 248
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 249
    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    move v4, v3

    .line 250
    :goto_4
    if-eqz v6, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 251
    :goto_5
    if-ge v4, v5, :cond_8

    if-lez v3, :cond_8

    .line 252
    if-eqz p3, :cond_0

    .line 253
    if-ltz v4, :cond_6

    if-gt v3, v5, :cond_6

    .line 263
    :cond_0
    :goto_6
    return-object v1

    .line 242
    :cond_1
    const/4 v1, 0x0

    move v6, v1

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v1

    move v5, v1

    goto :goto_1

    .line 245
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 249
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    move v4, v3

    goto :goto_4

    .line 250
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_5

    .line 255
    :cond_6
    if-eqz p4, :cond_8

    if-nez v2, :cond_8

    .line 247
    :goto_7
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    .line 263
    goto :goto_6

    :cond_8
    move-object v1, v2

    goto :goto_7
.end method

.method private static a(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 95
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 96
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 104
    :goto_1
    return-object v0

    .line 95
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/support/v7/widget/LinearLayoutManager;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/LinearLayoutManager;IIZZ)Landroid/view/View;

    move-result-object v1

    .line 235
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 175
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(Landroid/support/v7/widget/RecyclerView;Z)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 161
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 162
    if-eqz p1, :cond_0

    .line 163
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v0}, Lcom/e/a/a/a/d/d;->b(Landroid/support/v7/widget/LinearLayoutManager;)I

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 165
    :cond_0
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static c(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 185
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 205
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 206
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 208
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 217
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    .line 220
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    .line 221
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 222
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
