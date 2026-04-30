.class Lcom/e/a/a/a/b/g;
.super Lcom/e/a/a/a/d/b;
.source "DraggableItemWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/e/a/a/a/d/b",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/e/a/a/a/b/l;

.field private b:Lcom/e/a/a/a/b/e;

.field private c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private d:Lcom/e/a/a/a/b/i;

.field private e:Lcom/e/a/a/a/b/j;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/b/l;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/e/a/a/a/b/l;",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<TVH;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p2}, Lcom/e/a/a/a/d/b;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 50
    iput v0, p0, Lcom/e/a/a/a/b/g;->f:I

    .line 51
    iput v0, p0, Lcom/e/a/a/a/b/g;->g:I

    .line 56
    invoke-static {p2}, Lcom/e/a/a/a/b/g;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/e/a/a/a/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/a/a/b/g;->b:Lcom/e/a/a/a/b/e;

    .line 57
    invoke-static {p2}, Lcom/e/a/a/a/b/g;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/e/a/a/a/b/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "adapter does not implement DraggableItemAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "manager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p1, p0, Lcom/e/a/a/a/b/g;->a:Lcom/e/a/a/a/b/l;

    .line 66
    return-void
.end method

.method protected static a(III)I
    .locals 0

    .prologue
    .line 148
    if-ltz p1, :cond_0

    if-gez p2, :cond_2

    :cond_0
    move p1, p0

    .line 166
    :cond_1
    :goto_0
    return p1

    .line 152
    :cond_2
    if-eq p1, p2, :cond_4

    if-ge p0, p1, :cond_3

    if-lt p0, p2, :cond_4

    :cond_3
    if-le p0, p1, :cond_5

    if-le p0, p2, :cond_5

    :cond_4
    move p1, p0

    .line 155
    goto :goto_0

    .line 156
    :cond_5
    if-ge p2, p1, :cond_6

    .line 157
    if-eq p0, p2, :cond_1

    .line 160
    add-int/lit8 p1, p0, -0x1

    goto :goto_0

    .line 163
    :cond_6
    if-eq p0, p2, :cond_1

    .line 166
    add-int/lit8 p1, p0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/e/a/a/a/b/e;
    .locals 1

    .prologue
    .line 378
    const-class v0, Lcom/e/a/a/a/b/e;

    invoke-static {p0, v0}, Lcom/e/a/a/a/d/e;->a(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/b/e;

    return-object v0
.end method

.method private static b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 360
    instance-of v0, p0, Lcom/e/a/a/a/b/f;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 364
    check-cast v0, Lcom/e/a/a/a/b/f;

    .line 366
    invoke-interface {v0}, Lcom/e/a/a/a/b/f;->getDragStateFlags()I

    move-result v0

    .line 370
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    xor-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 371
    :cond_1
    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    .line 374
    :cond_2
    check-cast p0, Lcom/e/a/a/a/b/f;

    invoke-interface {p0, p1}, Lcom/e/a/a/a/b/f;->setDragStateFlags(I)V

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->c()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->a:Lcom/e/a/a/a/b/l;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->d()V

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/e/a/a/a/b/j;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->b:Lcom/e/a/a/a/b/e;

    invoke-interface {v0, p1, p2}, Lcom/e/a/a/a/b/e;->onGetItemDraggableRange(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Lcom/e/a/a/a/b/j;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-super {p0}, Lcom/e/a/a/a/d/b;->a()V

    .line 71
    iput-object v0, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 72
    iput-object v0, p0, Lcom/e/a/a/a/b/g;->b:Lcom/e/a/a/a/b/e;

    .line 73
    iput-object v0, p0, Lcom/e/a/a/a/b/g;->a:Lcom/e/a/a/a/b/l;

    .line 74
    return-void
.end method

.method protected a(II)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->j()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/e/a/a/a/d/b;->a(II)V

    goto :goto_0
.end method

.method a(Lcom/e/a/a/a/b/i;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/e/a/a/a/b/j;)V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "dragging target must provides valid ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/e/a/a/a/b/g;->g:I

    iput v0, p0, Lcom/e/a/a/a/b/g;->f:I

    .line 246
    iput-object p1, p0, Lcom/e/a/a/a/b/g;->d:Lcom/e/a/a/a/b/i;

    .line 247
    iput-object p2, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 248
    iput-object p3, p0, Lcom/e/a/a/a/b/g;->e:Lcom/e/a/a/a/b/j;

    .line 250
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->notifyDataSetChanged()V

    .line 251
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 263
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/e/a/a/a/b/g;->g:I

    iget v1, p0, Lcom/e/a/a/a/b/g;->f:I

    if-eq v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->g()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const-class v1, Lcom/e/a/a/a/b/e;

    .line 265
    invoke-static {v0, v1}, Lcom/e/a/a/a/d/e;->a(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/b/e;

    .line 267
    iget v1, p0, Lcom/e/a/a/a/b/g;->f:I

    iget v2, p0, Lcom/e/a/a/a/b/g;->g:I

    invoke-interface {v0, v1, v2}, Lcom/e/a/a/a/b/e;->onMoveItem(II)V

    .line 270
    :cond_0
    iput v4, p0, Lcom/e/a/a/a/b/g;->f:I

    .line 271
    iput v4, p0, Lcom/e/a/a/a/b/g;->g:I

    .line 272
    iput-object v3, p0, Lcom/e/a/a/a/b/g;->e:Lcom/e/a/a/a/b/j;

    .line 273
    iput-object v3, p0, Lcom/e/a/a/a/b/g;->d:Lcom/e/a/a/a/b/i;

    .line 274
    iput-object v3, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 276
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->notifyDataSetChanged()V

    .line 277
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->b:Lcom/e/a/a/a/b/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/e/a/a/a/b/e;->onCheckCanStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;III)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->j()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-super {p0}, Lcom/e/a/a/a/d/b;->b()V

    goto :goto_0
.end method

.method protected b(II)V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->j()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/e/a/a/a/d/b;->b(II)V

    goto :goto_0
.end method

.method protected b(III)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->j()V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/e/a/a/a/d/b;->b(III)V

    goto :goto_0
.end method

.method protected c(II)V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/e/a/a/a/b/g;->j()V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/e/a/a/a/d/b;->c(II)V

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->d:Lcom/e/a/a/a/b/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/e/a/a/a/b/g;->f:I

    return v0
.end method

.method d(II)V
    .locals 4

    .prologue
    .line 325
    iget v0, p0, Lcom/e/a/a/a/b/g;->f:I

    iget v1, p0, Lcom/e/a/a/a/b/g;->g:I

    invoke-static {p1, v0, v1}, Lcom/e/a/a/a/b/g;->a(III)I

    move-result v0

    .line 328
    iget v1, p0, Lcom/e/a/a/a/b/g;->f:I

    if-eq v0, v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMoveItem() - may be a bug or has duplicate IDs  --- mDraggingItemInitialPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/e/a/a/a/b/g;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mDraggingItemCurrentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/e/a/a/a/b/g;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", origFromPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", fromPosition = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", toPosition = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_0
    iput p2, p0, Lcom/e/a/a/a/b/g;->g:I

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/e/a/a/a/b/g;->notifyItemMoved(II)V

    .line 345
    return-void
.end method

.method e()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/e/a/a/a/b/g;->g:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lcom/e/a/a/a/b/g;->f:I

    iget v1, p0, Lcom/e/a/a/a/b/g;->g:I

    invoke-static {p1, v0, v1}, Lcom/e/a/a/a/b/g;->a(III)I

    move-result v0

    .line 130
    invoke-super {p0, v0}, Lcom/e/a/a/a/d/b;->getItemId(I)J

    move-result-wide v0

    .line 132
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/e/a/a/a/d/b;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget v0, p0, Lcom/e/a/a/a/b/g;->f:I

    iget v1, p0, Lcom/e/a/a/a/b/g;->g:I

    invoke-static {p1, v0, v1}, Lcom/e/a/a/a/b/g;->a(III)I

    move-result v0

    .line 141
    invoke-super {p0, v0}, Lcom/e/a/a/a/d/b;->getItemViewType(I)I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/e/a/a/a/d/b;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->d:Lcom/e/a/a/a/b/i;

    iget-wide v2, v0, Lcom/e/a/a/a/b/i;->c:J

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    .line 93
    iget v0, p0, Lcom/e/a/a/a/b/g;->f:I

    iget v1, p0, Lcom/e/a/a/a/b/g;->g:I

    invoke-static {p2, v0, v1}, Lcom/e/a/a/a/b/g;->a(III)I

    move-result v1

    .line 96
    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eq p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_3

    .line 99
    const-string/jumbo v0, "ARVDraggableWrapper"

    const-string/jumbo v6, "a new view holder object for the currently dragging item is assigned"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 102
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 108
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 110
    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 111
    const/4 v0, 0x3

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/e/a/a/a/b/g;->e:Lcom/e/a/a/a/b/j;

    invoke-virtual {v2, p2}, Lcom/e/a/a/a/b/j;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    or-int/lit8 v0, v0, 0x4

    .line 117
    :cond_2
    invoke-static {p1, v0}, Lcom/e/a/a/a/b/g;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 118
    invoke-super {p0, p1, v1}, Lcom/e/a/a/a/d/b;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 123
    :goto_1
    return-void

    .line 104
    :cond_3
    const-string/jumbo v0, "ARVDraggableWrapper"

    const-string/jumbo v6, "an another view holder object for the currently dragging item is assigned"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/e/a/a/a/b/g;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 121
    invoke-super {p0, p1, p2}, Lcom/e/a/a/a/d/b;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/e/a/a/a/d/b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 80
    instance-of v0, v1, Lcom/e/a/a/a/b/f;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 81
    check-cast v0, Lcom/e/a/a/a/b/f;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/e/a/a/a/b/f;->setDragStateFlags(I)V

    .line 84
    :cond_0
    return-object v1
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/e/a/a/a/b/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne p1, v0, :cond_0

    .line 284
    const-string/jumbo v0, "ARVDraggableWrapper"

    const-string/jumbo v1, "a view holder object which is bound to currently dragging item is recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e/a/a/a/b/g;->c:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 287
    iget-object v0, p0, Lcom/e/a/a/a/b/g;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->g()V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Lcom/e/a/a/a/d/b;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 292
    return-void
.end method
