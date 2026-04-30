.class Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;
.super Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;
.source "VersionedGestureDetector.java"


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mMinimumVelocity:F

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mTouchSlop:F

    .line 73
    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 94
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 95
    iget-object v2, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    .line 98
    invoke-virtual {p0, p1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    .line 99
    iput-boolean v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v2

    .line 105
    invoke-virtual {p0, p1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v3

    .line 106
    iget v4, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    sub-float v5, v3, v5

    .line 108
    iget-boolean v6, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    if-nez v6, :cond_2

    .line 111
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mTouchSlop:F

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    .line 114
    :cond_2
    iget-boolean v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mListener:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;

    invoke-interface {v0, v4, v5}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;->onDrag(FF)V

    .line 116
    iput v2, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    .line 117
    iput v3, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    .line 119
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 130
    iput-object v6, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 136
    :pswitch_3
    iget-boolean v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p0, p1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    .line 139
    invoke-virtual {p0, p1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    .line 142
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v2, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mMinimumVelocity:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mListener:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;

    iget v4, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchX:F

    iget v5, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mLastTouchY:F

    neg-float v0, v0

    neg-float v2, v2

    invoke-interface {v3, v4, v5, v0, v2}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;->onFling(FFFF)V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 158
    iput-object v6, p0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
