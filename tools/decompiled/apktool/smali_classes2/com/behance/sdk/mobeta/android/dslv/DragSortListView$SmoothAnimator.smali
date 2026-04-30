.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1119
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1120
    iput p2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    .line 1121
    int-to-float v0, p3

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    .line 1122
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mA:F

    .line 1123
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mB:F

    .line 1124
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mC:F

    .line 1125
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1146
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1150
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1158
    return-void
.end method

.method public onUpdate(FF)V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1162
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1166
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mDurationF:F

    div-float/2addr v0, v1

    .line 1168
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1

    .line 1169
    invoke-virtual {p0, v4, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1170
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onStop()V

    goto :goto_0

    .line 1172
    :cond_1
    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 1173
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mStartTime:J

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 1140
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->onStart()V

    .line 1141
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 1142
    return-void
.end method

.method public transform(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1128
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1129
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 1133
    :goto_0
    return v0

    .line 1130
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1131
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1133
    :cond_1
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
