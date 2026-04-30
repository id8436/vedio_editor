.class Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;
.super Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field final synthetic this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1291
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    .line 1292
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V

    .line 1285
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1286
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1293
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 1297
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1298
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1299
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1300
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I

    move-result v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1301
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$102(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I

    .line 1303
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1304
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1305
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 1306
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    .line 1307
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v3, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;F)F

    .line 1318
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1307
    goto :goto_0

    .line 1309
    :cond_2
    mul-float v0, v2, v4

    .line 1310
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1311
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    neg-float v0, v0

    invoke-static {v1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1312
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    .line 1373
    return-void
.end method

.method public onUpdate(FF)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1322
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, p2

    .line 1324
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1325
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1329
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v6, v0, v6

    .line 1331
    cmpl-float v0, v6, v11

    if-nez v0, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    mul-float v7, v0, v6

    .line 1334
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    .line 1335
    iget-object v9, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v10

    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F

    move-result v0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v6, v8

    mul-float/2addr v0, v6

    add-float/2addr v0, v10

    invoke-static {v9, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;F)F

    .line 1336
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1337
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v6, v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 1338
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    int-to-float v6, v8

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    neg-int v6, v8

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    .line 1339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    .line 1340
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    invoke-static {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1335
    goto :goto_1

    .line 1345
    :cond_3
    if-eqz v5, :cond_5

    .line 1346
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    if-ne v0, v2, :cond_4

    .line 1347
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    invoke-static {v0, v6, v5, v12}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1348
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1350
    :cond_4
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1351
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1352
    iget v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v0, v7

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1353
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    :cond_5
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v0, v5, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int v4, v5, v4

    invoke-virtual {v0, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1357
    if-eqz v0, :cond_0

    .line 1358
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    if-ne v4, v2, :cond_6

    .line 1359
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    invoke-static {v2, v4, v0, v12}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->access$1800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1360
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1362
    :cond_6
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1363
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1364
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1365
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
