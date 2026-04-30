.class Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->access$000(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->access$000(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 206
    :cond_0
    return-void
.end method
