.class public abstract Lcom/e/a/a/a/c/a;
.super Ljava/lang/Object;
.source "BaseRecyclerViewEventDistributor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Landroid/support/v7/widget/RecyclerView;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Z


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/e/a/a/a/c/a;->b:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/e/a/a/a/c/a;->d:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can not be called while performing the clear() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/e/a/a/a/c/a;->a(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;I)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 103
    const-string/jumbo v0, "add()"

    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "can not specify null for the listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const-string/jumbo v0, "add()"

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/c/a;->b(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "add()"

    invoke-virtual {p0, v0}, Lcom/e/a/a/a/c/a;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/e/a/a/a/c/a;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e/a/a/a/c/a;->c:Ljava/util/List;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/c/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    if-gez p2, :cond_3

    .line 119
    iget-object v0, p0, Lcom/e/a/a/a/c/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_0
    instance-of v0, p1, Lcom/e/a/a/a/c/b;

    if-eqz v0, :cond_2

    .line 127
    check-cast p1, Lcom/e/a/a/a/c/b;

    invoke-interface {p1, p0}, Lcom/e/a/a/a/c/b;->a(Lcom/e/a/a/a/c/a;)V

    .line 131
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/e/a/a/a/c/a;->c:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/e/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can not be called after release() method called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return-void
.end method
