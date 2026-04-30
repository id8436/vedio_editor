.class public Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CORNER_EXTENSION_DP:F

.field private static final DEFAULT_CORNER_LENGTH_DP:F = 20.0f

.field private static final DEFAULT_CORNER_OFFSET_DP:F

.field private static final DEFAULT_CORNER_THICKNESS_DP:F

.field private static final DEFAULT_LINE_THICKNESS_DP:F

.field private static final DEFAULT_SHOW_GUIDELINES_LIMIT:F = 100.0f

.field private static final GUIDELINES_OFF:I = 0x0

.field private static final GUIDELINES_ON:I = 0x2

.field private static final GUIDELINES_ON_TOUCH:I = 0x1

.field private static final SNAP_RADIUS_DP:I = 0x6


# instance fields
.field private initializedCropWindow:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCornerExtension:F

.field private mCornerLength:F

.field private mCornerOffset:F

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelines:I

.field private mHandleRadius:F

.field private mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchOffset:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;->getCornerThickness()F

    move-result v0

    sput v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_THICKNESS_DP:F

    .line 49
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;->getLineThickness()F

    move-result v0

    sput v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_LINE_THICKNESS_DP:F

    .line 50
    sget v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_THICKNESS_DP:F

    div-float/2addr v0, v2

    sget v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_LINE_THICKNESS_DP:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_OFFSET_DP:F

    .line 51
    sget v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_THICKNESS_DP:F

    div-float/2addr v0, v2

    sget v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_OFFSET_DP:F

    add-float/2addr v0, v1

    sput v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_EXTENSION_DP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    iput-boolean v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    .line 100
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    .line 101
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    .line 105
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 111
    iput-boolean v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    .line 122
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->init(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput-boolean v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    .line 100
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    .line 101
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    .line 105
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 111
    iput-boolean v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    .line 127
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->init(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 16

    .prologue
    .line 498
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v12

    .line 499
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 500
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v15

    .line 501
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 518
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 519
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 520
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v11, v5

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v12, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v15

    move v11, v5

    move v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 522
    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 526
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 527
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v7

    .line 528
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 529
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v9

    .line 534
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v1, v6, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v3, v6, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v4, v7, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 539
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v3, v6, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v4, v7, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 542
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v1, v8, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v3, v8, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v4, v7, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 547
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v2, v7, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v3, v8, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v4, v7, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 550
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v1, v6, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    sub-float v3, v6, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v4, v9, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 555
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    add-float v3, v6, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v4, v9, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 562
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v1, v8, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v3, v8, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v4, v9, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 567
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v2, v9, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    sub-float v3, v8, v0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    add-float v4, v9, v0

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 573
    return-void
.end method

.method private drawRuleOfThirdsGuidelines(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    .line 474
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v6

    .line 475
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 476
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v8

    .line 477
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 480
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v0

    div-float v7, v0, v9

    .line 482
    add-float v1, v6, v7

    .line 483
    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 484
    sub-float v1, v8, v7

    .line 485
    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 488
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v0

    div-float/2addr v0, v9

    .line 490
    add-float v7, v2, v0

    .line 491
    iget-object v10, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 492
    sub-float v7, v4, v0

    .line 493
    iget-object v10, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 494
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 353
    invoke-static {p1}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->getTargetRadius(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mHandleRadius:F

    .line 355
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mSnapRadius:F

    .line 359
    invoke-static {p1}, Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;->newBorderPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 360
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;->newGuidelinePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 361
    invoke-static {p1}, Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;->newBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 362
    invoke-static {p1}, Lcom/behance/sdk/edmodo/cropper/util/PaintUtil;->newCornerPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerPaint:Landroid/graphics/Paint;

    .line 365
    sget v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_OFFSET_DP:F

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerOffset:F

    .line 367
    sget v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->DEFAULT_CORNER_EXTENSION_DP:F

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerExtension:F

    .line 369
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mCornerLength:F

    .line 373
    iput v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    .line 374
    return-void
.end method

.method private initCropWindow(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x40000000    # 2.0f

    .line 386
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    .line 389
    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v0, :cond_2

    .line 394
    invoke-static {p1}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateAspectRatio(Landroid/graphics/Rect;)F

    move-result v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 396
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 397
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 399
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 402
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    invoke-static {v1, v2, v3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateWidth(FFF)F

    move-result v1

    .line 414
    div-float/2addr v1, v4

    .line 415
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sub-float v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 416
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 455
    :goto_0
    return-void

    .line 420
    :cond_1
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 421
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 423
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 426
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    invoke-static {v1, v2, v3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateHeight(FFF)F

    move-result v1

    .line 439
    div-float/2addr v1, v4

    .line 440
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sub-float v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 441
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 448
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    .line 450
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 451
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 452
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 453
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    goto :goto_0
.end method

.method private onActionDown(FF)V
    .locals 13

    .prologue
    .line 583
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 584
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 585
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 586
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v5

    .line 588
    iget v6, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mHandleRadius:F

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->getPressedHandle(FFFFFFF)Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    .line 590
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v6, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    move v7, p1

    move v8, p2

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-static/range {v6 .. v12}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->getOffset(Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTouchOffset:Landroid/util/Pair;

    .line 598
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    goto :goto_0
.end method

.method private onActionMove(FF)V
    .locals 6

    .prologue
    .line 623
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTouchOffset:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float v1, p1, v0

    .line 631
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTouchOffset:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float v2, p2, v0

    .line 634
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    iget-object v4, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mSnapRadius:F

    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->updateCropWindow(FFFLandroid/graphics/Rect;F)V

    .line 639
    :goto_1
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    iget-object v3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mSnapRadius:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->updateCropWindow(FFLandroid/graphics/Rect;F)V

    goto :goto_1
.end method

.method private onActionUp()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 610
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    .line 612
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    goto :goto_0
.end method

.method public static showGuidelines()Z
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 465
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 466
    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 467
    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 148
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 151
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->drawRuleOfThirdsGuidelines(Landroid/graphics/Canvas;)V

    .line 162
    :cond_0
    :goto_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 163
    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 164
    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 165
    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 162
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    .line 169
    return-void

    .line 152
    :cond_1
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mPressedHandle:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->drawRuleOfThirdsGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 156
    :cond_2
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 175
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->onActionDown(FF)V

    move v0, v1

    .line 183
    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 188
    invoke-direct {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->onActionUp()V

    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->onActionMove(FF)V

    .line 193
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 194
    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetCropOverlayView()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 223
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 225
    :cond_0
    return-void
.end method

.method public setAspectRatioX(I)V
    .locals 2

    .prologue
    .line 273
    if-gtz p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iput p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    .line 277
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 279
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 281
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 284
    :cond_1
    return-void
.end method

.method public setAspectRatioY(I)V
    .locals 2

    .prologue
    .line 294
    if-gtz p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iput p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    .line 298
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 300
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 302
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 305
    :cond_1
    return-void
.end method

.method public setBitmapRect(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    .line 211
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 212
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    .line 259
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 263
    :cond_0
    return-void
.end method

.method public setGuidelines(I)V
    .locals 2

    .prologue
    .line 236
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Guideline value must be set between 0 and 2. See documentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iput p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    .line 241
    iget-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->initCropWindow(Landroid/graphics/Rect;)V

    .line 243
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->invalidate()V

    .line 246
    :cond_2
    return-void
.end method

.method public setInitialAttributeValues(IZII)V
    .locals 2

    .prologue
    .line 324
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Guideline value must be set between 0 and 2. See documentation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    iput p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mGuidelines:I

    .line 329
    iput-boolean p2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mFixAspectRatio:Z

    .line 331
    if-gtz p3, :cond_2

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_2
    iput p3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    .line 335
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 338
    if-gtz p4, :cond_3

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_3
    iput p4, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    .line 342
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->mTargetAspectRatio:F

    .line 345
    return-void
.end method
