.class Lcom/e/a/a/a/b/t;
.super Lcom/e/a/a/a/b/a;
.source "SwapTargetItemOperator.java"


# instance fields
.field private c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private d:Landroid/view/animation/Interpolator;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Z

.field private k:F

.field private l:F

.field private m:Lcom/e/a/a/a/b/i;

.field private n:Lcom/e/a/a/a/b/j;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;Lcom/e/a/a/a/b/i;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a/b/a;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/b/t;->g:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/b/t;->h:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/b/t;->i:Landroid/graphics/Rect;

    .line 48
    iput-object p4, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    .line 49
    iput-object p3, p0, Lcom/e/a/a/a/b/t;->n:Lcom/e/a/a/a/b/j;

    .line 51
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/e/a/a/a/b/t;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/e/a/a/a/b/t;->i:Landroid/graphics/Rect;

    .line 51
    invoke-static {v0, v1, v2}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 53
    return-void
.end method

.method private static a(FF)F
    .locals 3

    .prologue
    .line 56
    .line 58
    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v0, p0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 60
    sub-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 101
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 104
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 106
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    .line 107
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v5, p0, Lcom/e/a/a/a/b/t;->g:Landroid/graphics/Rect;

    .line 106
    invoke-static {v2, v0, v5}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 108
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->h:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/e/a/a/a/d/d;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 110
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->h:Landroid/graphics/Rect;

    .line 111
    iget-object v5, p0, Lcom/e/a/a/a/b/t;->g:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget v2, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 115
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v5, p0, Lcom/e/a/a/a/b/t;->e:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 116
    if-eqz v0, :cond_0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 117
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v5, p0, Lcom/e/a/a/a/b/t;->f:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    .line 118
    if-eqz v6, :cond_1

    int-to-float v5, v6

    div-float/2addr v2, v5

    .line 122
    :goto_1
    iget-object v5, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 123
    if-le v3, v4, :cond_2

    .line 141
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0

    :cond_1
    move v2, v1

    .line 118
    goto :goto_1

    .line 128
    :cond_2
    add-float/2addr v2, v8

    goto :goto_2

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    if-nez v2, :cond_5

    .line 131
    if-le v3, v4, :cond_4

    move v2, v0

    .line 133
    goto :goto_2

    .line 136
    :cond_4
    add-float v2, v8, v0

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;F)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 145
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    .line 148
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    .line 150
    iget-object v3, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    iget-object v3, v3, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    .line 151
    iget-object v4, p0, Lcom/e/a/a/a/b/t;->i:Landroid/graphics/Rect;

    .line 152
    iget-object v5, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    iget v5, v5, Lcom/e/a/a/a/b/i;->b:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    .line 153
    iget-object v6, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    iget v6, v6, Lcom/e/a/a/a/b/i;->a:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 155
    iget-object v4, p0, Lcom/e/a/a/a/b/t;->d:Landroid/view/animation/Interpolator;

    if-eqz v4, :cond_0

    .line 156
    iget-object v4, p0, Lcom/e/a/a/a/b/t;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 159
    :cond_0
    iget-object v4, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 161
    :pswitch_0
    if-le v1, v2, :cond_1

    .line 163
    int-to-float v1, v5

    mul-float/2addr v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 166
    :cond_1
    sub-float v1, p3, v8

    int-to-float v2, v5

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 170
    :pswitch_1
    if-le v1, v2, :cond_2

    .line 172
    int-to-float v1, v3

    mul-float/2addr v1, p3

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 175
    :cond_2
    sub-float v1, p3, v8

    int-to-float v2, v3

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/e/a/a/a/b/t;->j:Z

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/t;->j:Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lcom/e/a/a/a/b/t;->e:I

    .line 221
    iput p2, p0, Lcom/e/a/a/a/b/t;->f:I

    .line 222
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 192
    iget-boolean v0, p0, Lcom/e/a/a/a/b/t;->j:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 202
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lcom/e/a/a/a/b/t;->l:F

    invoke-direct {p0, v0, v1, v2}, Lcom/e/a/a/a/b/t;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;F)V

    .line 205
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/e/a/a/a/b/t;->a(Landroid/view/View;Z)V

    .line 206
    iput-object v3, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 209
    :cond_2
    iput-object v3, p0, Lcom/e/a/a/a/b/t;->n:Lcom/e/a/a/a/b/j;

    .line 210
    iput-object v3, p0, Lcom/e/a/a/a/b/t;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 211
    iput v4, p0, Lcom/e/a/a/a/b/t;->e:I

    .line 212
    iput v4, p0, Lcom/e/a/a/a/b/t;->f:I

    .line 213
    iput v5, p0, Lcom/e/a/a/a/b/t;->l:F

    .line 214
    iput v5, p0, Lcom/e/a/a/a/b/t;->k:F

    .line 215
    iput-boolean v4, p0, Lcom/e/a/a/a/b/t;->j:Z

    .line 216
    iput-object v3, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    .line 217
    return-void
.end method

.method public b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/e/a/a/a/b/t;->d:Landroid/view/animation/Interpolator;

    .line 65
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    iget-object v1, p0, Lcom/e/a/a/a/b/t;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 71
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    iget-wide v4, v0, Lcom/e/a/a/a/b/i;->c:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/e/a/a/a/b/t;->m:Lcom/e/a/a/a/b/i;

    iget v3, p0, Lcom/e/a/a/a/b/t;->e:I

    iget v4, p0, Lcom/e/a/a/a/b/t;->f:I

    iget-object v5, p0, Lcom/e/a/a/a/b/t;->n:Lcom/e/a/a/a/b/j;

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/i;IILcom/e/a/a/a/b/j;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v2, v3, v6, v6}, Lcom/e/a/a/a/b/t;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FF)V

    .line 84
    :cond_2
    if-eqz v0, :cond_3

    .line 85
    invoke-direct {p0, v1, v0}, Lcom/e/a/a/a/b/t;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v2

    iput v2, p0, Lcom/e/a/a/a/b/t;->k:F

    .line 87
    iget-object v2, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq v2, v0, :cond_4

    .line 88
    iget v2, p0, Lcom/e/a/a/a/b/t;->k:F

    iput v2, p0, Lcom/e/a/a/a/b/t;->l:F

    .line 94
    :goto_1
    iget v2, p0, Lcom/e/a/a/a/b/t;->l:F

    invoke-direct {p0, v1, v0, v2}, Lcom/e/a/a/a/b/t;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;F)V

    .line 97
    :cond_3
    iput-object v0, p0, Lcom/e/a/a/a/b/t;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 91
    :cond_4
    iget v2, p0, Lcom/e/a/a/a/b/t;->l:F

    iget v3, p0, Lcom/e/a/a/a/b/t;->k:F

    invoke-static {v2, v3}, Lcom/e/a/a/a/b/t;->a(FF)F

    move-result v2

    iput v2, p0, Lcom/e/a/a/a/b/t;->l:F

    goto :goto_1
.end method
