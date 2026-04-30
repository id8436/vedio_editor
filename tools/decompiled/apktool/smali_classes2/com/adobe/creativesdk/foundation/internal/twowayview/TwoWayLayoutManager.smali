.class public abstract Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "TwoWayLayoutManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "TwoWayLayoutManager"


# instance fields
.field private mIsVertical:Z

.field private mLayoutEnd:I

.field private mLayoutStart:I

.field private mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

.field private mPendingScrollOffset:I

.field private mPendingScrollPosition:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    .line 60
    iput v5, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollPosition:I

    .line 61
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 71
    sget-object v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_TwoWayLayoutManager:[I

    .line 72
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 75
    :goto_0
    if-ge v0, v2, :cond_1

    .line 76
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 78
    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_TwoWayLayoutManager_android_orientation:I

    if-ne v3, v4, :cond_0

    .line 79
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 80
    if-ltz v3, :cond_0

    .line 81
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->values()[Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setOrientation(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    .line 60
    const/4 v2, -0x1

    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollPosition:I

    .line 61
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 90
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    if-ne p1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    .line 91
    return-void

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    return v0
.end method

.method private adjustViewsStartOrEnd()V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 395
    if-gez v0, :cond_2

    .line 397
    const/4 v0, 0x0

    .line 400
    :cond_2
    if-eqz v0, :cond_0

    .line 401
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->offsetChildren(I)V

    goto :goto_0
.end method

.method private correctTooHigh(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getLastVisiblePosition()I

    move-result v0

    .line 310
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v1

    .line 316
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getEndWithPadding()I

    move-result v0

    .line 317
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v2

    .line 321
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    sub-int/2addr v0, v3

    .line 325
    if-lez v0, :cond_0

    if-gtz v2, :cond_2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    if-ge v3, v1, :cond_0

    .line 326
    :cond_2
    if-nez v2, :cond_3

    .line 328
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 332
    :cond_3
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 334
    if-lez v2, :cond_0

    .line 337
    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillBefore(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 340
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    goto :goto_0
.end method

.method private correctTooLow(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    .line 349
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v0

    .line 354
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getEndWithPadding()I

    move-result v1

    .line 355
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 356
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getLastVisiblePosition()I

    move-result v3

    .line 360
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    sub-int v0, v4, v0

    .line 365
    if-lez v0, :cond_0

    .line 366
    add-int/lit8 v4, v2, -0x1

    if-lt v3, v4, :cond_2

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    if-le v4, v1, :cond_4

    .line 367
    :cond_2
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_3

    .line 369
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    sub-int v1, v4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 373
    :cond_3
    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 375
    add-int/lit8 v0, v2, -0x1

    if-ge v3, v0, :cond_0

    .line 378
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillAfter(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 381
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    goto :goto_0

    .line 383
    :cond_4
    add-int/lit8 v0, v2, -0x1

    if-ne v3, v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    goto :goto_0
.end method

.method private fillAfter(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillAfter(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 265
    return-void
.end method

.method private fillAfter(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getEndWithPadding()I

    move-result v0

    add-int/2addr v0, p4

    .line 270
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 271
    :goto_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->canAddMoreViews(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge p1, v1, :cond_0

    .line 272
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-direct {p0, p1, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->makeAndAddView(ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 273
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method private fillBefore(ILandroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillBefore(ILandroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 252
    return-void
.end method

.method private fillBefore(ILandroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v0

    sub-int/2addr v0, p3

    .line 257
    :goto_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->canAddMoreViews(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 258
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-direct {p0, p1, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->makeAndAddView(ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 259
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method private fillFromScrapList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    .line 443
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p2, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->findNextScrapView(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 451
    invoke-direct {p0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setupChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 452
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 446
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 452
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 454
    :cond_2
    return-void
.end method

.method private fillGap(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    .line 238
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 239
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v2

    .line 241
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p1, v3, :cond_0

    .line 242
    add-int/2addr v2, v0

    invoke-direct {p0, v2, p2, p3, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillAfter(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 243
    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->correctTooHigh(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillBefore(ILandroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 246
    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->correctTooLow(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0
.end method

.method private fillSpecific(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-direct {p0, p1, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->makeAndAddView(ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 287
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 288
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 296
    :goto_1
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillBefore(ILandroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 300
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->adjustViewsStartOrEnd()V

    .line 302
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillAfter(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 303
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->correctTooHigh(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_1
    move v3, v1

    move v1, v0

    move v0, v3

    .line 293
    goto :goto_1
.end method

.method private findFirstValidChildPosition(I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v3

    move v2, v1

    .line 635
    :goto_0
    if-ge v2, v3, :cond_1

    .line 636
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 637
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 638
    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 643
    :goto_1
    return v0

    .line 635
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 643
    goto :goto_1
.end method

.method private static findNextScrapView(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;",
            "I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 407
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 410
    const v1, 0x7fffffff

    .line 412
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_0
    if-ge v5, v6, :cond_5

    .line 413
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 415
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v2

    sub-int v7, v2, p2

    .line 416
    if-gez v7, :cond_0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-eq p1, v2, :cond_4

    :cond_0
    if-lez v7, :cond_1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p1, v2, :cond_1

    move v0, v1

    move-object v1, v3

    .line 412
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 421
    :cond_1
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 422
    if-ge v2, v1, :cond_4

    .line 426
    if-nez v7, :cond_3

    .line 432
    :goto_2
    if-eqz v0, :cond_2

    .line 433
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 436
    :goto_3
    return-object v0

    :cond_2
    move-object v0, v4

    goto :goto_3

    :cond_3
    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method

.method private getPendingItemSelectionState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->access$000(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;)Landroid/os/Bundle;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalSpace()I
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleUpdate()V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    .line 489
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    goto :goto_0
.end method

.method private makeAndAddView(ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 469
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v2

    .line 471
    if-nez v2, :cond_0

    .line 472
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p2, v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->addView(Landroid/view/View;I)V

    .line 475
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setupChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 477
    if-nez v2, :cond_1

    .line 478
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->updateLayoutEdgesFromNewChild(Landroid/view/View;)V

    .line 481
    :cond_1
    return-object v1

    .line 472
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetChildren(I)V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->offsetChildrenVertical(I)V

    .line 132
    :goto_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    .line 133
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 134
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->offsetChildrenHorizontal(I)V

    goto :goto_0
.end method

.method private recycleChildrenFromEnd(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getEndWithPadding()I

    move-result v3

    .line 171
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    .line 175
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-ltz v1, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 177
    invoke-virtual {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v5

    .line 179
    if-gt v5, v3, :cond_1

    .line 189
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 190
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 191
    invoke-virtual {p0, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 192
    invoke-direct {p0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->updateLayoutEdgesFromRemovedChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    goto :goto_1

    .line 184
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 186
    invoke-virtual {p0, v4, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->detachChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 175
    add-int/lit8 v0, v1, -0x1

    move v6, v0

    move v0, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    .line 194
    :cond_2
    return-void
.end method

.method private recycleChildrenFromStart(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v4

    .line 146
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v5

    move v1, v2

    move v0, v2

    .line 149
    :goto_0
    if-ge v1, v4, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 151
    invoke-virtual {p0, v6}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    move-result v3

    .line 153
    if-lt v3, v5, :cond_1

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 163
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {p0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 165
    invoke-direct {p0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->updateLayoutEdgesFromRemovedChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    goto :goto_1

    .line 157
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 159
    invoke-virtual {p0, v6, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->detachChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 167
    :cond_2
    return-void
.end method

.method private recycleChildrenOutOfBounds(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p1, v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->recycleChildrenFromStart(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->recycleChildrenFromEnd(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method

.method private resetLayoutEdges()V
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    .line 574
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 575
    return-void
.end method

.method private scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v4

    .line 198
    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v2

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getStartWithPadding()I

    move-result v5

    .line 203
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getEndWithPadding()I

    move-result v6

    .line 204
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v7

    .line 206
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getTotalSpace()I

    move-result v0

    .line 207
    if-gez p1, :cond_4

    .line 208
    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 213
    :goto_1
    if-nez v7, :cond_5

    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    if-lt v0, v5, :cond_5

    if-gtz v3, :cond_5

    move v0, v1

    .line 215
    :goto_2
    add-int/2addr v4, v7

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v7

    if-ne v4, v7, :cond_6

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    if-gt v4, v6, :cond_6

    if-ltz v3, :cond_6

    .line 218
    :goto_3
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 222
    neg-int v0, v3

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->offsetChildren(I)V

    .line 224
    if-lez v3, :cond_7

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    .line 225
    :goto_4
    invoke-direct {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->recycleChildrenOutOfBounds(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 227
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 228
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    sub-int v4, v5, v1

    invoke-virtual {p0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->canAddMoreViews(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    add-int/2addr v1, v6

    .line 229
    invoke-virtual {p0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->canAddMoreViews(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillGap(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    :cond_3
    move v2, v3

    .line 233
    goto :goto_0

    .line 210
    :cond_4
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_5
    move v0, v2

    .line 213
    goto :goto_2

    :cond_6
    move v1, v2

    .line 215
    goto :goto_3

    .line 224
    :cond_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    goto :goto_4
.end method

.method private setupChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 460
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->setViewChecked(Landroid/view/View;Z)V

    .line 463
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->measureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 464
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->layoutChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 465
    return-void
.end method

.method private updateLayoutEdgesFromNewChild(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v0

    .line 499
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    if-ge v0, v1, :cond_0

    .line 500
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    move-result v0

    .line 504
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    if-le v0, v1, :cond_1

    .line 505
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 507
    :cond_1
    return-void
.end method

.method private updateLayoutEdgesFromRemovedChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 6

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v2

    .line 511
    if-nez v2, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->resetLayoutEdges()V

    .line 570
    :cond_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v1

    .line 517
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    move-result v0

    .line 519
    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    if-le v1, v3, :cond_2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    if-lt v0, v3, :cond_0

    .line 525
    :cond_2
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p2, v3, :cond_4

    .line 528
    const v1, 0x7fffffff

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    .line 529
    const/4 v1, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 539
    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-gt v0, v3, :cond_0

    .line 540
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 542
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    if-ne p2, v4, :cond_5

    .line 543
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildStart(Landroid/view/View;)I

    move-result v3

    .line 544
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    if-ge v3, v4, :cond_3

    .line 545
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutStart:I

    .line 550
    :cond_3
    if-ge v3, v1, :cond_0

    .line 554
    add-int/lit8 v0, v0, 0x1

    .line 555
    goto :goto_0

    .line 534
    :cond_4
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 535
    add-int/lit8 v0, v2, -0x1

    .line 536
    goto :goto_0

    .line 556
    :cond_5
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildEnd(Landroid/view/View;)I

    move-result v3

    .line 557
    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    if-le v3, v4, :cond_6

    .line 558
    iput v3, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mLayoutEnd:I

    .line 563
    :cond_6
    if-le v3, v1, :cond_0

    .line 567
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract canAddMoreViews(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;I)Z
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 862
    const/4 v0, 0x0

    .line 865
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 871
    const/4 v0, 0x0

    .line 874
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method protected detachChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 777
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 778
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 780
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAnchorItemPosition(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 615
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 617
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPendingScrollPosition()I

    move-result v0

    .line 618
    if-eq v0, v1, :cond_1

    .line 619
    if-ltz v0, :cond_0

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 624
    :cond_1
    if-eq v0, v1, :cond_2

    .line 629
    :goto_0
    return v0

    .line 626
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 627
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->findFirstValidChildPosition(I)I

    move-result v0

    goto :goto_0

    .line 629
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildEnd(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method protected getChildStart(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 679
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 661
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 655
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 649
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 673
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 667
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method protected getEndWithPadding()I
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getTotalSpace()I

    move-result v0

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 943
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 947
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    .line 952
    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x0

    .line 956
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getOrientation()Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->HORIZONTAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    goto :goto_0
.end method

.method protected getPendingScrollOffset()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollOffset:I

    goto :goto_0
.end method

.method protected getPendingScrollPosition()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->access$100(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;)I

    move-result v0

    .line 603
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollPosition:I

    goto :goto_0
.end method

.method protected getStartWithPadding()I
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract layoutChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 685
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, p2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v3, p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v4, p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, p5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 687
    return-void
.end method

.method protected abstract measureChild(Landroid/view/View;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 705
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    move-result-object v0

    .line 706
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->clearChoices()V

    .line 709
    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 692
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 693
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    .prologue
    .line 697
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 699
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->handleUpdate()V

    .line 753
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->handleUpdate()V

    .line 773
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->handleUpdate()V

    .line 768
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->handleUpdate()V

    .line 758
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->handleUpdate()V

    .line 763
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_1

    .line 715
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPendingItemSelectionState()Landroid/os/Bundle;

    move-result-object v1

    .line 716
    if-eqz v1, :cond_0

    .line 717
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 720
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->onAdapterDataChanged()V

    .line 725
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getAnchorItemPosition(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 726
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 727
    invoke-direct {p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillSpecific(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 729
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->onLayoutScrapList(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 731
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    .line 733
    return-void
.end method

.method protected onLayoutScrapList(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getChildCount()I

    move-result v0

    .line 737
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v0

    .line 742
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->START:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillFromScrapList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    .line 743
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;->END:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->fillFromScrapList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V

    goto :goto_0
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 0

    .prologue
    .line 899
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 900
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 924
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingSavedState:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    .line 925
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->requestLayout()V

    .line 926
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 904
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->EMPTY_STATE:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 906
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getPendingScrollPosition()I

    move-result v0

    .line 907
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 908
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    .line 910
    :cond_0
    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->access$102(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;I)I

    .line 912
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->from(Landroid/support/v7/widget/RecyclerView;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->access$002(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 919
    :goto_0
    return-object v1

    .line 916
    :cond_1
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;->access$002(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$SavedState;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 792
    const/4 v0, 0x0

    .line 795
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->scrollToPositionWithOffset(II)V

    .line 820
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0

    .prologue
    .line 823
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->setPendingScrollPositionWithOffset(II)V

    .line 824
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->requestLayout()V

    .line 825
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-nez v0, :cond_0

    .line 801
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V
    .locals 2

    .prologue
    .line 933
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;->VERTICAL:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 934
    :goto_0
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    if-ne v1, v0, :cond_1

    .line 940
    :goto_1
    return-void

    .line 933
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 938
    :cond_1
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mIsVertical:Z

    .line 939
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->requestLayout()V

    goto :goto_1
.end method

.method protected setPendingScrollPositionWithOffset(II)V
    .locals 0

    .prologue
    .line 594
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollPosition:I

    .line 595
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->mPendingScrollOffset:I

    .line 596
    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2

    .prologue
    .line 829
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;Landroid/content/Context;)V

    .line 855
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 856
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 857
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x1

    return v0
.end method
