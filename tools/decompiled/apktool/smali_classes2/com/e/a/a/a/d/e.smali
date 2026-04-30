.class public Lcom/e/a/a/a/d/e;
.super Ljava/lang/Object;
.source "WrapperAdapterUtils.java"


# direct methods
.method public static a(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/e/a/a/a/d/e;->b(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    instance-of v0, p0, Lcom/e/a/a/a/d/b;

    if-eqz v0, :cond_1

    .line 30
    check-cast p0, Lcom/e/a/a/a/d/b;

    invoke-virtual {p0}, Lcom/e/a/a/a/d/b;->g()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lcom/e/a/a/a/d/e;->a(Landroid/support/v7/widget/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 42
    instance-of v0, p0, Lcom/e/a/a/a/d/b;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-object p0

    .line 46
    :cond_0
    check-cast p0, Lcom/e/a/a/a/d/b;

    .line 47
    invoke-virtual {p0}, Lcom/e/a/a/a/d/b;->g()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/e/a/a/a/d/b;->f()V

    .line 51
    invoke-static {v0}, Lcom/e/a/a/a/d/e;->b(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    goto :goto_0
.end method
