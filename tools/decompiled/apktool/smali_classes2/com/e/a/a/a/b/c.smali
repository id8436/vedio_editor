.class abstract Lcom/e/a/a/a/b/c;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "BaseEdgeEffectDecorator.java"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Landroid/support/v4/widget/EdgeEffectCompat;

.field private c:Landroid/support/v4/widget/EdgeEffectCompat;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    .line 39
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    iget v1, p0, Lcom/e/a/a/a/b/c;->e:I

    invoke-static {p1, v0, v1}, Lcom/e/a/a/a/b/c;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v4/widget/EdgeEffectCompat;I)V

    .line 165
    return-void
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v4/widget/EdgeEffectCompat;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 178
    invoke-static {p0}, Lcom/e/a/a/a/b/c;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 180
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 183
    :cond_0
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 184
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v5

    .line 192
    :cond_2
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 193
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;ILandroid/support/v4/widget/EdgeEffectCompat;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 66
    invoke-static {p1}, Lcom/e/a/a/a/b/c;->c(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    .line 68
    packed-switch p2, :pswitch_data_0

    .line 100
    :cond_1
    :goto_1
    invoke-virtual {p3, p0}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 102
    invoke-virtual {p0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 70
    :pswitch_0
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 75
    :pswitch_1
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 76
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 83
    :pswitch_2
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 84
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 91
    :pswitch_3
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 92
    if-eqz v0, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 95
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    iget v1, p0, Lcom/e/a/a/a/b/c;->f:I

    invoke-static {p1, v0, v1}, Lcom/e/a/a/a/b/c;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v4/widget/EdgeEffectCompat;I)V

    .line 172
    return-void
.end method

.method private static c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/e/a/a/a/b/c;->d:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/b/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/c;->e:I

    .line 112
    invoke-virtual {p0, v1}, Lcom/e/a/a/a/b/c;->a(I)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/c;->f:I

    .line 113
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 114
    iput-boolean v1, p0, Lcom/e/a/a/a/b/c;->d:Z

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/c;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 129
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/e/a/a/a/b/c;->d:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/a/a/b/c;->c()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/a/a/b/c;->d:Z

    .line 124
    return-void
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/c;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 137
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 140
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    iget-object v1, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 154
    :cond_1
    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 157
    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/e/a/a/a/b/c;->d:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 202
    iget-object v0, p0, Lcom/e/a/a/a/b/c;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    .line 48
    iget v1, p0, Lcom/e/a/a/a/b/c;->e:I

    iget-object v2, p0, Lcom/e/a/a/a/b/c;->b:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {p1, p2, v1, v2}, Lcom/e/a/a/a/b/c;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;ILandroid/support/v4/widget/EdgeEffectCompat;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    .line 52
    iget v1, p0, Lcom/e/a/a/a/b/c;->f:I

    iget-object v2, p0, Lcom/e/a/a/a/b/c;->c:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {p1, p2, v1, v2}, Lcom/e/a/a/a/b/c;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;ILandroid/support/v4/widget/EdgeEffectCompat;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 58
    :cond_2
    return-void
.end method
