.class public final enum Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;
.super Ljava/lang/Enum;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

.field public static MIN_CROP_LENGTH_PX:I

.field public static final enum RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

.field public static final enum TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;


# instance fields
.field private mCoordinate:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 28
    new-instance v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 29
    new-instance v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 30
    new-instance v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 37
    const/16 v0, 0x28

    sput v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static adjustBottom(FLandroid/graphics/Rect;FF)F
    .locals 4

    .prologue
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 525
    .line 527
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 528
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 546
    :goto_0
    return v0

    .line 536
    :cond_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 537
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 540
    :goto_1
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v2, p0, v2

    mul-float/2addr v2, p3

    sget v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 541
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    add-float/2addr v1, v2

    .line 543
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static adjustLeft(FLandroid/graphics/Rect;FF)F
    .locals 4

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 414
    .line 416
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 417
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 435
    :goto_0
    return v0

    .line 426
    :cond_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    .line 427
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 430
    :goto_1
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v2, p0

    div-float/2addr v2, p3

    sget v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 431
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    .line 433
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static adjustRight(FLandroid/graphics/Rect;FF)F
    .locals 4

    .prologue
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 449
    .line 452
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 453
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 474
    :goto_0
    return v0

    .line 462
    :cond_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    .line 463
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 466
    :goto_1
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v2, p0, v2

    div-float/2addr v2, p3

    sget v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 467
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    .line 470
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static adjustTop(FLandroid/graphics/Rect;FF)F
    .locals 4

    .prologue
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 488
    .line 490
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 491
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 511
    :goto_0
    return v0

    .line 500
    :cond_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    .line 501
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 504
    :goto_1
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float/2addr v2, p0

    mul-float/2addr v2, p3

    sget v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 505
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sget v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    int-to-float v2, v2

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    .line 507
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getHeight()F
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getWidth()F
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isOutOfBounds(FFFFLandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 246
    iget v0, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    iget v0, p5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    return-object v0
.end method

.method public static values()[Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->$VALUES:[Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, [Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    return-object v0
.end method


# virtual methods
.method public adjustCoordinate(F)V
    .locals 6

    .prologue
    .line 114
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 115
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 116
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 117
    sget-object v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 119
    sget-object v4, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-static {v1, v2, v3, p1}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-static {v0, v2, v3, p1}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-static {v0, v1, v3, p1}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 130
    :pswitch_3
    invoke-static {v0, v1, v2, p1}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public adjustCoordinate(FFLandroid/graphics/Rect;FF)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-static {p1, p3, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustLeft(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustTop(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-static {p1, p3, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustRight(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-static {p2, p3, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustBottom(FLandroid/graphics/Rect;FF)F

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCoordinate()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    return v0
.end method

.method public isNewRectangleOutOfBounds(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->snapOffset(Landroid/graphics/Rect;)F

    move-result v0

    .line 149
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 232
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 151
    :pswitch_0
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 153
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v3, v2, v0

    .line 154
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 155
    invoke-static {v1, v4, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v2

    move-object v0, p0

    move-object v5, p2

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 160
    :cond_1
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v1

    .line 162
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v1, v0

    .line 163
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    .line 164
    invoke-static {v1, v4, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateLeft(FFFF)F

    move-result v2

    move-object v0, p0

    move-object v5, p2

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    .line 173
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float v4, v1, v0

    .line 174
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 175
    invoke-static {v2, v4, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v1

    move-object v0, p0

    move-object v5, p2

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_2
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    .line 182
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float v2, v1, v0

    .line 183
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 184
    invoke-static {v2, v4, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateTop(FFFF)F

    move-result v1

    move-object v0, p0

    move-object v5, p2

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 191
    :pswitch_2
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 193
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    sub-float v3, v2, v0

    .line 194
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 195
    invoke-static {v2, v1, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v4

    move-object v0, p0

    move-object v5, p2

    .line 197
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 200
    :cond_3
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v1

    .line 202
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float/2addr v1, v0

    .line 203
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 204
    invoke-static {v2, v1, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateRight(FFFF)F

    move-result v4

    move-object v0, p0

    move-object v5, p2

    .line 206
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 212
    :pswitch_3
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    .line 214
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float v4, v1, v0

    .line 215
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 216
    invoke-static {v2, v1, v4, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v3

    move-object v0, p0

    move-object v5, p2

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 221
    :cond_4
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    .line 223
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    sub-float v2, v1, v0

    .line 224
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 225
    invoke-static {v2, v1, v4, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateBottom(FFFF)F

    move-result v3

    move-object v0, p0

    move-object v5, p2

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutOfBounds(FFFFLandroid/graphics/Rect;)Z

    move-result v0

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isOutsideFrame(Landroid/graphics/Rect;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 380
    const-wide/16 v2, 0x0

    .line 383
    sget-object v4, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move v0, v1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 385
    :pswitch_0
    iget v4, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 388
    :pswitch_1
    iget v4, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 391
    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 394
    :pswitch_3
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isOutsideMargin(Landroid/graphics/Rect;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    .line 357
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 359
    :pswitch_0
    iget v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 362
    :pswitch_1
    iget v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 365
    :pswitch_2
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 368
    :pswitch_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public offset(F)V
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 64
    return-void
.end method

.method public setCoordinate(F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 54
    return-void
.end method

.method public snapOffset(Landroid/graphics/Rect;)F
    .locals 3

    .prologue
    .line 288
    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 291
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 306
    :goto_0
    sub-float/2addr v0, v1

    .line 307
    return v0

    .line 293
    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 294
    goto :goto_0

    .line 296
    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 297
    goto :goto_0

    .line 299
    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    .line 300
    goto :goto_0

    .line 302
    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public snapToRect(Landroid/graphics/Rect;)F
    .locals 3

    .prologue
    .line 258
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    .line 260
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    sub-float v0, v1, v0

    .line 276
    return v0

    .line 262
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 265
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 268
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 271
    :pswitch_3
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public snapToView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$edge$Edge:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iput v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 322
    :pswitch_1
    iput v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 325
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 328
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->mCoordinate:F

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
