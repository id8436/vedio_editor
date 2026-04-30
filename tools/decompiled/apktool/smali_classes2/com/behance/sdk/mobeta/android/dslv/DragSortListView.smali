.class public Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastY:I

.field private mLiftAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRemoveAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    .line 425
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 80
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 90
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 101
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 102
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 127
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 171
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 182
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 189
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 205
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 211
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 223
    const v2, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 230
    const v2, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 254
    const/high16 v2, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 262
    new-instance v2, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 316
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 359
    const/high16 v2, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 368
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 381
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 391
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 398
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 412
    new-instance v2, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 421
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 427
    const/16 v3, 0x96

    .line 431
    if-eqz p2, :cond_5

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/behance/sdk/R$styleable;->DragSortListView:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 435
    const/4 v2, 0x1

    sget v4, Lcom/behance/sdk/R$styleable;->DragSortListView_collapsed_height:I

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 438
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_track_drag_sort:I

    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 441
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v2, :cond_0

    .line 442
    new-instance v2, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;

    .line 446
    :cond_0
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_float_alpha:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 447
    move-object/from16 v0, p0

    iget v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 449
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_drag_enabled:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 451
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, Lcom/behance/sdk/R$styleable;->DragSortListView_slide_shuffle_speed:I

    const/high16 v7, 0x3f400000    # 0.75f

    .line 452
    invoke-virtual {v11, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 451
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 458
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_drag_scroll_start:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 464
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_max_drag_scroll_speed:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 468
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_remove_animation_duration:I

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 472
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_drop_animation_duration:I

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 476
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_use_default_controller:I

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 480
    if-eqz v2, :cond_1

    .line 481
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_remove_enabled:I

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 484
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_remove_mode:I

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 487
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_sort_enabled:I

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 490
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_drag_start_mode:I

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 493
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_drag_handle_id:I

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 496
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_fling_handle_id:I

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 499
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_click_remove_id:I

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 502
    sget v2, Lcom/behance/sdk/R$styleable;->DragSortListView_float_background_color:I

    const/high16 v3, -0x1000000

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 506
    new-instance v2, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;IIIII)V

    .line 509
    invoke-virtual {v2, v12}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 510
    invoke-virtual {v2, v13}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 511
    invoke-virtual {v2, v14}, Lcom/behance/sdk/mobeta/android/dslv/DragSortController;->setBackgroundColor(I)V

    .line 513
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v9

    move v3, v10

    .line 520
    :goto_1
    new-instance v4, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 522
    const/high16 v4, 0x3f000000    # 0.5f

    .line 523
    if-lez v3, :cond_2

    .line 524
    new-instance v5, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    .line 527
    :cond_2
    if-lez v2, :cond_3

    .line 528
    new-instance v3, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;

    .line 531
    :cond_3
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 535
    new-instance v2, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 552
    return-void

    .line 456
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$102(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;F)F
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$2100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$2200(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2602(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$302(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3100(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;II)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1829
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1830
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1832
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1833
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1835
    :goto_0
    if-gt v0, v2, :cond_1

    .line 1836
    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1837
    if-eqz v3, :cond_0

    .line 1838
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1841
    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1850
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1852
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v0, :cond_5

    .line 1853
    const/4 v0, -0x2

    .line 1858
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    .line 1859
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1860
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1864
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_2

    .line 1865
    :cond_1
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    .line 1866
    check-cast v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortItemView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1874
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1875
    const/4 v0, 0x0

    .line 1877
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1878
    const/4 v0, 0x4

    .line 1881
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1882
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1884
    :cond_4
    return-void

    .line 1855
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1867
    :cond_6
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    .line 1868
    check-cast v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortItemView;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1525
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1527
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v2, v1, :cond_1

    .line 1530
    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1532
    if-eqz v2, :cond_0

    .line 1533
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1536
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1538
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 8

    .prologue
    .line 2016
    const/4 v4, 0x0

    .line 2018
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 2020
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2021
    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 2025
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_7

    .line 2026
    sub-int v2, v3, v0

    .line 2027
    sub-int v0, v1, v0

    .line 2030
    :goto_0
    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2031
    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v6, v7, :cond_0

    .line 2032
    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v5, v6

    .line 2035
    :cond_0
    if-gt p1, p3, :cond_1

    .line 2036
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v1, :cond_6

    .line 2037
    sub-int v0, v5, v0

    add-int/2addr v0, v4

    .line 2055
    :goto_1
    return v0

    .line 2039
    :cond_1
    if-ne p1, p4, :cond_4

    .line 2040
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v0, :cond_2

    .line 2041
    sub-int v0, v2, v5

    add-int/2addr v0, v4

    goto :goto_1

    .line 2042
    :cond_2
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_3

    .line 2043
    sub-int v0, v3, v1

    add-int/2addr v0, v4

    goto :goto_1

    .line 2045
    :cond_3
    add-int v0, v4, v2

    goto :goto_1

    .line 2048
    :cond_4
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v1, :cond_5

    .line 2049
    sub-int v0, v4, v5

    goto :goto_1

    .line 2050
    :cond_5
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_6

    .line 2051
    sub-int v0, v4, v0

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2653
    .line 2655
    invoke-static {p0, p1, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2656
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 2697
    :goto_0
    return v4

    .line 2659
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2661
    add-int/lit8 v0, v1, 0x1

    .line 2662
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    if-ge v5, p2, :cond_3

    .line 2663
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2662
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2665
    :cond_1
    if-ne v5, v0, :cond_2

    .line 2666
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2668
    :cond_2
    aput v1, p3, v3

    .line 2669
    aput v0, p4, v3

    .line 2670
    add-int/lit8 v3, v3, 0x1

    .line 2672
    add-int/lit8 v0, v5, 0x1

    move v1, v5

    goto :goto_2

    .line 2676
    :cond_3
    if-ne v0, p2, :cond_4

    move v0, p1

    .line 2683
    :cond_4
    aput v1, p3, v3

    .line 2684
    aput v0, p4, v3

    .line 2685
    add-int/lit8 v0, v3, 0x1

    .line 2687
    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 2688
    aget v1, p3, v4

    if-ne v1, p1, :cond_5

    add-int/lit8 v1, v0, -0x1

    aget v1, p4, v1

    if-ne v1, p1, :cond_5

    .line 2693
    add-int/lit8 v1, v0, -0x1

    aget v1, p3, v1

    aput v1, p3, v4

    .line 2694
    add-int/lit8 v0, v0, -0x1

    :cond_5
    move v4, v0

    .line 2697
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 4

    .prologue
    .line 1973
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1974
    :goto_0
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 1975
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1979
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_5

    .line 1980
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v1, v3, :cond_3

    .line 1981
    if-eqz v0, :cond_2

    .line 1982
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int p2, v2, v0

    .line 2005
    :cond_0
    :goto_1
    return p2

    .line 1973
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1984
    :cond_2
    iget p2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_1

    .line 1986
    :cond_3
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v1, :cond_4

    .line 1988
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int p2, v0, v2

    goto :goto_1

    .line 1990
    :cond_4
    iget p2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    goto :goto_1

    .line 1992
    :cond_5
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v3, :cond_7

    .line 1993
    if-eqz v0, :cond_6

    .line 1994
    add-int/2addr p2, v2

    goto :goto_1

    .line 1996
    :cond_6
    add-int/2addr p2, v1

    goto :goto_1

    .line 1998
    :cond_7
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_0

    .line 2000
    add-int v0, p2, v1

    sub-int p2, v0, v2

    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1

    .prologue
    .line 1968
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1464
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1465
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1466
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1467
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1468
    return-void
.end method

.method private continueDrag(II)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1764
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1765
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1767
    invoke-direct {p0, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1769
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1770
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1773
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v2

    .line 1775
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 1779
    if-eq v2, v5, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1805
    :cond_1
    :goto_0
    return-void

    .line 1786
    :cond_2
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v2, :cond_4

    .line 1790
    if-eq v2, v5, :cond_3

    .line 1792
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1796
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1798
    :cond_4
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 1799
    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1803
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v0, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2363
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2367
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2368
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2370
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1640
    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1641
    iput-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1642
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1643
    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1645
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1646
    iput-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1647
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    .line 1648
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    .prologue
    .line 2271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2273
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2275
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2276
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2278
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    .line 2280
    if-eqz v2, :cond_0

    .line 2281
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2282
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 2285
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2286
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2289
    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 2290
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2293
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2294
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .prologue
    .line 2260
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2261
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2263
    if-nez v1, :cond_0

    .line 2268
    :goto_0
    return-void

    .line 2267
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1495
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1496
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1

    .prologue
    .line 1504
    const/4 v0, 0x1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1507
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1511
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1513
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1514
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1517
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1518
    const/4 v0, 0x3

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1522
    :goto_0
    return-void

    .line 1520
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 736
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 739
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    .line 740
    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 742
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 744
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 748
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 750
    iget v6, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_1

    .line 751
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 752
    add-int v0, v1, v3

    .line 760
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 761
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 762
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 763
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 764
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 767
    :cond_0
    return-void

    .line 754
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 755
    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1473
    const/4 v0, 0x2

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1475
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1476
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1477
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1480
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1482
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1483
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1484
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1487
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1488
    const/4 v0, 0x3

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1492
    :goto_0
    return-void

    .line 1490
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3

    .prologue
    .line 2713
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2714
    invoke-static {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2715
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2717
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-lt v1, p2, :cond_2

    .line 2718
    :cond_1
    const/4 v0, -0x1

    .line 2719
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1887
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_1

    .line 1933
    :cond_0
    :goto_0
    return v0

    .line 1891
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1893
    if-eqz v1, :cond_2

    .line 1896
    invoke-direct {p0, p1, v1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1900
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    .line 1901
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1907
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1910
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1911
    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1912
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1915
    :cond_3
    if-ltz v1, :cond_5

    .line 1916
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1917
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1918
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1928
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1931
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1920
    :cond_4
    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1924
    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1938
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v1, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return v0

    .line 1943
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 1949
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1951
    if-eqz v0, :cond_4

    .line 1952
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 1953
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1946
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 1957
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1959
    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    .line 1960
    :cond_5
    invoke-direct {p0, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1961
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 825
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 6

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 895
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 901
    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    .line 948
    :goto_0
    return v0

    .line 905
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 909
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 910
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 911
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 916
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_5

    .line 919
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_4

    .line 920
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    .line 921
    add-int v1, p2, v3

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int p2, v1, v3

    .line 942
    :cond_2
    :goto_1
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v1, :cond_7

    .line 943
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0

    .line 923
    :cond_3
    sub-int/2addr v3, v2

    .line 924
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    .line 925
    goto :goto_1

    .line 926
    :cond_4
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v3, :cond_2

    .line 927
    sub-int/2addr p2, v1

    goto :goto_1

    .line 933
    :cond_5
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v4, :cond_6

    .line 934
    add-int/2addr p2, v1

    goto :goto_1

    .line 935
    :cond_6
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v1, v4, :cond_2

    .line 936
    sub-int v1, v3, v2

    .line 937
    add-int/2addr p2, v1

    goto :goto_1

    .line 945
    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4

    .prologue
    .line 2723
    const/4 v2, 0x0

    .line 2724
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2725
    :goto_0
    sub-int v1, v0, v2

    if-lez v1, :cond_1

    .line 2726
    add-int v1, v2, v0

    shr-int/lit8 v1, v1, 0x1

    .line 2727
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2728
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v2, v1

    .line 2731
    goto :goto_0

    :cond_0
    move v0, v1

    move v1, v2

    .line 2730
    goto :goto_1

    .line 2732
    :cond_1
    return v2
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2078
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2079
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2081
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2059
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2060
    if-nez v0, :cond_0

    .line 2061
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2062
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2064
    :cond_0
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 2065
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2064
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2067
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 2068
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2072
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2073
    return-void

    .line 2070
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private static rotate(IIII)I
    .locals 2

    .prologue
    .line 2701
    sub-int v1, p3, p2

    .line 2703
    add-int v0, p0, p1

    .line 2704
    if-ge v0, p2, :cond_1

    .line 2705
    add-int/2addr v0, v1

    .line 2709
    :cond_0
    :goto_0
    return v0

    .line 2706
    :cond_1
    if-lt v0, p3, :cond_0

    .line 2707
    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1652
    if-eqz v0, :cond_0

    .line 1653
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1655
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mY:I

    .line 1657
    if-nez v0, :cond_1

    .line 1658
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mY:I

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1660
    :cond_1
    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2304
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 2308
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 2311
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 2312
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    if-le v0, v1, :cond_7

    .line 2313
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2319
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 2320
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 2321
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 2322
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v5

    .line 2326
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 2327
    if-ge v4, v1, :cond_2

    .line 2328
    sub-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2330
    :cond_2
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    .line 2331
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v1, :cond_3

    .line 2332
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2337
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 2338
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_4

    .line 2339
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2341
    :cond_4
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_5

    .line 2342
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v5, v3, :cond_5

    .line 2343
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2351
    :cond_5
    if-ge v2, v0, :cond_8

    .line 2352
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2358
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 2359
    return-void

    .line 2314
    :cond_7
    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    if-ge v0, v1, :cond_1

    .line 2315
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2353
    :cond_8
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_6

    .line 2354
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    .line 953
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 954
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 955
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 957
    if-nez v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, v2, v0

    .line 959
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 961
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 965
    invoke-direct {p0, v1, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    .line 968
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v6

    .line 974
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v4, v0, :cond_6

    move v3, v2

    move v2, v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 977
    :goto_0
    if-ltz v0, :cond_1

    .line 978
    add-int/lit8 v0, v0, -0x1

    .line 979
    invoke-direct {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    .line 981
    if-nez v0, :cond_5

    .line 982
    sub-int/2addr v3, v6

    sub-int v2, v3, v2

    .line 1021
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    .line 1022
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 1024
    const/4 v4, 0x0

    .line 1026
    iget v7, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1027
    iget v8, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1028
    iget v9, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1030
    iget-boolean v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v10, :cond_b

    .line 1031
    sub-int v10, v2, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1034
    iget v11, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v11, v2, :cond_8

    .line 1043
    :goto_2
    iget v11, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    mul-float/2addr v11, v13

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 1044
    int-to-float v11, v10

    .line 1045
    add-int/2addr v1, v10

    .line 1046
    sub-int v10, v2, v10

    .line 1049
    iget v12, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v12, v1, :cond_9

    .line 1050
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1051
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1052
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v13

    div-float/2addr v1, v11

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1073
    :goto_3
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ge v1, v3, :cond_c

    .line 1075
    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1076
    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move v0, v3

    .line 1083
    :cond_2
    :goto_4
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v1, v7, :cond_3

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v1, v8, :cond_3

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_e

    :cond_3
    move v1, v5

    .line 1088
    :goto_5
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-eq v0, v2, :cond_d

    .line 1089
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v1, :cond_4

    .line 1090
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v2, v3

    sub-int v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1093
    :cond_4
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1097
    :goto_6
    return v5

    .line 986
    :cond_5
    add-int/2addr v2, v6

    sub-int/2addr v3, v2

    .line 987
    invoke-direct {p0, v0, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 990
    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v4, v2, :cond_1

    move v1, v2

    .line 994
    goto :goto_0

    .line 999
    :cond_6
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v7

    move v4, v3

    move v3, v2

    move v2, v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 1000
    :goto_7
    if-ge v0, v7, :cond_1

    .line 1001
    add-int/lit8 v2, v7, -0x1

    if-ne v0, v2, :cond_7

    .line 1002
    add-int v2, v3, v6

    add-int/2addr v2, v4

    .line 1003
    goto/16 :goto_1

    .line 1006
    :cond_7
    add-int v2, v6, v4

    add-int/2addr v3, v2

    .line 1007
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 1008
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 1012
    iget v8, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v8, v2, :cond_1

    .line 1017
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_7

    :cond_8
    move v14, v1

    move v1, v2

    move v2, v14

    .line 1039
    goto/16 :goto_2

    .line 1055
    :cond_9
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v1, v10, :cond_a

    .line 1056
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1057
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_3

    .line 1059
    :cond_a
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1060
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1061
    const/high16 v1, 0x3f800000    # 1.0f

    iget v10, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    div-float/2addr v2, v11

    add-float/2addr v1, v2

    mul-float/2addr v1, v13

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1068
    :cond_b
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1069
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1077
    :cond_c
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v6

    if-lt v1, v2, :cond_2

    .line 1078
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 1079
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1080
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4

    :cond_d
    move v5, v1

    goto :goto_6

    :cond_e
    move v1, v4

    goto/16 :goto_5
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1809
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1810
    int-to-float v2, v1

    .line 1812
    int-to-float v3, v0

    iget v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1813
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1815
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v2, v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1816
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v2, v2

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1818
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1819
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1820
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1449
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1451
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1452
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1453
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1455
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1456
    const/4 v0, 0x3

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 771
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 773
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 775
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 776
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 778
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 779
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 786
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 788
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 790
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v3

    .line 791
    if-gez v0, :cond_2

    .line 792
    neg-int v0, v0

    .line 794
    :cond_2
    if-ge v0, v3, :cond_4

    .line 795
    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 796
    mul-float/2addr v0, v0

    .line 801
    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v3, v5

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 803
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 805
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 806
    invoke-virtual {p1, v6, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 809
    int-to-float v3, v2

    int-to-float v4, v4

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 810
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 814
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 798
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2098
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2100
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2101
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2105
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2108
    iput-boolean v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2110
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1663
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2585
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 2588
    if-ge p2, p1, :cond_3

    move v0, p1

    move v1, p2

    .line 2592
    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 2594
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 2595
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 2596
    invoke-static {v3, v1, v4, v5, v6}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v3

    .line 2597
    if-ne v3, v8, :cond_1

    aget v0, v5, v2

    aget v7, v6, v2

    if-ne v0, v7, :cond_1

    .line 2615
    :cond_0
    return-void

    .line 2603
    :cond_1
    if-ge p1, p2, :cond_2

    move v0, v2

    .line 2604
    :goto_1
    if-eq v0, v3, :cond_0

    .line 2605
    aget v7, v5, v0

    invoke-static {v7, v9, v1, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v8}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2606
    aget v7, v6, v0

    invoke-static {v7, v9, v1, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 2610
    :goto_2
    if-eq v0, v3, :cond_0

    .line 2611
    aget v1, v5, v0

    invoke-virtual {p0, v1, v2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2612
    aget v1, v6, v0

    invoke-virtual {p0, v1, v8}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2610
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public moveItem(II)V
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1438
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1442
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2134
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2117
    :pswitch_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_0

    .line 2118
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 2120
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2124
    :pswitch_1
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_1

    .line 2125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2127
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2130
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1102
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1104
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1107
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1670
    iget-boolean v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v1, :cond_0

    .line 1671
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1718
    :goto_0
    return v0

    .line 1674
    :cond_0
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1675
    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1679
    if-nez v3, :cond_2

    .line 1680
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_1

    .line 1682
    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    goto :goto_0

    .line 1685
    :cond_1
    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1691
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v0

    .line 1714
    :goto_1
    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    .line 1715
    :cond_3
    iput-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_4
    move v0, v1

    .line 1718
    goto :goto_0

    .line 1695
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1696
    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mListViewIntercepted:Z

    move v1, v0

    .line 1700
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1706
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1707
    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1703
    :pswitch_1
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1709
    :cond_6
    const/4 v4, 0x2

    iput v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    .line 1700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 2085
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2087
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2088
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2089
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2091
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2093
    :cond_1
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2094
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1824
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1825
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1826
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1589
    iget-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v2, :cond_1

    .line 1590
    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 1636
    :cond_0
    :goto_0
    return v0

    .line 1594
    :cond_1
    iget-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_2

    .line 1595
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1600
    :cond_2
    iget-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1601
    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1603
    if-nez v2, :cond_3

    .line 1604
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1608
    :cond_3
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1609
    invoke-virtual {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 1610
    goto :goto_0

    .line 1616
    :cond_4
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v2, :cond_5

    .line 1617
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 1622
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1624
    packed-switch v2, :pswitch_data_0

    .line 1630
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1631
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1627
    :pswitch_1
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 2631
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2633
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2649
    :cond_0
    return-void

    .line 2635
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2636
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 2638
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2639
    invoke-static {v0, p1, v4, v2, v3}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v5

    move v0, v1

    .line 2640
    :goto_0
    if-eq v0, v5, :cond_0

    .line 2641
    aget v6, v2, v0

    if-eq v6, p1, :cond_3

    aget v6, v3, v0

    aget v7, v2, v0

    if-ge v6, v7, :cond_2

    aget v6, v3, v0

    if-gt v6, p1, :cond_3

    .line 2645
    :cond_2
    aget v6, v2, v0

    invoke-static {v6, v8, p1, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2647
    :cond_3
    aget v6, v3, v0

    invoke-static {v6, v8, p1, v4}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->rotate(IIII)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1

    .prologue
    .line 1378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1380
    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1390
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_3

    .line 1392
    :cond_0
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v0, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1395
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1396
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1397
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1398
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_1

    .line 1400
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1405
    iput p2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1407
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_2

    .line 1408
    iget v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v0, :pswitch_data_0

    .line 1418
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    if-eqz v0, :cond_4

    .line 1419
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1424
    :cond_3
    :goto_1
    return-void

    .line 1410
    :pswitch_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1413
    :pswitch_1
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1421
    :cond_4
    invoke-direct {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2010
    iget-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2011
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2013
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 589
    if-eqz p1, :cond_3

    .line 590
    new-instance v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 591
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 593
    instance-of v0, p1, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 594
    check-cast v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 596
    :cond_0
    instance-of v0, p1, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 597
    check-cast v0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 599
    :cond_1
    instance-of v0, p1, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 600
    check-cast p1, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 606
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 607
    return-void

    .line 603
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 2444
    iput-boolean p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 2445
    return-void
.end method

.method public setDragListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;)V
    .locals 0

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;

    .line 2431
    return-void
.end method

.method public setDragScrollProfile(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    .prologue
    .line 2527
    if-eqz p1, :cond_0

    .line 2528
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 2530
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .prologue
    .line 1730
    invoke-virtual {p0, p1, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1731
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1744
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1745
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1750
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1751
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1756
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1759
    :cond_0
    return-void

    .line 1747
    :cond_1
    iput p2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1753
    :cond_2
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .prologue
    .line 2514
    invoke-virtual {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2515
    invoke-virtual {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2516
    invoke-virtual {p0, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 2517
    return-void
.end method

.method public setDropListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;)V
    .locals 0

    .prologue
    .line 2464
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropListener;

    .line 2465
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .prologue
    .line 560
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 561
    return-void
.end method

.method public setFloatViewManager(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .prologue
    .line 2426
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 2427
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .prologue
    .line 574
    iput p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 575
    return-void
.end method

.method public setRemoveListener(Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$RemoveListener;

    .line 2479
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2161
    iget-boolean v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2170
    :cond_0
    :goto_0
    return v0

    .line 2165
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2167
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2170
    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2198
    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 2256
    :cond_1
    :goto_0
    return v0

    .line 2203
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2204
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2207
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    .line 2208
    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2209
    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2210
    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2211
    iput v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 2214
    iput v4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2215
    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2216
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2218
    iput-object p2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2219
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2221
    iput p4, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2222
    iput p5, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2225
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mX:I

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2226
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mY:I

    iget v3, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2229
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2231
    if-eqz v1, :cond_4

    .line 2232
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2235
    :cond_4
    iget-boolean v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_5

    .line 2236
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2241
    :cond_5
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 2250
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 2252
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;

    if-eqz v1, :cond_1

    .line 2253
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2243
    :pswitch_0
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2246
    :pswitch_1
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1

    .prologue
    .line 1552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1553
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1563
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1564
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1566
    if-eqz p1, :cond_1

    .line 1567
    iget v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->removeItem(IF)V

    .line 1576
    :goto_0
    iget-boolean v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1583
    :cond_0
    :goto_1
    return v0

    .line 1569
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1570
    iget-object v1, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1572
    :cond_2
    invoke-direct {p0}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1583
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    .prologue
    .line 1558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/mobeta/android/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
