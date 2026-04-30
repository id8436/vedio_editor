.class Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$000(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$000(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$100(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 162
    :cond_0
    return-void
.end method
