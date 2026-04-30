.class Lcom/e/a/a/a/b/m;
.super Ljava/lang/Object;
.source "RecyclerViewDragDropManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field final synthetic a:Lcom/e/a/a/a/b/l;


# direct methods
.method constructor <init>(Lcom/e/a/a/a/b/l;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/e/a/a/a/b/m;->a:Lcom/e/a/a/a/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/e/a/a/a/b/m;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, p1, p2}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/e/a/a/a/b/m;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, p1}, Lcom/e/a/a/a/b/l;->c(Z)V

    .line 180
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/e/a/a/a/b/m;->a:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, p1, p2}, Lcom/e/a/a/a/b/l;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 175
    return-void
.end method
