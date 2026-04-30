.class public Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoView;
.implements Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/OnGestureListener;


# static fields
.field private static final DEBUG:Z

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

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

.field private mMatrixChangeListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleDragDetector:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

.field private mZoomEnabled:Z

.field private mZoomFocusX:F

.field private mZoomFocusY:F

.field private mZoomScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->DEBUG:Z

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0xc8

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 68
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    .line 69
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMidScale:F

    .line 70
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 72
    iput-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 75
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomScale:F

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusX:F

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusY:F

    .line 158
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 159
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 160
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 161
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 162
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 175
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 180
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 181
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 190
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    invoke-static {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/OnGestureListener;)Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

    .line 197
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 209
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 212
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    .line 721
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 730
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 2

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 740
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 748
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 749
    if-nez v4, :cond_0

    move v0, v2

    .line 806
    :goto_0
    return v0

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v5

    .line 754
    if-nez v5, :cond_1

    move v0, v2

    .line 755
    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 761
    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v7

    .line 762
    int-to-float v8, v7

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_2

    .line 763
    sget-object v8, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 771
    int-to-float v7, v7

    sub-float v0, v7, v0

    div-float/2addr v0, v10

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    .line 780
    :goto_1
    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v4

    .line 781
    int-to-float v7, v4

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    .line 782
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 790
    int-to-float v1, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v10

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 793
    :goto_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 805
    :goto_3
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v0, v3

    .line 806
    goto :goto_0

    .line 765
    :pswitch_0
    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 766
    goto :goto_1

    .line 768
    :pswitch_1
    int-to-float v7, v7

    sub-float v0, v7, v0

    iget v7, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v7

    .line 769
    goto :goto_1

    .line 774
    :cond_2
    iget v0, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 775
    iget v0, v5, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 776
    :cond_3
    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v7

    cmpg-float v0, v0, v8

    if-gez v0, :cond_7

    .line 777
    int-to-float v0, v7

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v7

    goto :goto_1

    .line 784
    :pswitch_2
    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    .line 785
    goto :goto_2

    .line 787
    :pswitch_3
    int-to-float v1, v4

    sub-float/2addr v1, v6

    iget v2, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 788
    goto :goto_2

    .line 794
    :cond_4
    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_5

    .line 795
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 796
    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_3

    .line 797
    :cond_5
    iget v2, v5, Landroid/graphics/RectF;->right:F

    int-to-float v6, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_6

    .line 798
    int-to-float v1, v4

    iget v2, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 799
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 801
    :cond_6
    const/4 v2, -0x1

    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 782
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2

    .prologue
    .line 102
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 816
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_0

    .line 821
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 822
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 821
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 823
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 824
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 827
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 961
    if-nez p1, :cond_0

    .line 962
    const/4 v0, 0x0

    .line 963
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 955
    if-nez p1, :cond_0

    .line 956
    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 856
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1

    .prologue
    .line 115
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
    .line 122
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 126
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 128
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

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 4

    .prologue
    .line 863
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 864
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomScale:F

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusX:F

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusY:F

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 865
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 866
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 867
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 874
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 877
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 878
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_0

    .line 880
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 884
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 144
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 892
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 898
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 899
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 900
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 902
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 904
    int-to-float v4, v2

    div-float v4, v1, v4

    .line 905
    int-to-float v5, v3

    div-float v5, v0, v5

    .line 907
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    .line 908
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 950
    :goto_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 911
    :cond_2
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    .line 912
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 913
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 914
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

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

    .line 917
    :cond_3
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    .line 918
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 919
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 920
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

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

    .line 924
    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 925
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 927
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 934
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 929
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 930
    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 938
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 942
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 927
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 243
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 246
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 248
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 254
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 257
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->cancelFling()V

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v4}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 265
    :cond_3
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 266
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 267
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 270
    iput-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 250
    :cond_4
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 707
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 276
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 712
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 713
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoView;
    .locals 0

    .prologue
    .line 844
    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 327
    :cond_0
    if-nez v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->cleanup()V

    .line 329
    const-string/jumbo v1, "PhotoViewAttacher"

    const-string/jumbo v2, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 371
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 832
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getZoomDelegate()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    return-object v0
.end method

