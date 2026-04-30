.class Lcom/e/a/a/a/b/h;
.super Lcom/e/a/a/a/b/a;
.source "DraggingItemDecorator.java"


# instance fields
.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/drawable/NinePatchDrawable;

.field private m:Landroid/graphics/Rect;

.field private n:Z

.field private o:Z

.field private p:Lcom/e/a/a/a/b/j;

.field private q:I

.field private r:Lcom/e/a/a/a/b/i;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/e/a/a/a/b/a;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    .line 53
    iput-object p3, p0, Lcom/e/a/a/a/b/h;->p:Lcom/e/a/a/a/b/j;

    .line 54
    return-void
.end method

.method private static a(III)I
    .locals 1

    .prologue
    .line 57
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const v9, 0x3f570a3d    # 0.84f

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 317
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 319
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 321
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v4

    .line 323
    iget-object v5, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v7

    iget-object v8, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v1, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 324
    iget-object v5, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v9, v9, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 326
    const/high16 v5, 0x41480000    # 12.5f

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v5, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 327
    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 330
    return-object v2
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView;Lcom/e/a/a/a/b/j;II)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 61
    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 85
    :cond_1
    :goto_0
    return-object v0

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 68
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 69
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 75
    if-lt v4, p2, :cond_3

    if-gt v4, p3, :cond_3

    .line 77
    invoke-virtual {p1, v4}, Lcom/e/a/a/a/b/j;->a(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private a(FI)V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    .line 336
    invoke-static {v0, v1, v2, v3}, Lcom/e/a/a/a/b/h;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FF)V

    .line 341
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v7/widget/RecyclerView;Lcom/e/a/a/a/b/j;II)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 89
    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 112
    :cond_1
    :goto_0
    return-object v0

    .line 95
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 96
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_4

    .line 97
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 103
    if-lt v3, p2, :cond_3

    if-gt v3, p3, :cond_3

    .line 105
    invoke-virtual {p1, v3}, Lcom/e/a/a/a/b/j;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    .line 223
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 225
    if-lez v1, :cond_3

    .line 226
    iput v3, p0, Lcom/e/a/a/a/b/h;->f:I

    .line 227
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget v2, v2, Lcom/e/a/a/a/b/i;->a:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/a/a/b/h;->g:I

    .line 229
    iput v3, p0, Lcom/e/a/a/a/b/h;->h:I

    .line 230
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget v2, v2, Lcom/e/a/a/a/b/i;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/a/a/b/h;->i:I

    .line 232
    iget v1, p0, Lcom/e/a/a/a/b/h;->q:I

    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_0
    iget v1, p0, Lcom/e/a/a/a/b/h;->f:I

    iget v2, p0, Lcom/e/a/a/a/b/h;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->g:I

    .line 246
    iget v1, p0, Lcom/e/a/a/a/b/h;->h:I

    iget v2, p0, Lcom/e/a/a/a/b/h;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->i:I

    .line 248
    iget-boolean v1, p0, Lcom/e/a/a/a/b/h;->o:Z

    if-nez v1, :cond_0

    .line 249
    invoke-static {v0, v4}, Lcom/e/a/a/a/d/d;->a(Landroid/support/v7/widget/RecyclerView;Z)I

    move-result v1

    .line 250
    invoke-static {v0, v4}, Lcom/e/a/a/a/d/d;->b(Landroid/support/v7/widget/RecyclerView;Z)I

    move-result v2

    .line 251
    iget-object v3, p0, Lcom/e/a/a/a/b/h;->p:Lcom/e/a/a/a/b/j;

    invoke-static {v0, v3, v1, v2}, Lcom/e/a/a/a/b/h;->a(Landroid/support/v7/widget/RecyclerView;Lcom/e/a/a/a/b/j;II)Landroid/view/View;

    move-result-object v3

    .line 252
    iget-object v4, p0, Lcom/e/a/a/a/b/h;->p:Lcom/e/a/a/a/b/j;

    invoke-static {v0, v4, v1, v2}, Lcom/e/a/a/a/b/h;->b(Landroid/support/v7/widget/RecyclerView;Lcom/e/a/a/a/b/j;II)Landroid/view/View;

    move-result-object v0

    .line 254
    iget v1, p0, Lcom/e/a/a/a/b/h;->q:I

    packed-switch v1, :pswitch_data_1

    .line 283
    :cond_0
    :goto_1
    iget v0, p0, Lcom/e/a/a/a/b/h;->j:I

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget v1, v1, Lcom/e/a/a/a/b/i;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/e/a/a/a/b/h;->c:I

    .line 284
    iget v0, p0, Lcom/e/a/a/a/b/h;->k:I

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget v1, v1, Lcom/e/a/a/a/b/i;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/e/a/a/a/b/h;->d:I

    .line 286
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    iget v1, p0, Lcom/e/a/a/a/b/h;->f:I

    iget v2, p0, Lcom/e/a/a/a/b/h;->g:I

    invoke-static {v0, v1, v2}, Lcom/e/a/a/a/b/h;->a(III)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->c:I

    .line 287
    iget v0, p0, Lcom/e/a/a/a/b/h;->d:I

    iget v1, p0, Lcom/e/a/a/a/b/h;->h:I

    iget v2, p0, Lcom/e/a/a/a/b/h;->i:I

    invoke-static {v0, v1, v2}, Lcom/e/a/a/a/b/h;->a(III)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->d:I

    .line 288
    return-void

    .line 234
    :pswitch_0
    iget v1, p0, Lcom/e/a/a/a/b/h;->f:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/a/a/b/h;->f:I

    .line 235
    iget v1, p0, Lcom/e/a/a/a/b/h;->g:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/a/a/b/h;->g:I

    goto :goto_0

    .line 239
    :pswitch_1
    iget v1, p0, Lcom/e/a/a/a/b/h;->h:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/a/a/b/h;->h:I

    .line 240
    iget v1, p0, Lcom/e/a/a/a/b/h;->i:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/e/a/a/a/b/h;->i:I

    goto/16 :goto_0

    .line 257
    :pswitch_2
    if-eqz v3, :cond_1

    .line 258
    iget v1, p0, Lcom/e/a/a/a/b/h;->i:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->h:I

    .line 261
    :cond_1
    if-eqz v0, :cond_0

    .line 262
    iget v1, p0, Lcom/e/a/a/a/b/h;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->i:I

    goto :goto_1

    .line 267
    :pswitch_3
    if-eqz v3, :cond_2

    .line 268
    iget v1, p0, Lcom/e/a/a/a/b/h;->f:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->f:I

    .line 271
    :cond_2
    if-eqz v0, :cond_0

    .line 272
    iget v1, p0, Lcom/e/a/a/a/b/h;->g:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->g:I

    goto/16 :goto_1

    .line 279
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->f:I

    iput v1, p0, Lcom/e/a/a/a/b/h;->g:I

    .line 280
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->h:I

    iput v0, p0, Lcom/e/a/a/a/b/h;->i:I

    goto/16 :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/e/a/a/a/b/h;->m()V

    .line 200
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/e/a/a/a/b/h;->d:I

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a/b/h;->a(FI)V

    .line 202
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public a(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/e/a/a/a/b/h;->l:Landroid/graphics/drawable/NinePatchDrawable;

    .line 208
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->l:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->l:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 211
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A new view holder is attempt to be assigned before invalidating the older one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 385
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->j:I

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/e/a/a/a/b/h;->k:I

    .line 195
    invoke-virtual {p0}, Lcom/e/a/a/a/b/h;->a()V

    .line 196
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/e/a/a/a/b/i;)V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/e/a/a/a/b/h;->n:Z

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 135
    iput-object p2, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    .line 136
    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/h;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/e/a/a/a/b/h;->e:Landroid/graphics/Bitmap;

    .line 138
    iget-object v1, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->f:I

    .line 139
    iget-object v1, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->h:I

    .line 140
    iget-object v1, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Lcom/e/a/a/a/d/d;->e(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    iput v1, p0, Lcom/e/a/a/a/b/h;->q:I

    .line 143
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/b/h;->a(Landroid/view/MotionEvent;)V

    .line 147
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/h;->n:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/e/a/a/a/b/h;->n:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 164
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/e/a/a/a/b/h;->d:I

    invoke-direct {p0, v0, v1}, Lcom/e/a/a/a/b/h;->a(FI)V

    .line 165
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/e/a/a/a/b/h;->a(Landroid/view/View;Z)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_3
    iput-object v3, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 175
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    iput-object v3, p0, Lcom/e/a/a/a/b/h;->e:Landroid/graphics/Bitmap;

    .line 180
    :cond_4
    iput-object v3, p0, Lcom/e/a/a/a/b/h;->p:Lcom/e/a/a/a/b/j;

    .line 181
    iput v2, p0, Lcom/e/a/a/a/b/h;->c:I

    .line 182
    iput v2, p0, Lcom/e/a/a/a/b/h;->d:I

    .line 183
    iput v2, p0, Lcom/e/a/a/a/b/h;->f:I

    .line 184
    iput v2, p0, Lcom/e/a/a/a/b/h;->g:I

    .line 185
    iput v2, p0, Lcom/e/a/a/a/b/h;->h:I

    .line 186
    iput v2, p0, Lcom/e/a/a/a/b/h;->i:I

    .line 187
    iput v2, p0, Lcom/e/a/a/a/b/h;->j:I

    .line 188
    iput v2, p0, Lcom/e/a/a/a/b/h;->k:I

    .line 189
    iput-boolean v2, p0, Lcom/e/a/a/a/b/h;->n:Z

    .line 190
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/e/a/a/a/b/h;->d:I

    return v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/e/a/a/a/b/h;->o:Z

    if-ne v0, p1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iput-boolean p1, p0, Lcom/e/a/a/a/b/h;->o:Z

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcom/e/a/a/a/b/h;->d:I

    iget v1, p0, Lcom/e/a/a/a/b/h;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/e/a/a/a/b/h;->d:I

    iget v1, p0, Lcom/e/a/a/a/b/h;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    iget v1, p0, Lcom/e/a/a/a/b/h;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    iget v1, p0, Lcom/e/a/a/a/b/h;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/e/a/a/a/b/h;->d:I

    return v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/e/a/a/a/b/h;->d:I

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget v1, v1, Lcom/e/a/a/a/b/i;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    return v0
.end method

.method public k()I
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget v1, v1, Lcom/e/a/a/a/b/i;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 371
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 372
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/b/h;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 376
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/e/a/a/a/b/h;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    iget v0, p0, Lcom/e/a/a/a/b/h;->c:I

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->r:Lcom/e/a/a/a/b/i;

    iget-object v1, v1, Lcom/e/a/a/a/b/i;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 123
    iget v1, p0, Lcom/e/a/a/a/b/h;->d:I

    iget-object v2, p0, Lcom/e/a/a/a/b/h;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 124
    iget-object v2, p0, Lcom/e/a/a/a/b/h;->e:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    :cond_0
    return-void
.end method
