.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$2;
.super Ljava/lang/Object;
.source "RecyclerListTouchListener.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/RecyclerListTouchListener$OnTouchListener;->performAction()V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
