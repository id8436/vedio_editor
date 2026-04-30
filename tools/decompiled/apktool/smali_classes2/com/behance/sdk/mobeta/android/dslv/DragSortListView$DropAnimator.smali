.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;
.super Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 1220
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V

    .line 1221
    return-void
.end method

.method private getTargetY()I
    .locals 4

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1234
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1235
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1236
    const/4 v0, -0x1

    .line 1237
    if-eqz v2, :cond_2

    .line 1238
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v0, v3, :cond_0

    .line 1239
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1252
    :goto_0
    return v0

    .line 1240
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ge v0, v3, :cond_1

    .line 1242
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1245
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1249
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 1226
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 1227
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$102(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    .line 1228
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1229
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1230
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1200(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    .line 1272
    return-void
.end method

.method public onUpdate(FF)V
    .locals 5

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v0

    .line 1258
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1259
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1260
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1261
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    .line 1262
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1264
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1265
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)V

    .line 1267
    :cond_1
    return-void
.end method
