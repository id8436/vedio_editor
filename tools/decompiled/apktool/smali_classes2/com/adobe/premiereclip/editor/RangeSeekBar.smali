.class public Lcom/adobe/premiereclip/editor/RangeSeekBar;
.super Landroid/widget/ImageView;
.source "RangeSeekBar.java"


# static fields
.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final DEFAULT_COLOR:I

.field public static final INVALID_POINTER_ID:I = 0xff


# instance fields
.field private final DEFAULT_MAX_RADIUS:I

.field private final DEFAULT_MIN_RADIUS:I

.field private final DEFAULT_SCALE_FACTOR:D

.field private final SNAP_THRESHOLD:D

.field private final TOUCH_RADIUS:F

.field private final absoluteMaxValue:F

.field private final absoluteMaxValuePrim:F

.field private final absoluteMinValue:F

.field private final absoluteMinValuePrim:F

.field private backgroundRect:Landroid/graphics/RectF;

.field private barWidth:F

.field private duration:J

.field private final lineHeight:F

.field private listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

.field private mActivePointerId:I

.field private mDownMotionX:F

.field private mIsDragging:Z

.field private mScaledTouchSlop:I

.field mTouchProgressOffset:F

.field private minBeatValue:F

.field private minNormalizedTrimHandleDistance:D

.field private minRadius:I

.field private normalizedMaxValue:D

.field private normalizedMinValue:D

.field private normalizedScrubberValue:D

.field private notifyWhileDragging:Z

.field private offset:J

.field private final padding:F

.field private final paint:Landroid/graphics/Paint;

.field private pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

.field private savedNormalizedMinValue:D

.field private scaleFactor:D

.field private final scrubberHeight:F

.field private final scrubberImage:Landroid/graphics/Bitmap;

.field private final seekbarHeight:F

.field private snappedNormalMaxValue:D

.field private splitListener:Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;

.field private syncPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbHalfHeight:F

.field private final thumbPressedImage:Landroid/graphics/Bitmap;

.field private thumbTouchDelta:F

.field private final trimHandleInDisabled:Landroid/graphics/Bitmap;

.field private final trimHandleOutDisabled:Landroid/graphics/Bitmap;

.field private trimHandlesDisabled:Z

.field private final trimhandleHalfWidth:F

.field private final trimhandleInImage:Landroid/graphics/Bitmap;

.field private final trimhandleOutImage:Landroid/graphics/Bitmap;

