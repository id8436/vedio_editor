.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;
.super Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 1187
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V

    .line 1188
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1193
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1194
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->cancel()V

    .line 1206
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$302(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    .line 1203
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1204
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)V

    goto :goto_0
.end method
