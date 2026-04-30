.class public Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;
.super Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/EclairGestureDetector;
.source "FroyoGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field protected final mDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;)V

    .line 55
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 56
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/EclairGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