.field private final trimhandleWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x97

    .line 105
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>(FFLandroid/app/Activity;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    const/16 v5, 0x5a

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 142
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020185

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleInImage:Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020187

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleOutImage:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020186

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scrubberImage:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleInImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleWidth:F

    .line 64
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleHalfWidth:F

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleInImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbHalfHeight:F

    .line 66
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scrubberImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scrubberHeight:F

    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scrubberImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->seekbarHeight:F

    .line 68
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbHalfHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->lineHeight:F

    .line 69
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleWidth:F

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->backgroundRect:Landroid/graphics/RectF;

    .line 71
    const/high16 v0, 0x3fa00000    # 1.25f

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->TOUCH_RADIUS:F

    .line 74
    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->savedNormalizedMinValue:D

    .line 75
    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    .line 76
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    .line 77
    iput v8, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbTouchDelta:F

    .line 78
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    .line 79
    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifyWhileDragging:Z

    .line 86
    const-wide v0, 0x3ff147ae147ae148L    # 1.08

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_SCALE_FACTOR:D

    .line 87
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->lineHeight:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_MIN_RADIUS:I

    .line 88
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_MIN_RADIUS:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_MAX_RADIUS:I

    .line 92
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_SCALE_FACTOR:D

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scaleFactor:D

    .line 93
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_MIN_RADIUS:I

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minRadius:I

    .line 94
    iput v8, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minBeatValue:F

    .line 96
    iput-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->SNAP_THRESHOLD:D

    .line 97
    iput-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandlesDisabled:Z

    .line 117
    const/16 v0, 0xff

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    .line 143
    iput p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValue:F

    .line 144
    iput p2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValue:F

    .line 145
    iput p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    .line 146
    iput p2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    .line 147
    const/16 v0, 0xb4

    invoke-static {v0, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleInImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->createBitmapWithColorFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandleInDisabled:Landroid/graphics/Bitmap;

    .line 149
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleOutImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->createBitmapWithColorFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandleOutDisabled:Landroid/graphics/Bitmap;

    .line 151
    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 154
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->barWidth:F

    .line 157
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setFocusable(Z)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 159
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->init()V

    .line 160
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method private createBitmapWithColorFilter(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 897
    .line 898
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 897
    invoke-static {p1, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 899
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 900
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 901
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 903
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 904
    invoke-virtual {v2, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 906
    return-object v0
.end method

.method private drawThumb(FZLandroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 671
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleHalfWidth:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbHalfHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 672
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleInImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private evalPressedThumb(F)Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;
    .locals 6

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, p1, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getDistance(FD)F

    move-result v1

    .line 684
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, p1, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getDistance(FD)F

    move-result v2

    .line 685
    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    invoke-direct {p0, p1, v4, v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getDistance(FD)F

    move-result v3

    .line 686
    cmpg-float v4, v1, v2

    if-gez v4, :cond_2

    iget v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->TOUCH_RADIUS:F

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_2

    .line 687
    cmpg-float v0, v3, v1

    if-gez v0, :cond_1

    .line 688
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    .line 717
    :cond_0
    :goto_0
    return-object v0

    .line 690
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    goto :goto_0

    .line 692
    :cond_2
    cmpg-float v4, v2, v3

    if-gez v4, :cond_4

    iget v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->TOUCH_RADIUS:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_4

    .line 693
    cmpg-float v0, v1, v2

    if-gez v0, :cond_3

    .line 694
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    goto :goto_0

    .line 696
    :cond_3
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    goto :goto_0

    .line 698
    :cond_4
    cmpg-float v1, v3, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->TOUCH_RADIUS:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_0

    .line 699
    cmpg-float v0, v2, v3

    if-gez v0, :cond_5

    .line 700
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    goto :goto_0

    .line 702
    :cond_5
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    goto :goto_0
.end method

.method private getDistance(FD)F
    .locals 2

    .prologue
    .line 730
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private handleSnapToClosestBeat()V
    .locals 10

    .prologue
    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 910
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 911
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->duration:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 912
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->lower_bound(Ljava/util/ArrayList;J)I

    move-result v6

    .line 914
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 915
    const/4 v2, -0x1

    if-eq v6, v2, :cond_5

    .line 916
    if-lez v6, :cond_4

    .line 917
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->offset:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->duration:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 919
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->offset:J

    sub-long/2addr v0, v6

    long-to-double v0, v0

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->duration:J

    long-to-double v6, v6

    div-double/2addr v0, v6

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    add-double/2addr v0, v6

    .line 922
    :goto_1
    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    sub-double/2addr v6, v2

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    .line 923
    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    sub-double v4, v0, v4

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    sub-double/2addr v6, v2

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 924
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSnappedNormalMaxValue(D)V

    .line 934
    :cond_0
    :goto_2
    return-void

    .line 926
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSnappedNormalMaxValue(D)V

    goto :goto_2

    .line 928
    :cond_2
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    sub-double v2, v0, v2

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_3

    .line 929
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setSnappedNormalMaxValue(D)V

    goto :goto_2

    .line 931
    :cond_3
    iput-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    goto :goto_2

    :cond_4
    move-wide v2, v4

    goto :goto_0

    :cond_5
    move-wide v2, v4

    goto :goto_1
.end method

.method private final init()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mScaledTouchSlop:I

    .line 164
    return-void
.end method

.method private isInThumbRange(FD)Z
    .locals 2

    .prologue
    .line 743
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->TOUCH_RADIUS:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizedToScreen(D)F
    .locals 5

    .prologue
    .line 834
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private normalizedToValue(D)F
    .locals 5

    .prologue
    .line 808
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    float-to-double v0, v0

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private notifySplitListener()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->splitListener:Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->isSplitEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->splitListener:Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;

    invoke-interface {v0, p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;->onSplitEnabled(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->splitListener:Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;

    invoke-interface {v0, p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;->onSplitDisabled(Lcom/adobe/premiereclip/editor/RangeSeekBar;)V

    goto :goto_0
.end method

.method private final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 491
    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 495
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 496
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    .line 497
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    .line 499
    :cond_0
    return-void

    .line 495
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private screenToNormalized(F)D
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const-wide/16 v0, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getWidth()I

    move-result v2

    .line 846
    int-to-float v3, v2

    iget v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 852
    :goto_0
    return-wide v0

    .line 851
    :cond_0
    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    sub-float v3, p1, v3

    int-to-float v2, v2

    iget v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    div-float v2, v3, v2

    float-to-double v2, v2

    .line 852
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private setNormalizedMaxValue(DZ)V
    .locals 9

    .prologue
    .line 777
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    add-double/2addr v4, v6

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    .line 778
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 779
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    .line 781
    :cond_0
    if-eqz p3, :cond_1

    .line 782
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 784
    :cond_1
    return-void
.end method

.method private setScaleFactor()V
    .locals 5

    .prologue
    .line 954
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    .line 956
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scaleFactor:D

    .line 957
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 958
    iget v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_0

    .line 959
    iget v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    .line 961
    :cond_0
    iget v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    .line 962
    iget v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    :goto_1
    move v1, v0

    .line 964
    goto :goto_0

    .line 965
    :cond_1
    cmpl-float v0, v2, v1

    if-eqz v0, :cond_2

    .line 966
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_MAX_RADIUS:I

    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_MIN_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scaleFactor:D

    .line 968
    :cond_2
    iput v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minBeatValue:F

    .line 969
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private setScrubberPosition(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 517
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 518
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 519
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedScrubberValue(D)V

    .line 520
    return-void
.end method

.method private setSnappedNormalMaxValue(D)V
    .locals 9

    .prologue
    .line 937
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    .line 938
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    .line 940
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(DZ)V

    .line 942
    sub-double v4, v0, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 943
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    .line 944
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 950
    :goto_0
    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    .line 951
    return-void

    .line 947
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    .line 948
    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    goto :goto_0
.end method

.method private final trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 502
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbTouchDelta:F

    add-float/2addr v0, v1

    .line 505
    sget-object v1, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    sget-object v1, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0

    .line 511
    :cond_2
    sget-object v1, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedScrubberValue(D)V

    goto :goto_0
.end method

.method private valueToNormalized(F)D
    .locals 3

    .prologue
    .line 819
    const/4 v0, 0x0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 821
    const-wide/16 v0, 0x0

    .line 823
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_0
.end method


# virtual methods
.method public disableInAndOutTrimHandle()V
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandlesDisabled:Z

    .line 988
    return-void
.end method

.method public enableInAndOutTrimHandle()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandlesDisabled:Z

    .line 992
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 993
    return-void
.end method

.method public getAbsoluteMaxValue()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValue:F

    return v0
.end method

.method public getAbsoluteMinValue()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValue:F

    return v0
.end method

.method public getBarHeight()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->seekbarHeight:F

    return v0
.end method

.method public getBarWidth()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->barWidth:F

    return v0
.end method

.method public getEndX()F
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->barWidth:F

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getEndY()F
    .locals 3

    .prologue
    .line 179
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->seekbarHeight:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->lineHeight:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSelectedMaxValue()F
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToValue(D)F

    move-result v0

    return v0
.end method

.method public getSelectedMinValue()F
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToValue(D)F

    move-result v0

    return v0
.end method

.method public getSelectedScrubberValue()F
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToValue(D)F

    move-result v0

    return v0
.end method

.method public getStartX()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    return v0
.end method

.method public getStartY()F
    .locals 3

    .prologue
    .line 171
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->seekbarHeight:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->lineHeight:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getSyncPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNotifyWhileDragging()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifyWhileDragging:Z

    return v0
.end method

.method public isSplitEnabled()Z
    .locals 4

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 566
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 569
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->backgroundRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->lineHeight:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->padding:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->lineHeight:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->backgroundRect:Landroid/graphics/RectF;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 574
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    const/16 v2, 0xc9

    const/16 v3, 0xc9

    const/16 v4, 0xc9

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 578
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    .line 579
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    .line 580
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    move-wide v6, v0

    .line 584
    :goto_0
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    .line 585
    invoke-direct {p0, v6, v7}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v3

    .line 588
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget v2, Lcom/adobe/premiereclip/editor/RangeSeekBar;->DEFAULT_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 589
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->backgroundRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->backgroundRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 591
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbHalfHeight:F

    sub-float v1, v0, v1

    .line 593
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x40

    const/16 v4, 0x40

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 596
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandlesDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandleInDisabled:Landroid/graphics/Bitmap;

    :goto_1
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    .line 597
    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v2

    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleWidth:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 596
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 602
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandlesDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandleOutDisabled:Landroid/graphics/Bitmap;

    .line 603
    :goto_2
    invoke-direct {p0, v6, v7}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 602
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 607
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimHandlesDisabled:Z

    if-nez v0, :cond_4

    .line 608
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 610
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->savedNormalizedMinValue:D

    .line 614
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 615
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 616
    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->offset:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->duration:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 618
    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minRadius:I

    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scaleFactor:D

    iget v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    iget v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minBeatValue:F

    sub-float/2addr v0, v6

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    add-int/2addr v0, v3

    .line 621
    float-to-double v4, v2

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->savedNormalizedMinValue:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scrubberImage:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    .line 633
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    iget v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->scrubberHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 632
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    .line 596
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleInImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 602
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trimhandleOutImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 624
    :cond_7
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 625
    float-to-double v4, v2

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->savedNormalizedMinValue:D

    add-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v3

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    int-to-float v5, v0

    iget-object v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 626
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    float-to-double v2, v2

    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->savedNormalizedMinValue:D

    add-double/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget-object v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move-wide v6, v0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 3

    .prologue
    .line 550
    monitor-enter p0

    const/16 v0, 0xc8

    .line 551
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    .line 554
    :goto_0
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->seekbarHeight:F

    float-to-int v0, v0

    .line 555
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 558
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 654
    check-cast p1, Landroid/os/Bundle;

    .line 655
    const-string/jumbo v0, "SUPER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 656
    const-string/jumbo v0, "MIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    .line 657
    const-string/jumbo v0, "MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    .line 658
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 643
    const-string/jumbo v1, "SUPER"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 644
    const-string/jumbo v1, "MIN"

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 645
    const-string/jumbo v1, "MAX"

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 646
    return-object v0
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mIsDragging:Z

    .line 536
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mIsDragging:Z

    .line 543
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    :goto_0
    return v0

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 355
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 484
    goto :goto_0

    .line 359
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    .line 360
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    .line 363
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->evalPressedThumb(F)Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    .line 366
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    if-nez v0, :cond_3

    .line 367
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setScrubberPosition(Landroid/view/MotionEvent;)V

    .line 368
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    sget-object v2, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;->onThumbMoveStarted(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V

    .line 370
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    sget-object v2, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;->onThumbMoveEnded(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V

    .line 372
    :cond_2
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifySplitListener()V

    goto :goto_1

    .line 377
    :cond_3
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MIN:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbTouchDelta:F

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v0, :cond_4

    .line 387
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;->onThumbMoveStarted(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V

    .line 388
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 389
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    iput-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->savedNormalizedMinValue:D

    .line 394
    :cond_4
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setPressed(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 396
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onStartTrackingTouch()V

    .line 397
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 398
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 380
    :cond_5
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 381
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbTouchDelta:F

    goto :goto_2

    .line 384
    :cond_6
    iput v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbTouchDelta:F

    goto :goto_2

    .line 402
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    if-eqz v0, :cond_1

    .line 404
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_a

    .line 405
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 421
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    if-eqz v0, :cond_8

    .line 422
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;->onThumbMoved(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V

    .line 428
    :cond_8
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->SCRUBBER:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 429
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifySplitListener()V

    .line 432
    :cond_9
    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->handleSnapToClosestBeat()V

    goto/16 :goto_1

    .line 409
    :cond_a
    iget v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 412
    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 413
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setPressed(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 415
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onStartTrackingTouch()V

    .line 416
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 417
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_3

    .line 438
    :pswitch_3
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_d

    .line 439
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 440
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onStopTrackingTouch()V

    .line 441
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setPressed(Z)V

    .line 452
    :goto_4
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->MAX:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_b

    .line 453
    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->snappedNormalMaxValue:D

    invoke-virtual {p0, v2, v3}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 456
    :cond_b
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 457
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    if-eqz v0, :cond_c

    .line 458
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    invoke-interface {v0, v2}, Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;->onThumbMoveEnded(Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;)V

    .line 459
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifySplitListener()V

    .line 461
    :cond_c
    iput v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->thumbTouchDelta:F

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->pressedThumb:Lcom/adobe/premiereclip/editor/RangeSeekBar$Thumb;

    goto/16 :goto_1

    .line 446
    :cond_d
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onStartTrackingTouch()V

    .line 447
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 448
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onStopTrackingTouch()V

    goto :goto_4

    .line 465
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mDownMotionX:F

    .line 468
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mActivePointerId:I

    .line 469
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 473
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 474
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 477
    :pswitch_6
    iget-boolean v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_e

    .line 478
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->onStopTrackingTouch()V

    .line 479
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setPressed(Z)V

    .line 481
    :cond_e
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setMinNormalizedTrimHandleDistance(D)V
    .locals 1

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    .line 196
    return-void
.end method

.method public setNormalizedMaxValue(D)V
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(DZ)V

    .line 768
    return-void
.end method

.method public setNormalizedMinValue(D)V
    .locals 9

    .prologue
    .line 753
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    iget-wide v6, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->minNormalizedTrimHandleDistance:D

    sub-double/2addr v4, v6

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    .line 754
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    iget-wide v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 755
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 758
    return-void
.end method

.method public setNormalizedScrubberValue(D)V
    .locals 3

    .prologue
    .line 794
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMaxValue:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedMinValue:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 795
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->normalizedScrubberValue:D

    .line 796
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->invalidate()V

    .line 798
    :cond_0
    return-void
.end method

.method public setNotifyWhileDragging(Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->notifyWhileDragging:Z

    .line 205
    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->listener:Lcom/adobe/premiereclip/editor/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 308
    return-void
.end method

.method public setSelectedMaxValue(F)V
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 268
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->valueToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method public setSelectedMinValue(F)V
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 243
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->valueToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedMinValue(D)V

    goto :goto_0
.end method

.method public setSelectedScrubberValue(F)V
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    iget v1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMaxValuePrim:F

    iget v2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->absoluteMinValuePrim:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 293
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedScrubberValue(D)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->valueToNormalized(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setNormalizedScrubberValue(D)V

    goto :goto_0
.end method

.method public setSplitListener(Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->splitListener:Lcom/adobe/premiereclip/editor/RangeSeekBar$SplitListener;

    .line 319
    return-void
.end method

.method public setSyncPoints(Ljava/util/ArrayList;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 976
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->syncPoints:Ljava/util/ArrayList;

    .line 977
    iput-wide p2, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->duration:J

    .line 978
    iput-wide p4, p0, Lcom/adobe/premiereclip/editor/RangeSeekBar;->offset:J

    .line 980
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/RangeSeekBar;->setScaleFactor()V

    .line 983
    :cond_0
    return-void
.end method
