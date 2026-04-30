.class Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

.field final synthetic this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 850
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    invoke-static {p2}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;->getScroller(Landroid/content/Context;)Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    .line 852
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .prologue
    .line 855
    sget-boolean v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 856
    const-string/jumbo v0, "PhotoViewAttacher"

    const-string/jumbo v1, "Cancel Fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;->forceFinished(Z)V

    .line 859
    return-void
.end method

.method public fling(IIII)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 862
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 863
    if-nez v0, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 870
    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 872
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v9

    .line 877
    :goto_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 878
    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 880
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v7, v9

    .line 885
    :goto_2
    iput v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 886
    iput v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 888
    sget-boolean v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 889
    const-string/jumbo v0, "PhotoViewAttacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fling. StartX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " StartY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MaxX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MaxY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_2
    if-ne v1, v6, :cond_3

    if-eq v2, v8, :cond_0

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    move v3, p3

    move v4, p4

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;->fling(IIIIIIIIII)V

    goto/16 :goto_0

    :cond_4
    move v6, v1

    move v5, v1

    .line 874
    goto :goto_1

    :cond_5
    move v8, v2

    move v7, v2

    .line 882
    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    .line 900
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    invoke-virtual {v1}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    invoke-virtual {v1}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;->getCurrX()I

    move-result v1

    .line 904
    iget-object v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/behance/sdk/senab/photoview/ScrollerProxy;

    invoke-virtual {v2}, Lcom/behance/sdk/senab/photoview/ScrollerProxy;->getCurrY()I

    move-result v2

    .line 906
    sget-boolean v3, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 907
    const-string/jumbo v3, "PhotoViewAttacher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fling run(). CurrentX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CurrentY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NewX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " NewY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iget-object v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$200(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 912
    iget-object v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    iget-object v4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$400(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 914
    iput v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 915
    iput v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 918
    invoke-static {v0, p0}, Lcom/behance/sdk/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 920
    :cond_1
    return-void
.end method
