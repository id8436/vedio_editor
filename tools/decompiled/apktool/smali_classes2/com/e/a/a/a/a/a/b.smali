.class public abstract Lcom/e/a/a/a/a/a/b;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/e/a/a/a/a/a/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/e/a/a/a/a/a;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/a/a;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/e/a/a/a/a/a/b;->a:Lcom/e/a/a/a/a/a;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/a/a/b;->d:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    .line 41
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 177
    if-nez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/e/a/a/a/a/a/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/e/a/a/a/a/a/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/e/a/a/a/a/a/d;-><init>(Lcom/e/a/a/a/a/a/b;Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p3, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 172
    invoke-direct {p0, p2}, Lcom/e/a/a/a/a/a/b;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 173
    invoke-virtual {p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 174
    return-void
.end method

.method public a(ZJ)V
    .locals 4

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lcom/e/a/a/a/a/a/c;

    invoke-direct {v2, p0, v1}, Lcom/e/a/a/a/a/a/c;-><init>(Lcom/e/a/a/a/a/a/b;Ljava/util/List;)V

    .line 87
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/a/a/g;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a/g;->a()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 88
    invoke-static {v0, v2, p2, p3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/a/a/g;

    .line 91
    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/a/b;->b(Lcom/e/a/a/a/a/a/g;)V

    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a;->b()Z

    move-result v0

    return v0
.end method

.method b(Lcom/e/a/a/a/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/e/a/a/a/a/a/b;->a(Lcom/e/a/a/a/a/a/g;)V

    .line 153
    return-void
.end method

.method protected abstract b(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/a/a/g;

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/e/a/a/a/a/a/b;->f(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    if-nez p1, :cond_2

    .line 117
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 119
    :cond_2
    return-void
.end method

.method protected c(Lcom/e/a/a/a/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method protected abstract c(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lcom/e/a/a/a/a/a/b;->d:Ljava/util/List;

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 63
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 61
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_4

    .line 127
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e/a/a/a/a/a/g;

    .line 132
    invoke-virtual {p0, v1, p1}, Lcom/e/a/a/a/a/a/b;->f(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    :cond_0
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    .line 137
    :cond_1
    if-nez p1, :cond_2

    .line 138
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/e/a/a/a/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 145
    :cond_4
    return-void
.end method

.method public abstract d(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public e()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/a/b;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 123
    return-void
.end method

.method protected e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/a/a;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 157
    return-void
.end method

.method public abstract e(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation
.end method

.method public f()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/a/a/b;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 149
    return-void
.end method

.method protected abstract f(Lcom/e/a/a/a/a/a/g;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")Z"
        }
    .end annotation
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/e/a/a/a/a/a/b;->a:Lcom/e/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/e/a/a/a/a/a;->a()Z

    .line 161
    return-void
.end method
