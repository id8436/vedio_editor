.class public Lorg/solovyev/android/views/llm/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private dividerWidth:I

.field private first:Z

.field private last:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput-boolean v2, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->first:Z

    .line 19
    iput-boolean v2, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->last:Z

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010214

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/solovyev/android/views/llm/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/solovyev/android/views/llm/DividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean p3, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->first:Z

    .line 39
    iput-boolean p4, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->last:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput-boolean v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->first:Z

    .line 19
    iput-boolean v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->last:Z

    .line 44
    invoke-direct {p0, p1}, Lorg/solovyev/android/views/llm/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/solovyev/android/views/llm/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iput-boolean p2, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->first:Z

    .line 52
    iput-boolean p3, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->last:Z

    .line 53
    return-void
.end method

.method private getOrientation(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 144
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DividerItemDecoration can only be used with a LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object p1, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    .line 30
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerHeight:I

    .line 31
    if-nez p1, :cond_1

    :goto_1
    iput v1, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerWidth:I

    .line 32
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 64
    if-nez v3, :cond_3

    move v0, v1

    .line 65
    :goto_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    move v3, v1

    .line 66
    :goto_2
    iget-boolean v4, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->first:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_5

    :cond_1
    move v0, v1

    .line 67
    :goto_3
    iget-boolean v4, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->last:Z

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    move v3, v1

    .line 69
    :goto_4
    invoke-direct {p0, p3}, Lorg/solovyev/android/views/llm/DividerItemDecoration;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    if-ne v4, v1, :cond_8

    .line 70
    if-eqz v0, :cond_7

    iget v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerHeight:I

    :goto_5
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    if-eqz v3, :cond_2

    iget v2, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerHeight:I

    :cond_2
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    move v0, v2

    .line 64
    goto :goto_1

    :cond_4
    move v3, v2

    .line 65
    goto :goto_2

    :cond_5
    move v0, v2

    .line 66
    goto :goto_3

    :cond_6
    move v3, v2

    .line 67
    goto :goto_4

    :cond_7
    move v0, v2

    .line 70
    goto :goto_5

    .line 73
    :cond_8
    if-eqz v0, :cond_a

    iget v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerWidth:I

    :goto_6
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 74
    if-eqz v3, :cond_9

    iget v2, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerWidth:I

    :cond_9
    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_a
    move v0, v2

    .line 73
    goto :goto_6
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 13

    .prologue
    .line 80
    iget-object v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 81
    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v4, 0x0

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p2}, Lorg/solovyev/android/views/llm/DividerItemDecoration;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 91
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v8

    .line 92
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    .line 94
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    const/4 v0, 0x1

    move v7, v0

    .line 96
    :goto_1
    if-eqz v7, :cond_3

    .line 97
    iget v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerHeight:I

    .line 98
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    .line 99
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    move v12, v0

    move v0, v1

    move v1, v12

    .line 106
    :goto_2
    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    :goto_3
    if-ge v6, v8, :cond_6

    .line 107
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 108
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 109
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v11

    .line 110
    if-nez v11, :cond_4

    iget-boolean v11, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->first:Z

    if-nez v11, :cond_4

    .line 106
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 94
    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    .line 101
    :cond_3
    iget v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->dividerWidth:I

    .line 102
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    .line 103
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_2

    .line 113
    :cond_4
    if-eqz v7, :cond_5

    .line 114
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v0, v2, v0

    sub-int v2, v0, v1

    .line 115
    add-int v0, v2, v1

    move v3, v4

    move v4, v5

    .line 120
    :goto_5
    iget-object v5, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v5, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 117
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v0, v4, v0

    sub-int v4, v0, v1

    .line 118
    add-int v0, v4, v1

    move v12, v2

    move v2, v3

    move v3, v0

    move v0, v12

    goto :goto_5

    .line 124
    :cond_6
    iget-boolean v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->last:Z

    if-eqz v0, :cond_0

    if-lez v8, :cond_0

    .line 125
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 127
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v8

    .line 128
    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    .line 129
    if-eqz v7, :cond_7

    .line 130
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v3, v2, v0

    .line 131
    add-int v2, v3, v1

    .line 136
    :goto_6
    iget-object v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v0, p0, Lorg/solovyev/android/views/llm/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v5, v4, v0

    .line 134
    add-int v4, v5, v1

    goto :goto_6
.end method
