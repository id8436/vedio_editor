.class public abstract Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;
.super Landroid/widget/AbsListView;
.source "ExtendableListView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_NORMAL:I = 0x0

.field private static final LAYOUT_SYNC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ExtendableListView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field private static final TOUCH_MODE_SCROLLING:I = 0x1

.field private static final TOUCH_MODE_TAP:I = 0x4


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field private mBlockLayoutRequests:Z

.field protected mClipToPadding:Z

.field private mDataChanged:Z

.field protected mFirstPosition:I

.field private mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

.field private mFlingVelocity:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInLayout:Z

.field private mIsAttached:Z

.field final mIsScrap:[Z

.field private mItemCount:I

.field private mLastY:I

.field private mLayoutMode:I

.field private mMaximumVelocity:I

.field private mMotionCorrection:I

.field private mMotionPosition:I

.field private mMotionX:I

.field private mMotionY:I

.field mNeedSync:Z

.field private mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

.field private mOldItemCount:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPerformClick:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;

.field private mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

.field private mScrollState:I

.field protected mSpecificTop:I

.field mSyncHeight:J

.field protected mSyncPosition:I

.field mSyncRowId:J

.field private mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mScrollState:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 126
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mIsScrap:[Z

    .line 2540
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncRowId:J

    .line 2550
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 171
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setWillNotDraw(Z)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setClipToPadding(Z)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setFocusableInTouchMode(Z)V

    .line 175
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchSlop:I

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMaximumVelocity:I

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingVelocity:I

    .line 180
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    .line 181
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 187
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    .line 188
    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->updateEmptyStatus()V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->postOnAnimate(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;II)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->moveTheChildren(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOldItemCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    return-object v0
.end method

.method private adjustViewsUpOrDown()V
    .locals 2

    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1696
    if-lez v0, :cond_1

    .line 1699
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHighestChildTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1700
    if-gez v0, :cond_0

    .line 1702
    const/4 v0, 0x0

    .line 1705
    :cond_0
    if-eqz v0, :cond_1

    .line 1706
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1709
    :cond_1
    return-void
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2596
    if-nez p1, :cond_1

    .line 2604
    :cond_0
    return-void

    .line 2597
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    .line 2598
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2599
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    .line 2600
    if-eqz v0, :cond_2

    .line 2601
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    goto :goto_0
.end method

.method private clearState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2582
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2583
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 2585
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeAllViewsInLayout()V

    .line 2586
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 2587
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 2588
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->clear()V

    .line 2589
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 2590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    .line 2591
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    .line 2592
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 2593
    return-void
.end method

.method private correctTooHigh(I)V
    .locals 3

    .prologue
    .line 1597
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1598
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1601
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v0

    .line 1604
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1608
    sub-int v0, v1, v0

    .line 1610
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHighestChildTop()I

    move-result v1

    .line 1614
    if-lez v0, :cond_2

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1615
    :cond_0
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-nez v2, :cond_1

    .line 1617
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1620
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1621
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-lez v0, :cond_2

    .line 1624
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    .line 1625
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillUp(II)Landroid/view/View;

    .line 1627
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1632
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 5

    .prologue
    .line 1644
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 1647
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHighestChildTop()I

    move-result v0

    .line 1650
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v1

    .line 1653
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1657
    sub-int/2addr v0, v1

    .line 1658
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v1

    .line 1660
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 1664
    if-lez v0, :cond_2

    .line 1665
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_0

    if-le v1, v2, :cond_3

    .line 1666
    :cond_0
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1668
    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1671
    :cond_1
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1672
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_2

    .line 1675
    add-int/lit8 v0, v3, 0x1

    .line 1676
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    .line 1678
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1686
    :cond_2
    :goto_0
    return-void

    .line 1681
    :cond_3
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_2

    .line 1682
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 4

    .prologue
    .line 1281
    const/4 v1, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v0

    .line 1284
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_0

    .line 1285
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1288
    :cond_0
    :goto_0
    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasSpaceDown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-ge p1, v2, :cond_2

    .line 1290
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1291
    add-int/lit8 p1, p1, 0x1

    .line 1292
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result p2

    goto :goto_0

    .line 1295
    :cond_2
    return-object v1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1334
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 1335
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1336
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 1338
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 1352
    const/4 v0, 0x0

    .line 1353
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1355
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 1360
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result v0

    .line 1361
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildDownsTop(I)I

    move-result v1

    .line 1363
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 1365
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 1366
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 1367
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v2

    .line 1368
    if-lez v2, :cond_0

    .line 1369
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->correctTooHigh(I)V

    .line 1375
    :cond_0
    if-eqz v0, :cond_1

    .line 1379
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1307
    const/4 v2, 0x0

    .line 1309
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v0

    .line 1311
    :goto_0
    if-gt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasSpaceUp()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-ltz p1, :cond_2

    .line 1313
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1314
    add-int/lit8 p1, p1, -0x1

    .line 1315
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getNextChildUpsBottom(I)I

    move-result p2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1309
    goto :goto_0

    .line 1319
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 1320
    return-object v2
.end method

.method private findMotionRow(I)I
    .locals 3

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v1

    .line 1077
    if-lez v1, :cond_1

    .line 1079
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1080
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1081
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1082
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 1086
    :goto_1
    return v0

    .line 1079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1835
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1840
    :goto_0
    return-void

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1844
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1846
    :cond_0
    return-void
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1389
    invoke-virtual {p0, p1, p3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onChildCreated(IZ)V

    .line 1391
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_0

    .line 1398
    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setupChild(Landroid/view/View;IIZZZ)V

    .line 1408
    :goto_0
    return-object v1

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mIsScrap:[Z

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1406
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v6, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setupChild(Landroid/view/View;IIZZZ)V

    goto :goto_0
.end method

.method private moveTheChildren(II)Z
    .locals 17

    .prologue
    .line 1099
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1238
    :goto_0
    return v1

    .line 1101
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHighestChildTop()I

    move-result v3

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLowestChildBottom()I

    move-result v4

    .line 1107
    const/4 v2, 0x0

    .line 1108
    const/4 v1, 0x0

    .line 1109
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v5, :cond_1

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v2

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v1

    .line 1114
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v7

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getFirstChildTop()I

    move-result v5

    sub-int v8, v2, v5

    .line 1116
    sub-int v1, v7, v1

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLastChildBottom()I

    move-result v2

    sub-int v9, v2, v1

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1121
    if-gez p2, :cond_2

    .line 1122
    add-int/lit8 v1, v1, -0x1

    neg-int v1, v1

    move/from16 v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1128
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v2

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v5

    sub-int v5, v7, v5

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v11

    .line 1134
    if-nez v10, :cond_3

    if-lt v3, v2, :cond_3

    if-ltz v1, :cond_3

    const/4 v2, 0x1

    .line 1136
    :goto_2
    add-int v3, v10, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-ne v3, v6, :cond_4

    if-gt v4, v5, :cond_4

    if-gtz v1, :cond_4

    const/4 v3, 0x1

    .line 1150
    :goto_3
    if-eqz v2, :cond_6

    .line 1152
    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 1125
    :cond_2
    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 1134
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1136
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 1152
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1155
    :cond_6
    if-eqz v3, :cond_8

    .line 1157
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1160
    :cond_8
    if-gez v1, :cond_10

    const/4 v2, 0x1

    .line 1162
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeaderViewsCount()I

    move-result v12

    .line 1163
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getFooterViewsCount()I

    move-result v4

    sub-int v13, v3, v4

    .line 1165
    const/4 v5, 0x0

    .line 1166
    const/4 v6, 0x0

    .line 1168
    if-eqz v2, :cond_13

    .line 1169
    neg-int v3, v1

    .line 1170
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v4, :cond_9

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 1173
    :cond_9
    const/4 v4, 0x0

    move/from16 v16, v4

    move v4, v6

    move/from16 v6, v16

    :goto_5
    if-ge v6, v11, :cond_a

    .line 1174
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1175
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v7

    if-lt v7, v3, :cond_11

    :cond_a
    move v3, v4

    move v4, v5

    .line 1208
    :goto_6
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 1210
    if-lez v3, :cond_b

    .line 1212
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->detachViewsFromParent(II)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->removeSkippedScrap()V

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onChildrenDetached(II)V

    .line 1219
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 1223
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->offsetChildrenTopAndBottom(I)V

    .line 1225
    if-eqz v2, :cond_d

    .line 1226
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 1229
    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1230
    if-lt v8, v1, :cond_e

    if-ge v9, v1, :cond_f

    .line 1231
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillGap(Z)V

    .line 1235
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invokeOnItemScrollListener()V

    .line 1238
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1160
    :cond_10
    const/4 v2, 0x0

    goto :goto_4

    .line 1179
    :cond_11
    add-int/lit8 v7, v4, 0x1

    .line 1180
    add-int v4, v10, v6

    .line 1181
    if-lt v4, v12, :cond_12

    if-ge v4, v13, :cond_12

    .line 1182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v15, v14, v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1173
    :cond_12
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto :goto_5

    .line 1188
    :cond_13
    sub-int v3, v7, v1

    .line 1189
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v4, :cond_14

    .line 1190
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1192
    :cond_14
    add-int/lit8 v4, v11, -0x1

    move/from16 v16, v4

    move v4, v6

    move/from16 v6, v16

    :goto_7
    if-ltz v6, :cond_17

    .line 1193
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1194
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    if-gt v11, v3, :cond_15

    move v3, v4

    move v4, v5

    .line 1195
    goto/16 :goto_6

    .line 1199
    :cond_15
    add-int/lit8 v5, v4, 0x1

    .line 1200
    add-int v4, v10, v6

    .line 1201
    if-lt v4, v12, :cond_16

    if-ge v4, v13, :cond_16

    .line 1202
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v11, v7, v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1192
    :cond_16
    add-int/lit8 v4, v6, -0x1

    move/from16 v16, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v16

    goto :goto_7

    :cond_17
    move v3, v4

    move v4, v5

    goto/16 :goto_6
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1561
    aput-boolean v2, p2, v2

    .line 1564
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1567
    if-eqz v1, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1571
    if-eq v0, v1, :cond_0

    .line 1572
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1583
    :goto_0
    return-object v0

    .line 1575
    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p2, v2

    goto :goto_0

    .line 1580
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 974
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 975
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 979
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 980
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionX:I

    .line 981
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    .line 982
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 983
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 985
    :cond_0
    return-void

    .line 979
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 887
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 888
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setPressed(Z)V

    .line 889
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 890
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 891
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v3, v0

    .line 813
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v4, v0

    .line 814
    invoke-virtual {p0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->pointToPosition(II)I

    move-result v0

    .line 816
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 817
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 823
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    if-nez v5, :cond_0

    if-ltz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 828
    const/4 v5, 0x3

    iput v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_1

    if-gez v0, :cond_1

    move v0, v1

    .line 850
    :goto_0
    return v0

    .line 839
    :cond_0
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    if-ne v5, v6, :cond_1

    .line 840
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 841
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionCorrection:I

    .line 842
    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->findMotionRow(I)I

    move-result v0

    .line 845
    :cond_1
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionX:I

    .line 846
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    .line 847
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    .line 848
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    move v0, v2

    .line 850
    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 854
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 855
    if-gez v0, :cond_0

    .line 856
    const-string/jumbo v0, "ExtendableListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchMove could not find pointer with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - did ExtendableListView receive an inconsistent event stream?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0

    .line 861
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 864
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->layoutChildren()V

    .line 868
    :cond_1
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 882
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 874
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->startScrollIfNeeded(I)Z

    goto :goto_1

    .line 878
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->scrollIfNeeded(I)V

    goto :goto_1

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchPointerUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 960
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionX:I

    .line 961
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    .line 962
    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->pointToPosition(II)I

    move-result v0

    .line 963
    if-ltz v0, :cond_0

    .line 964
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    .line 966
    :cond_0
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    .line 967
    const/4 v0, 0x1

    return v0
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 906
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setPressed(Z)V

    .line 907
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 908
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 909
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 910
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 900
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchUpTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 903
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchUpScrolling(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onTouchUpScrolling(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getFirstChildTop()I

    move-result v0

    .line 917
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLastChildBottom()I

    move-result v3

    .line 918
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-nez v4, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v4

    if-lt v0, v4, :cond_0

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 920
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-ge v0, v4, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    if-gt v3, v0, :cond_0

    move v0, v1

    .line 923
    :goto_0
    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 925
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 927
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 928
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->startFlingRunnable(F)V

    .line 929
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 930
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    .line 931
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 940
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 921
    goto :goto_0

    .line 937
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->stopFlingRunnable()V

    .line 938
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 939
    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    goto :goto_1
.end method

.method private onTouchUpTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mPerformClick:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;

    if-nez v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 946
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mPerformClick:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;

    .line 948
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    .line 949
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mPerformClick:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;

    .line 951
    iput v0, v1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->mClickMotionPosition:I

    .line 952
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->rememberWindowAttachCount()V

    .line 953
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$PerformClick;->run()V

    .line 955
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private postOnAnimate(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1973
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1974
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1853
    :cond_0
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 390
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 391
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    .line 392
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 393
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    :cond_0
    return-void

    .line 390
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 2505
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2506
    if-lez v3, :cond_2

    .line 2508
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 2509
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2510
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->position:I

    if-ne v1, p1, :cond_0

    .line 2511
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2518
    :goto_1
    return-object v0

    .line 2508
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2515
    :cond_1
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 2518
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private scrollIfNeeded(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1029
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    sub-int v2, p1, v0

    .line 1030
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionCorrection:I

    sub-int v1, v2, v0

    .line 1031
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    sub-int v0, p1, v0

    .line 1033
    :goto_0
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    if-ne v3, v4, :cond_3

    .line 1035
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    if-eq p1, v3, :cond_3

    .line 1037
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchSlop:I

    if-le v2, v3, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1039
    if-eqz v2, :cond_0

    .line 1040
    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1045
    :cond_0
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    if-ltz v2, :cond_5

    .line 1046
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move v3, v2

    .line 1055
    :goto_1
    const/4 v2, 0x0

    .line 1056
    if-eqz v0, :cond_6

    .line 1057
    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->moveTheChildren(II)Z

    move-result v0

    .line 1061
    :goto_2
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1062
    if-eqz v1, :cond_2

    .line 1063
    if-eqz v0, :cond_1

    .line 1066
    :cond_1
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    .line 1068
    :cond_2
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    .line 1073
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 1031
    goto :goto_0

    .line 1051
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    move v3, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private setupChild(Landroid/view/View;IIZZZ)V
    .locals 8

    .prologue
    .line 1426
    .line 1427
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 1428
    :goto_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 1429
    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    if-ne v1, p2, :cond_5

    const/4 v1, 0x1

    .line 1431
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x1

    move v5, v2

    .line 1432
    :goto_2
    if-eqz p6, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    const/4 v2, 0x1

    .line 1434
    :goto_3
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 1437
    const/4 v3, -0x2

    if-ne v4, v3, :cond_8

    .line 1438
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->generateWrapperLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    move-result-object v3

    .line 1444
    :goto_4
    iput v4, v3, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 1445
    iput p2, v3, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->position:I

    .line 1447
    if-nez p6, :cond_1

    iget-boolean v4, v3, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_a

    iget v4, v3, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_a

    .line 1450
    :cond_1
    if-eqz p4, :cond_9

    const/4 v4, -0x1

    :goto_5
    invoke-virtual {p0, p1, v4, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    :goto_6
    if-eqz v0, :cond_2

    .line 1461
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1464
    :cond_2
    if-eqz v5, :cond_3

    .line 1465
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1468
    :cond_3
    if-eqz v2, :cond_d

    .line 1470
    invoke-virtual {p0, p1, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onMeasureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;)V

    .line 1477
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1479
    if-eqz p4, :cond_e

    move v5, p3

    .line 1485
    :goto_8
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildLeft(I)I

    move-result v4

    .line 1487
    if-eqz v2, :cond_f

    .line 1488
    add-int v6, v4, v0

    .line 1489
    add-int v7, v5, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    .line 1490
    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onLayoutChild(Landroid/view/View;IZIIII)V

    .line 1496
    :goto_9
    return-void

    .line 1427
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1429
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1431
    :cond_6
    const/4 v2, 0x0

    move v5, v2

    goto :goto_2

    .line 1432
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 1441
    :cond_8
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->generateChildLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    move-result-object v3

    goto :goto_4

    .line 1450
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 1454
    :cond_a
    iget v4, v3, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-ne v4, v6, :cond_b

    .line 1455
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1457
    :cond_b
    if-eqz p4, :cond_c

    const/4 v4, -0x1

    :goto_a
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v4, v3, v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    goto :goto_a

    .line 1474
    :cond_d
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_7

    .line 1479
    :cond_e
    sub-int v5, p3, v1

    goto :goto_8

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    .line 1493
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onOffsetChild(Landroid/view/View;IZII)V

    goto :goto_9
.end method

.method private startFlingRunnable(F)V
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 1857
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->start(I)V

    .line 1860
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 996
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    sub-int v0, p1, v0

    .line 997
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1001
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 1006
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 1007
    if-lez v0, :cond_2

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchSlop:I

    :goto_0
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionCorrection:I

    .line 1011
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setPressed(Z)V

    .line 1012
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1013
    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_1

    .line 1018
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1021
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->scrollIfNeeded(I)V

    move v0, v1

    .line 1024
    :goto_1
    return v0

    .line 1007
    :cond_2
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchSlop:I

    neg-int v0, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1024
    goto :goto_1
.end method

.method private stopFlingRunnable()V
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;->access$100(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;)V

    .line 1866
    :cond_0
    return-void
.end method

.method private updateEmptyStatus()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 2026
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 2027
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getEmptyView()Landroid/view/View;

    move-result-object v2

    .line 2032
    if-eqz v0, :cond_5

    .line 2033
    if-eqz v2, :cond_4

    .line 2034
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2035
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setVisibility(I)V

    .line 2045
    :goto_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    if-eqz v0, :cond_2

    .line 2046
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onLayout(ZIIII)V

    .line 2055
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 2026
    goto :goto_0

    .line 2039
    :cond_4
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setVisibility(I)V

    goto :goto_1

    .line 2050
    :cond_5
    if-eqz v2, :cond_6

    .line 2051
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2053
    :cond_6
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 442
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 443
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 419
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    .line 420
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 421
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 422
    iput-boolean p3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 423
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 430
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 360
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;-><init>(Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;)V

    .line 335
    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->view:Landroid/view/View;

    .line 336
    iput-object p2, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 337
    iput-boolean p3, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FixedViewInfo;->isSelectable:Z

    .line 338
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 345
    :cond_1
    return-void
.end method

.method protected adjustViewsAfterFillGap(Z)V
    .locals 1

    .prologue
    .line 1270
    if-eqz p1, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->correctTooHigh(I)V

    .line 1276
    :goto_0
    return-void

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method protected fillGap(Z)V
    .locals 2

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1254
    if-eqz p1, :cond_0

    .line 1256
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 1257
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildTop(I)I

    move-result v1

    .line 1258
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillDown(II)Landroid/view/View;

    .line 1266
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsAfterFillGap(Z)V

    .line 1267
    return-void

    .line 1262
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    .line 1263
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildBottom(I)I

    move-result v1

    .line 1264
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method protected generateChildLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
    .locals 1

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->generateWrapperLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
    .locals 4

    .prologue
    .line 1540
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected generateHeaderFooterLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
    .locals 4

    .prologue
    .line 1545
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method protected generateWrapperLayoutParams(Landroid/view/View;)Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
    .locals 2

    .prologue
    .line 1503
    const/4 v1, 0x0

    .line 1505
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_2

    .line 1507
    instance-of v1, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    if-eqz v1, :cond_1

    .line 1508
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    .line 1514
    :goto_0
    if-nez v0, :cond_0

    .line 1515
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->generateDefaultLayoutParams()Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    move-result-object v0

    .line 1518
    :cond_0
    return-object v0

    .line 1511
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getChildBottom(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1769
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v2

    .line 1771
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1772
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingBottom()I

    move-result v0

    .line 1774
    :goto_0
    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected getChildLeft(I)I
    .locals 1

    .prologue
    .line 1746
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingLeft()I

    move-result v0

    return v0
.end method

.method protected getChildTop(I)I
    .locals 3

    .prologue
    .line 1755
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v1

    .line 1756
    const/4 v0, 0x0

    .line 1757
    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    if-eqz v2, :cond_0

    .line 1758
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v0

    .line 1760
    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    return v0
.end method

.method protected getFirstChildTop()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1791
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 3

    .prologue
    .line 1821
    const/4 v0, 0x0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getHighestChildTop()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1795
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getLastChildBottom()I
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 1826
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getLowestChildBottom()I
    .locals 1

    .prologue
    .line 1803
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNextChildDownsTop(I)I
    .locals 1

    .prologue
    .line 1778
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    .line 1779
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNextChildUpsBottom(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1783
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v1

    .line 1784
    if-nez v1, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleDataChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 626
    invoke-super {p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 628
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    .line 630
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    if-eqz v1, :cond_0

    .line 631
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 632
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    .line 634
    const/4 v1, 0x2

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    .line 635
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncPosition:I

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    .line 640
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 641
    iput-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    goto :goto_0
.end method

.method protected hasChildren()Z
    .locals 1

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasSpaceDown()Z
    .locals 1

    .prologue
    .line 1302
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSpaceUp()Z
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x0

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 2018
    :cond_0
    return-void
.end method

.method protected layoutChildren()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 525
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 528
    :try_start_0
    invoke-super {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 529
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->invalidate()V

    .line 531
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->clearState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 536
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v4

    .line 539
    const/4 v1, 0x0

    .line 542
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    if-nez v3, :cond_a

    .line 543
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    .line 546
    :goto_1
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 547
    if-eqz v1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->handleDataChanged()V

    .line 554
    :cond_2
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-nez v5, :cond_3

    .line 555
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->clearState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 558
    :cond_3
    :try_start_2
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The content of the adapter has changed but ExtendableListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ExtendableListView("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") with Adapter("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 563
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 619
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    .line 620
    throw v0

    .line 568
    :cond_4
    :try_start_3
    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 569
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    .line 571
    if-eqz v1, :cond_5

    move v1, v2

    .line 572
    :goto_2
    if-ge v1, v4, :cond_6

    .line 573
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v5, v1

    invoke-virtual {v6, v7, v8}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 577
    :cond_5
    invoke-virtual {v6, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->fillActiveViews(II)V

    .line 581
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->detachAllViewsFromParent()V

    .line 582
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->removeSkippedScrap()V

    .line 584
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    packed-switch v1, :pswitch_data_0

    .line 599
    if-nez v4, :cond_7

    .line 600
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillFromTop(I)Landroid/view/View;

    .line 614
    :goto_3
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->scrapActiveViews()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 586
    :pswitch_0
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 587
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->resetToTop()V

    .line 588
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsUpOrDown()V

    .line 589
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillFromTop(I)Landroid/view/View;

    .line 590
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->adjustViewsUpOrDown()V

    goto :goto_3

    .line 594
    :pswitch_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncPosition:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSpecificTop:I

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_3

    .line 602
    :cond_7
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-ge v1, v4, :cond_9

    .line 603
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-nez v3, :cond_8

    :goto_4
    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_3

    .line 604
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_4

    .line 607
    :cond_9
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->fillSpecific(II)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_a
    move-object v3, v1

    goto/16 :goto_1

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyTouchMode()V
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1996
    :goto_0
    return-void

    .line 1987
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 1990
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 1993
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 1985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected offsetChildrenTopAndBottom(I)V
    .locals 3

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v1

    .line 1813
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1814
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1815
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1813
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1817
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-super {p0}, Landroid/widget/AbsListView;->onAttachedToWindow()V

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 201
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 202
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOldItemCount:I

    .line 203
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    .line 205
    :cond_0
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mIsAttached:Z

    .line 206
    return-void
.end method

.method protected onChildCreated(IZ)V
    .locals 0

    .prologue
    .line 1720
    return-void
.end method

.method protected onChildrenDetached(II)V
    .locals 0

    .prologue
    .line 1243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->clear()V

    .line 215
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFlingRunnable:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mIsAttached:Z

    .line 220
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 725
    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mIsAttached:Z

    if-nez v3, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v1

    .line 734
    :cond_1
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 736
    :pswitch_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 746
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 748
    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->findMotionRow(I)I

    move-result v5

    .line 749
    if-eq v0, v6, :cond_2

    if-ltz v5, :cond_2

    .line 752
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionX:I

    .line 753
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionY:I

    .line 754
    iput v5, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mMotionPosition:I

    .line 755
    const/4 v3, 0x3

    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 757
    :cond_2
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLastY:I

    .line 758
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->initOrResetVelocityTracker()V

    .line 759
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 760
    if-ne v0, v6, :cond_0

    move v1, v2

    .line 761
    goto :goto_0

    .line 767
    :pswitch_2
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 769
    :pswitch_3
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 770
    if-ne v0, v4, :cond_3

    .line 772
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    move v0, v1

    .line 774
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 775
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->initVelocityTrackerIfNotExists()V

    .line 776
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 777
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->startScrollIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 778
    goto :goto_0

    .line 787
    :pswitch_4
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mTouchMode:I

    .line 788
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mActivePointerId:I

    .line 789
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 790
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 795
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 767
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 505
    :cond_0
    if-eqz p1, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 507
    :goto_1
    if-ge v0, v2, :cond_1

    .line 508
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->markChildrenDirty()V

    .line 514
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mInLayout:Z

    .line 515
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->layoutChildren()V

    .line 516
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mInLayout:Z

    goto :goto_0
.end method

.method protected onLayoutChild(Landroid/view/View;IZIIII)V
    .locals 0

    .prologue
    .line 1728
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 1729
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 659
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 660
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 661
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 662
    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setMeasuredDimension(II)V

    .line 663
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mWidthMeasureSpec:I

    .line 664
    return-void
.end method

.method protected onMeasureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1526
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mWidthMeasureSpec:I

    .line 1527
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->width:I

    .line 1526
    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1528
    iget v0, p2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->height:I

    .line 1530
    if-lez v0, :cond_0

    .line 1531
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1536
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1537
    return-void

    .line 1534
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onOffsetChild(Landroid/view/View;IZII)V
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1737
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1738
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2717
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    .line 2718
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2719
    iput-boolean v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 2721
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->height:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncHeight:J

    .line 2723
    iget-wide v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2724
    iput-boolean v4, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 2725
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    .line 2726
    iget-wide v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncRowId:J

    .line 2727
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->position:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncPosition:I

    .line 2728
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->viewTop:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSpecificTop:I

    .line 2730
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->requestLayout()V

    .line 2731
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2669
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2670
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2672
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    iget-wide v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->selectedId:J

    iput-wide v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->selectedId:J

    .line 2675
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    iget-wide v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    iput-wide v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    .line 2676
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->viewTop:I

    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->viewTop:I

    .line 2677
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->position:I

    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->position:I

    .line 2678
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncState:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->height:I

    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->height:I

    move-object v0, v2

    .line 2712
    :goto_0
    return-object v0

    .line 2682
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 2683
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getSelectedItemId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->selectedId:J

    .line 2684
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->height:I

    .line 2687
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 2697
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2698
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->viewTop:I

    .line 2699
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 2700
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    if-lt v0, v1, :cond_1

    .line 2701
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    .line 2703
    :cond_1
    iput v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->position:I

    .line 2704
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    :goto_2
    move-object v0, v2

    .line 2712
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2682
    goto :goto_1

    .line 2707
    :cond_3
    iput v1, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->viewTop:I

    .line 2708
    const-wide/16 v4, -0x1

    iput-wide v4, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->firstId:J

    .line 2709
    iput v1, v2, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$ListSavedState;->position:I

    goto :goto_2
.end method

.method protected onSizeChanged(II)V
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->stopFlingRunnable()V

    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->clear()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 242
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->rememberSyncState()V

    .line 244
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onSizeChanged(II)V

    .line 235
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 682
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 717
    :cond_1
    :goto_0
    return v0

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->initVelocityTrackerIfNotExists()V

    .line 686
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 688
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 692
    packed-switch v0, :pswitch_data_0

    .line 711
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 715
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->notifyTouchMode()V

    goto :goto_0

    .line 694
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 698
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchMove(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 702
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchCancel(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 706
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->onTouchPointerUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method rememberSyncState()V
    .locals 4

    .prologue
    .line 2561
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    .line 2563
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getHeight()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncHeight:J

    .line 2565
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2566
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 2567
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2568
    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncRowId:J

    .line 2573
    :goto_0
    if-eqz v0, :cond_0

    .line 2574
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSpecificTop:I

    .line 2576
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncPosition:I

    .line 2578
    :cond_1
    return-void

    .line 2571
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncRowId:J

    goto :goto_0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 462
    :cond_0
    const/4 v0, 0x1

    .line 464
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 467
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;->onChanged()V

    .line 380
    :cond_0
    const/4 v0, 0x1

    .line 382
    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 385
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method reportScrollStateChange(I)V
    .locals 1

    .prologue
    .line 2006
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 2007
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mScrollState:I

    .line 2008
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2012
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 805
    if-eqz p1, :cond_0

    .line 806
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->recycleVelocityTracker()V

    .line 808
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 809
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 490
    invoke-super {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 492
    :cond_0
    return-void
.end method

.method public resetToTop()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 263
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 269
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mDataChanged:Z

    .line 270
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mItemCount:I

    .line 272
    if-eqz p1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mObserver:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$AdapterDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mRecycleBin:Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$RecycleBin;->setViewTypeCount(I)V

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->requestLayout()V

    .line 278
    return-void

    .line 266
    :cond_3
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 270
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setClipToPadding(Z)V

    .line 477
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mClipToPadding:Z

    .line 478
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 2001
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2002
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2003
    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .prologue
    .line 297
    if-ltz p1, :cond_1

    .line 298
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mLayoutMode:I

    .line 299
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->getListPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSpecificTop:I

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mFirstPosition:I

    .line 302
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mNeedSync:Z

    if-eqz v0, :cond_0

    .line 303
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncPosition:I

    .line 304
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->mSyncRowId:J

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView;->requestLayout()V

    .line 308
    :cond_1
    return-void
.end method
