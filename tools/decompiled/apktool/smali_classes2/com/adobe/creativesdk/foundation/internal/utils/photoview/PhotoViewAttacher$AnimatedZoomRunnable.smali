.class Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;FFFF)V
    .locals 2

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 1032
    iput p5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 1034
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 1035
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    .line 1036
    return-void
.end method

.method private interpolate()F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1060
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1061
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1062
    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1041
    if-nez v0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v1

    .line 1046
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 1047
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    .line 1049
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->access$100(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1050
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->access$200(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V

    .line 1053
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1054
    invoke-static {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
