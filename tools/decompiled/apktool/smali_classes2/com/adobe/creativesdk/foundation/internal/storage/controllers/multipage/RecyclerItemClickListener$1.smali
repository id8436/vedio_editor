.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerItemClickListener$OnItemClickListener;->onItemLongClick(Landroid/view/View;I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
