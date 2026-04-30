.class Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final ANIMATION_SCALE_PER_ITERATION_IN:F = 1.07f

.field static final ANIMATION_SCALE_PER_ITERATION_OUT:F = 0.93f


# instance fields
.field private final mDeltaScale:F

.field private final mFocalX:F

.field private final mFocalY:F

.field private final mTargetZoom:F

.field final synthetic this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;FFFF)V
    .locals 1

    .prologue
    .line 807
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput p3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    .line 809
    iput p4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 810
    iput p5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 812
    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    .line 813
    const v0, 0x3f88f5c3    # 1.07f

    iput v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    const v0, 0x3f6e147b    # 0.93f

    iput v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 820
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_2

    .line 823
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$200(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    iget v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    iget v4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 824
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$300(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)V

    .line 826
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 828
    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mDeltaScale:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 832
    :cond_1
    invoke-static {v0, p0}, Lcom/behance/sdk/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 842
    :cond_2
    :goto_0
    return-void

    .line 837
    :cond_3
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mTargetZoom:F

    div-float/2addr v0, v1

    .line 838
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$200(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 839
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->access$300(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)V

    goto :goto_0
.end method
