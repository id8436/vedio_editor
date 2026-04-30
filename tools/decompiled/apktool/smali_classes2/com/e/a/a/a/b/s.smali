.class Lcom/e/a/a/a/b/s;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/e/a/a/a/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/e/a/a/a/b/l;)V
    .locals 1

    .prologue
    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1512
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/e/a/a/a/b/s;->a:Ljava/lang/ref/WeakReference;

    .line 1513
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/e/a/a/a/b/s;->b:Z

    if-eqz v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/e/a/a/a/b/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/b/l;

    .line 1522
    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 1528
    if-eqz v0, :cond_0

    .line 1532
    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e/a/a/a/b/s;->b:Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/e/a/a/a/b/s;->b:Z

    if-nez v0, :cond_0

    .line 1543
    :goto_0
    return-void

    .line 1542
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/a/a/b/s;->b:Z

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/e/a/a/a/b/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/a/a/b/s;->b:Z

    .line 1548
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/e/a/a/a/b/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/e/a/a/a/b/l;

    .line 1554
    if-nez v0, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    iget-boolean v1, p0, Lcom/e/a/a/a/b/s;->b:Z

    if-eqz v1, :cond_0

    .line 1563
    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->e()V

    .line 1566
    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 1568
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/e/a/a/a/b/s;->b:Z

    if-eqz v1, :cond_2

    .line 1569
    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1571
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e/a/a/a/b/s;->b:Z

    goto :goto_0
.end method
