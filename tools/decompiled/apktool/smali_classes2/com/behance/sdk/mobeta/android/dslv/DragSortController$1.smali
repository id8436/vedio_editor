.class Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$000(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$100(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$200(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v0

    .line 452
    div-int/lit8 v0, v0, 0x5

    .line 453
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$300(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$400(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)I

    move-result v1

    neg-int v0, v0

    if-le v1, v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$200(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v0, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$102(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;Z)Z

    .line 464
    :cond_1
    return v2

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$300(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)F

    move-result v1

    neg-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$400(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortController$1;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->access$200(Lcom/behance/sdk/mobeta/android/dslv/DragSortController;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0
.end method
