.class Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector$1;
.super Ljava/lang/Object;
.source "FroyoGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;->mListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/OnGestureListener;

    .line 41
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 40
    invoke-interface {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/OnGestureListener;->onScale(FFF)V

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