.method public getZoomFocusX()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusX:F

    return v0
.end method

.method public getZoomFocusY()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusY:F

    return v0
.end method

.method public onDrag(FF)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 381
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 386
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/LogManager;->getLogger()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "PhotoViewAttacher"

    const-string/jumbo v2, "onDrag: dx: %.2f. dy: %.2f"

    new-array v3, v7, [Ljava/lang/Object;

    .line 387
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 392
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 403
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 404
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_5

    .line 405
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v1, v5, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 408
    :cond_4
    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 411
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;->signalDragDetected(FF)V

    goto :goto_0

    .line 416
    :cond_5
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6

    .prologue
    .line 425
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/LogManager;->getLogger()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "PhotoViewAttacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFling. sX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Vx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Vy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 432
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    .line 433
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    .line 434
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    .line 433
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 435
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    .line 443
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_2

    .line 444
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 445
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 446
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 447
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 456
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v2, v5, :cond_1

    .line 459
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvTop:I

    .line 463
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvRight:I

    .line 464
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 465
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 476
    const-string/jumbo v0, "PhotoView.Scale"

    const-string/jumbo v1, "in onScale with scaleFactor %f"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/LogManager;->getLogger()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "PhotoViewAttacher"

    const-string/jumbo v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 481
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 480
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 486
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;->signalZoomHandled(FFF)V

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 491
    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 495
    const/4 v1, 0x0

    .line 497
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 529
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;

    .line 530
    invoke-interface {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 543
    :cond_2
    :goto_1
    return v0

    .line 503
    :pswitch_1
    if-eqz v0, :cond_3

    .line 504
    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 510
    :goto_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->cancelFling()V

    move v0, v1

    .line 511
    goto :goto_0

    .line 506
    :cond_3
    const-string/jumbo v0, "PhotoViewAttacher"

    const-string/jumbo v2, "onTouch getParent() returned null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 517
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v5

    .line 519
    if-eqz v5, :cond_0

    .line 520
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    .line 521
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;FFFF)V

    .line 520
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 522
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 499
    nop

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
    .line 548
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 549
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Matrix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 285
    if-nez v1, :cond_2

    .line 295
    :cond_1
    :goto_0
    return v0

    .line 288
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 292
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 293
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 579
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2

    .prologue
    .line 583
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 584
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 585
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .prologue
    .line 571
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 572
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMidScale:F

    .line 573
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 567
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 555
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .prologue
    .line 559
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 560
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    .line 561
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 590
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 595
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 600
    return-void
.end method

.method public setOnViewTapListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 610
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 304
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 305
    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 316
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 317
    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 311
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 622
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 644
    if-eqz v6, :cond_2

    .line 646
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 648
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/LogManager;->getLogger()Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "PhotoViewAttacher"

    const-string/jumbo v2, "Scale must be within the range of minScale and maxScale"

    .line 649
    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 653
    iget p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 654
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 655
    iget p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mMinScale:F

    move v3, p1

    .line 661
    :goto_0
    if-eqz p4, :cond_3

    .line 662
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 670
    :cond_2
    :goto_1
    return-void

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 666
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomScale:F

    .line 667
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_1

    :cond_4
    move v3, p1

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 2

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 633
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 631
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 636
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 674
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 675
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 678
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->update()V

    .line 680
    :cond_0
    return-void
.end method

.method public setZoomDelegate(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomDelegate:Lcom/adobe/creativesdk/foundation/internal/utils/photoview/IPhotoViewZoomDelegate;

    .line 79
    return-void
.end method

.method public setZoomFocusX(F)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusX:F

    .line 87
    return-void
.end method

.method public setZoomFocusY(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomFocusY:F

    .line 95
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    .prologue
    .line 837
    if-gez p1, :cond_0

    .line 838
    const/16 p1, 0xc8

    .line 839
    :cond_0
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 840
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 685
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->update()V

    .line 686
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 694
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 697
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method
