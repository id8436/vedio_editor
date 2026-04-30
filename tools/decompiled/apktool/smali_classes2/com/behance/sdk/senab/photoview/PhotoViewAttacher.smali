.class public Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/behance/sdk/senab/photoview/IPhotoView;
.implements Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;


# static fields
.field static final DEBUG:Z

.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 0.3f

.field public static final DEFAULT_NO_SCALE:F = 1.0f

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleDragDetector:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mZoomEnabled:Z

.field private zoomEventLoggedForAnalytics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 55
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 56
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 58
    iput-boolean v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->zoomEventLoggedForAnalytics:Z

    .line 119
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 120
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 123
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 133
    const/4 v0, 0x2

    iput v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 136
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 141
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 144
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    invoke-static {p1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 149
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;)Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;

    .line 153
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$1;-><init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 164
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 167
    invoke-virtual {p0, v3}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 528
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()V

    .line 535
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 536
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/behance/sdk/senab/photoview/PhotoView;

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 555
    if-nez v2, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    .line 560
    if-eqz v3, :cond_0

    .line 564
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 567
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    .line 568
    int-to-float v6, v5

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_2

    .line 569
    sget-object v6, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v7, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 577
    int-to-float v5, v5

    sub-float v0, v5, v0

    div-float/2addr v0, v8

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v5

    .line 586
    :goto_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 587
    int-to-float v5, v2

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    .line 588
    sget-object v1, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    .line 596
    int-to-float v1, v2

    sub-float/2addr v1, v4

    div-float/2addr v1, v8

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 599
    :goto_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 611
    :goto_3
    iget-object v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 571
    :pswitch_0
    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 572
    goto :goto_1

    .line 574
    :pswitch_1
    int-to-float v5, v5

    sub-float v0, v5, v0

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v5

    .line 575
    goto :goto_1

    .line 580
    :cond_2
    iget v0, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 581
    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 582
    :cond_3
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v5

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    .line 583
    int-to-float v0, v5

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v5

    goto :goto_1

    .line 590
    :pswitch_2
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    .line 591
    goto :goto_2

    .line 593
    :pswitch_3
    int-to-float v1, v2

    sub-float/2addr v1, v4

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 594
    goto :goto_2

    .line 600
    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    .line 601
    const/4 v1, 0x0

    iput v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 602
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_3

    .line 603
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 604
    int-to-float v1, v2

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 605
    const/4 v2, 0x1

    iput v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 607
    :cond_6
    const/4 v2, -0x1

    iput v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 588
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2

    .prologue
    .line 63
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MinZoom should be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MidZoom should be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 621
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 627
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 628
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 631
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 643
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 85
    :cond_0
    sget-object v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 651
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 652
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()V

    .line 653
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 660
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 663
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0, p1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v1, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 670
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    instance-of v0, p0, Lcom/behance/sdk/senab/photoview/PhotoView;

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 678
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 684
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 685
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 686
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 688
    iget-object v4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 690
    int-to-float v4, v2

    div-float v4, v1, v4

    .line 691
    int-to-float v5, v3

    div-float v5, v0, v5

    .line 693
    iget-object v6, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    .line 694
    iget-object v4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 734
    :goto_1
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 696
    :cond_2
    iget-object v6, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    .line 697
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 698
    iget-object v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 699
    iget-object v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 702
    :cond_3
    iget-object v6, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    .line 703
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 704
    iget-object v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 705
    iget-object v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 709
    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 710
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 712
    sget-object v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 718
    :pswitch_0
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 714
    :pswitch_1
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 722
    :pswitch_2
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 726
    :pswitch_3
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 712
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final canZoom()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public final cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 187
    :cond_0
    iput-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 190
    iput-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 191
    iput-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 192
    iput-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 195
    iput-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 196
    return-void
.end method

.method protected getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 519
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 520
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkMatrixBounds()V

    .line 201
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    :cond_0
    if-nez v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 214
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v2, "PhotoViewAttacher"

    const-string/jumbo v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 253
    iget v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 254
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->zoomTo(FFF)V

    .line 264
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_0
    iget v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 256
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->zoomTo(FFF)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0

    .line 258
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->zoomTo(FFF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public final onDrag(FF)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    sget-boolean v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 274
    const-string/jumbo v0, "PhotoViewAttacher"

    const-string/jumbo v1, "onDrag: dx: %.2f. dy: %.2f"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 281
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 292
    iget-boolean v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;

    invoke-virtual {v1}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v1, v5, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    .line 295
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 299
    :cond_3
    return-void
.end method

.method public final onFling(FFFF)V
    .locals 6

    .prologue
    .line 303
    sget-boolean v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    const-string/jumbo v0, "PhotoViewAttacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFling. sX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Vx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Vy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    new-instance v1, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 310
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 311
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 313
    :cond_1
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 6

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 321
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 322
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 323
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 332
    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v2, v5, :cond_1

    .line 334
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iput v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvTop:I

    .line 338
    iput v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvRight:I

    .line 339
    iput v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 340
    iput v4, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 343
    :cond_1
    return-void
.end method

.method public final onScale(FFF)V
    .locals 5

    .prologue
    .line 346
    sget-boolean v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 347
    const-string/jumbo v0, "PhotoViewAttacher"

    const-string/jumbo v1, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 352
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 354
    :cond_2
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_1

    .line 360
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v2, v4

    .line 370
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v1, v3, v1

    .line 372
    iget-object v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    invoke-interface {v3, v0, v2, v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 373
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    .line 382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 387
    const/4 v0, 0x0

    .line 389
    iget-boolean v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_2

    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;

    invoke-virtual {v1, p2}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 426
    :cond_2
    return v0

    .line 394
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 398
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    iget v2, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 407
    if-eqz v1, :cond_0

    .line 408
    new-instance v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    iget v3, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 409
    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 432
    return-void
.end method

.method public setMaxScale(F)V
    .locals 2

    .prologue
    .line 448
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 449
    iput p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 450
    return-void
.end method

.method public setMidScale(F)V
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 443
    iput p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    .line 444
    return-void
.end method

.method public setMinScale(F)V
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 437
    iput p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMinScale:F

    .line 438
    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 455
    return-void
.end method

.method public final setOnMatrixChangeListener(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 460
    return-void
.end method

.method public final setOnPhotoTapListener(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 465
    return-void
.end method

.method public final setOnViewTapListener(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 470
    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 474
    invoke-static {p1}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 475
    iput-object p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 478
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->update()V

    .line 480
    :cond_0
    return-void
.end method

.method public final setZoomable(Z)V
    .locals 0

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 485
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->update()V

    .line 486
    return-void
.end method

.method public final update()V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    .line 492
    iget-boolean v1, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 494
    invoke-static {v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 497
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method

.method public final zoomTo(FFF)V
    .locals 7

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 509
    if-eqz v6, :cond_0

    .line 510
    new-instance v0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->zoomEventLoggedForAnalytics:Z

    if-nez v0, :cond_1

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/senab/photoview/PhotoViewAttacher;->zoomEventLoggedForAnalytics:Z

    .line 515
    :cond_1
    return-void
.end method
