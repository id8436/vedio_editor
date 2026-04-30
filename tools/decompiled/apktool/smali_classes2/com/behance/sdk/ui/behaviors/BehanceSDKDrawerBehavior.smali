.class public Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BehanceSDKDrawerBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field private drawerMinHeight:I

.field private mActivePointerId:I

.field private mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field private mMaxOffset:I

.field private mMaximumVelocity:F

.field private mMinOffset:I

.field private mNestedScrolled:Z

.field private mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHeight:I

.field private mPeekHeight:I

.field private mPeekHeightAuto:Z

.field private mSkipCollapsed:Z

.field private mState:I

.field private mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field

.field private scrollingChildId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->scrollingChildId:I

    .line 531
    new-instance v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;-><init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->scrollingChildId:I

    .line 531
    new-instance v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$2;-><init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 134
    sget-object v0, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKUIUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->drawerMinHeight:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->drawerMinHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setPeekHeight(I)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setSkipCollapsed(Z)V

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaximumVelocity:F

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    return v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mTouchingScrollingChild:Z

    return v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    return v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method private findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 497
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->scrollingChildId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->scrollingChildId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-object p1

    .line 500
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 501
    check-cast p1, Landroid/view/ViewGroup;

    .line 502
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 503
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 505
    goto :goto_0

    .line 502
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 509
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/view/View;)Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 677
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-nez v1, :cond_0

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The view is not a child of CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 681
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 682
    instance-of v1, v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    if-nez v1, :cond_1

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    check-cast v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;

    return-object v0
.end method

.method private getYVelocity()F
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 513
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mActivePointerId:I

    .line 480
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 484
    :cond_0
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .locals 5

    .prologue
    .line 613
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 614
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 615
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    if-le p1, v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    iget v4, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    iget v4, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public final getPeekHeight()I
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeightAuto:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeight:I

    goto :goto_0
.end method

.method public getSkipCollapsed()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mSkipCollapsed:Z

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iput-boolean v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    .line 243
    :goto_0
    return v2

    .line 204
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 206
    if-nez v3, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->reset()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 210
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 213
    packed-switch v3, :pswitch_data_0

    .line 236
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 237
    goto :goto_0

    .line 216
    :pswitch_1
    iput-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mTouchingScrollingChild:Z

    .line 217
    iput v6, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mActivePointerId:I

    .line 219
    iget-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    if-eqz v0, :cond_3

    .line 220
    iput-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    goto :goto_0

    .line 225
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 226
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mInitialY:I

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 228
    if-eqz v0, :cond_4

    iget v5, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mInitialY:I

    invoke-virtual {p1, v0, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mActivePointerId:I

    .line 230
    iput-boolean v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mTouchingScrollingChild:Z

    .line 232
    :cond_4
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mActivePointerId:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mInitialY:I

    .line 233
    invoke-virtual {p1, p2, v4, v0}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 243
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_7

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    if-eq v3, v1, :cond_7

    .line 245
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mInitialY:I

    int-to-float v0, v0

    .line 246
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    :goto_3
    move v2, v1

    .line 243
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 246
    goto :goto_3

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 159
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {p2, v5}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 164
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 166
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->drawerMinHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    .line 167
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeight:I

    .line 168
    const/4 v2, 0x0

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    .line 169
    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    .line 170
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 171
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 182
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 184
    return v5

    .line 172
    :cond_3
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 173
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 174
    :cond_4
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 175
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 176
    :cond_5
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 177
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 284
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 285
    if-eq p3, v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 289
    sub-int/2addr v0, p5

    .line 290
    if-lez p5, :cond_3

    .line 292
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    aput p5, p6, v2

    .line 294
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt v0, p5, :cond_2

    neg-int v0, p5

    :goto_1
    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 295
    invoke-virtual {p0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    .line 306
    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->dispatchOnSlide(I)V

    .line 307
    iput p5, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mLastNestedScrollDy:I

    .line 308
    iput-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    goto :goto_1

    .line 297
    :cond_3
    if-gez p5, :cond_1

    .line 298
    const/4 v1, -0x1

    invoke-static {p3, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    if-gt v0, v1, :cond_1

    .line 300
    aput p5, p6, v2

    .line 301
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 302
    invoke-virtual {p0, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    check-cast p3, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;

    .line 149
    invoke-virtual {p3}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 151
    iget v0, p3, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p3, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;->state:I

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mLastNestedScrollDy:I

    .line 279
    iput-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrolled:Z

    .line 280
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 312
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    if-ne v2, v3, :cond_1

    .line 313
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p3, v2, :cond_0

    iget-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrolled:Z

    if-eqz v2, :cond_0

    .line 321
    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mLastNestedScrollDy:I

    if-nez v2, :cond_3

    .line 322
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 323
    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 324
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    .line 345
    :goto_1
    iget-object v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 346
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    .line 347
    new-instance v1, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;

    invoke-direct {v1, p0, p2, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;-><init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;Landroid/view/View;I)V

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 351
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 327
    :cond_2
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 328
    goto :goto_1

    .line 331
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mLastNestedScrollDy:I

    if-gez v2, :cond_4

    .line 333
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    .line 334
    const/4 v0, 0x5

    goto :goto_1

    .line 335
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    if-ge v2, v3, :cond_5

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mLastNestedScrollDy:I

    if-lez v2, :cond_5

    .line 337
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    goto :goto_1

    .line 341
    :cond_5
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 342
    goto :goto_1

    .line 349
    :cond_6
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 254
    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    if-ne v3, v0, :cond_2

    if-eqz v2, :cond_0

    .line 257
    :cond_2
    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 259
    if-nez v2, :cond_3

    .line 260
    invoke-direct {p0}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->reset()V

    .line 262
    :cond_3
    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4

    .line 263
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    if-nez v2, :cond_5

    .line 269
    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mInitialY:I

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 273
    :cond_5
    iget-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mIgnoreEvents:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setBottomSheetCallback(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

    .line 422
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 366
    .line 367
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 368
    iget-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_3

    .line 369
    iput-boolean v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeightAuto:Z

    .line 378
    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 384
    :cond_0
    return-void

    .line 372
    :cond_1
    iget-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeight:I

    if-eq v2, p1, :cond_3

    .line 373
    :cond_2
    iput-boolean v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeightAuto:Z

    .line 374
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeight:I

    .line 375
    iget v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setScrollingChild(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 193
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->scrollingChildId:I

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 197
    :cond_0
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mSkipCollapsed:Z

    .line 404
    return-void
.end method

.method public final setState(I)V
    .locals 2

    .prologue
    .line 431
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    if-ne p1, v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 436
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 437
    :cond_2
    iput p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 442
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 448
    new-instance v1, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$1;-><init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    goto :goto_0
.end method

.method setStateInternal(I)V
    .locals 2

    .prologue
    .line 469
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    if-ne v0, p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iput p1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mState:I

    .line 473
    iget-object v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 474
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mCallback:Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 486
    iget-boolean v2, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mSkipCollapsed:Z

    if-eqz v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 491
    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 494
    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mPeekHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method startSettlingAnimation(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 517
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 518
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMaxOffset:I

    .line 526
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->setStateInternal(I)V

    .line 527
    iget-object v1, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior$SettleRunnable;-><init>(Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;Landroid/view/View;I)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 530
    :cond_0
    return-void

    .line 519
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 520
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mMinOffset:I

    goto :goto_0

    .line 521
    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    .line 522
    iget v0, p0, Lcom/behance/sdk/ui/behaviors/BehanceSDKDrawerBehavior;->mParentHeight:I

    goto :goto_0

    .line 524
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal state argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
