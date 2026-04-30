.class public abstract Lcom/e/a/a/a/a/c;
.super Lcom/e/a/a/a/a/a;
.source "GeneralItemAnimator.java"


# instance fields
.field private a:Z

.field private b:Lcom/e/a/a/a/a/a/j;

.field private c:Lcom/e/a/a/a/a/a/f;

.field private d:Lcom/e/a/a/a/a/a/h;

.field private e:Lcom/e/a/a/a/a/a/i;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/e/a/a/a/a/a;-><init>()V

    .line 40
    invoke-direct {p0}, Lcom/e/a/a/a/a/c;->g()V

    .line 41
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->c()V

    .line 46
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setup incomplete"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lcom/e/a/a/a/a/a/f;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    .line 224
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/h;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    .line 232
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/i;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    .line 240
    return-void
.end method

.method protected a(Lcom/e/a/a/a/a/a/j;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    .line 216
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string/jumbo v0, "ARVGeneralItemAnimator"

    const-string/jumbo v1, "dispatchFinishedWhenDone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/e/a/a/a/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "ARVGeneralItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateAdd(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/f;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 7

    .prologue
    .line 95
    if-ne p1, p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/e/a/a/a/a/a/i;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_1

    .line 103
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 104
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 105
    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 106
    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_4
    const-string/jumbo v4, "ARVGeneralItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "animateChange(old.id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", old.position = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", new.id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new.position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", toY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/e/a/a/a/a/a/h;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    goto/16 :goto_0

    .line 103
    :cond_2
    const-string/jumbo v0, "-"

    move-object v3, v0

    goto/16 :goto_1

    .line 104
    :cond_3
    const-string/jumbo v0, "-"

    move-object v2, v0

    goto/16 :goto_2

    .line 105
    :cond_4
    const-string/jumbo v0, "-"

    move-object v1, v0

    goto/16 :goto_3

    .line 106
    :cond_5
    const-string/jumbo v0, "-"

    goto/16 :goto_4
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 6

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v0, "ARVGeneralItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateMove(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fromX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", fromY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", toX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", toY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/e/a/a/a/a/a/i;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "ARVGeneralItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "animateRemove(id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/j;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    return v0
.end method

.method protected abstract c()V
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    .line 205
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    .line 206
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    .line 207
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->f()V

    .line 256
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/c;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 125
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/i;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 126
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/h;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 127
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/j;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 128
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/f;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 130
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/i;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 131
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/h;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 132
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/j;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 133
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/f;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 136
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/j;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "after animation is cancelled, item should not be in the active animation list [remove]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/f;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "after animation is cancelled, item should not be in the active animation list [add]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/h;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "after animation is cancelled, item should not be in the active animation list [change]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a/i;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/e/a/a/a/a/c;->a:Z

    if-eqz v0, :cond_3

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "after animation is cancelled, item should not be in the active animation list [move]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->a()Z

    .line 153
    return-void
.end method

.method public endAnimations()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/i;->e()V

    .line 167
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/j;->e()V

    .line 168
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/f;->e()V

    .line 169
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/h;->e()V

    .line 171
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/i;->f()V

    .line 177
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/f;->f()V

    .line 178
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/h;->f()V

    .line 181
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/j;->d()V

    .line 182
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/i;->d()V

    .line 183
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/f;->d()V

    .line 184
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/h;->d()V

    .line 186
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->dispatchAnimationsFinished()V

    goto :goto_0
.end method

.method protected f()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 260
    iget-object v1, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v1}, Lcom/e/a/a/a/a/a/j;->b()Z

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v2}, Lcom/e/a/a/a/a/a/i;->b()Z

    move-result v10

    .line 262
    iget-object v2, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v2}, Lcom/e/a/a/a/a/a/h;->b()Z

    move-result v11

    .line 263
    iget-object v2, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v2}, Lcom/e/a/a/a/a/a/f;->b()Z

    move-result v12

    .line 265
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->getRemoveDuration()J

    move-result-wide v2

    move-wide v8, v2

    .line 266
    :goto_0
    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->getMoveDuration()J

    move-result-wide v2

    move-wide v6, v2

    .line 267
    :goto_1
    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->getChangeDuration()J

    move-result-wide v2

    .line 269
    :goto_2
    if-eqz v1, :cond_0

    .line 270
    iget-object v13, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v13, v0, v4, v5}, Lcom/e/a/a/a/a/a/j;->a(ZJ)V

    .line 273
    :cond_0
    if-eqz v10, :cond_1

    .line 276
    iget-object v13, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    invoke-virtual {v13, v1, v8, v9}, Lcom/e/a/a/a/a/a/i;->a(ZJ)V

    .line 279
    :cond_1
    if-eqz v11, :cond_2

    .line 282
    iget-object v13, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    invoke-virtual {v13, v1, v8, v9}, Lcom/e/a/a/a/a/a/h;->a(ZJ)V

    .line 285
    :cond_2
    if-eqz v12, :cond_5

    .line 286
    if-nez v1, :cond_3

    if-nez v10, :cond_3

    if-eqz v11, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 287
    :cond_4
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long/2addr v2, v8

    .line 288
    if-eqz v0, :cond_9

    .line 289
    :goto_3
    iget-object v1, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    invoke-virtual {v1, v0, v2, v3}, Lcom/e/a/a/a/a/a/f;->a(ZJ)V

    .line 291
    :cond_5
    return-void

    :cond_6
    move-wide v8, v4

    .line 265
    goto :goto_0

    :cond_7
    move-wide v6, v4

    .line 266
    goto :goto_1

    :cond_8
    move-wide v2, v4

    .line 267
    goto :goto_2

    :cond_9
    move-wide v2, v4

    .line 288
    goto :goto_3
.end method

.method protected g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 117
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/e/a/a/a/a/c;->b:Lcom/e/a/a/a/a/a/j;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->c:Lcom/e/a/a/a/a/a/f;

    .line 158
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->d:Lcom/e/a/a/a/a/a/h;

    .line 159
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/c;->e:Lcom/e/a/a/a/a/a/i;

    .line 160
    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/a/a/a/c;->e()V

    goto :goto_0
.end method
