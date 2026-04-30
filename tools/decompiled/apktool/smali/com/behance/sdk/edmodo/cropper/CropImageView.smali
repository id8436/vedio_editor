.class public Lcom/behance/sdk/edmodo/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ASPECT_RATIO_X:I = 0x1

.field public static final DEFAULT_ASPECT_RATIO_Y:I = 0x1

.field public static final DEFAULT_FIXED_ASPECT_RATIO:Z = false

.field public static final DEFAULT_GUIDELINES:I = 0x1

.field private static final DEFAULT_IMAGE_RESOURCE:I = 0x0

.field private static final DEGREES_ROTATED:Ljava/lang/String; = "DEGREES_ROTATED"

.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

.field private mDegreesRotated:I

.field private mFixAspectRatio:Z

.field private mGuidelines:I

.field private mImageResource:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 71
    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 72
    iput-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 73
    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 74
    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 75
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageResource:I

    .line 81
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 71
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 72
    iput-boolean v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 73
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 74
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 75
    iput v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageResource:I

    .line 87
    sget-object v0, Lcom/behance/sdk/R$styleable;->CropImageView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 90
    :try_start_0
    sget v0, Lcom/behance/sdk/R$styleable;->CropImageView_guidelines:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mGuidelines:I

    .line 91
    sget v0, Lcom/behance/sdk/R$styleable;->CropImageView_fixAspectRatio:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    .line 93
    sget v0, Lcom/behance/sdk/R$styleable;->CropImageView_aspectRatioX:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 94
    sget v0, Lcom/behance/sdk/R$styleable;->CropImageView_aspectRatioY:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 95
    sget v0, Lcom/behance/sdk/R$styleable;->CropImageView_imageResource:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageResource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-direct {p0, p1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->init(Landroid/content/Context;)V

    .line 101
    return-void

    .line 97
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    throw v0
.end method

.method private static getOnMeasureSpec(III)I
    .locals 1

    .prologue
    .line 513
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    .line 524
    :goto_0
    return p1

    .line 516
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 518
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 521
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 490
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 491
    sget v1, Lcom/behance/sdk/R$layout;->crop_image_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 493
    sget v0, Lcom/behance/sdk/R$id;->ImageView_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    .line 495
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageResource:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageResource(I)V

    .line 496
    sget v0, Lcom/behance/sdk/R$id;->CropOverlayView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    .line 497
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mGuidelines:I

    iget-boolean v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mFixAspectRatio:Z

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioX:I

    iget v4, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setInitialAttributeValues(IZII)V

    .line 498
    return-void
.end method


# virtual methods
.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 388
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/behance/sdk/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 393
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 394
    div-float/2addr v1, v2

    .line 398
    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 400
    div-float/2addr v2, v3

    .line 403
    sget-object v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 404
    sget-object v4, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    .line 405
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v4

    .line 406
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v5

    .line 409
    mul-float/2addr v3, v1

    .line 410
    mul-float/2addr v0, v2

    .line 411
    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 412
    mul-float/2addr v2, v5

    add-float/2addr v2, v0

    .line 416
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 417
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 418
    iget-object v4, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 419
    iget-object v4, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 421
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 426
    return-object v4
.end method

.method public getCroppedImage()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/behance/sdk/exception/NullReferenceException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/behance/sdk/exception/NullReferenceException;

    const-string/jumbo v1, "bitmap is null"

    invoke-direct {v0, v1}, Lcom/behance/sdk/exception/NullReferenceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/behance/sdk/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 347
    div-float/2addr v1, v2

    .line 351
    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 352
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 353
    div-float/2addr v2, v3

    .line 356
    sget-object v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 357
    sget-object v4, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, v4, v0

    .line 358
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getWidth()F

    move-result v4

    .line 359
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getHeight()F

    move-result v5

    .line 362
    mul-float/2addr v3, v1

    .line 363
    mul-float/2addr v0, v2

    .line 364
    mul-float/2addr v1, v4

    .line 365
    mul-float/2addr v2, v5

    .line 367
    add-float v4, v0, v2

    iget-object v5, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 368
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 377
    :goto_0
    return-object v0

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    float-to-int v3, v3

    float-to-int v0, v0

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-static {v4, v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageResource()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 230
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 232
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutHeight:I

    if-lez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 235
    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    invoke-virtual {p0, v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 158
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 159
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 160
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 164
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 180
    :cond_0
    int-to-double v6, v3

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v6, v8

    .line 183
    int-to-double v8, v0

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    .line 188
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v6, v10

    if-nez v1, :cond_1

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v8, v10

    if-eqz v1, :cond_3

    .line 189
    :cond_1
    cmpg-double v1, v6, v8

    if-gtz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v8, v1

    mul-double/2addr v6, v8

    double-to-int v1, v6

    move v2, v3

    .line 206
    :goto_0
    invoke-static {v4, v3, v2}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result v2

    .line 207
    invoke-static {v5, v0, v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->getOnMeasureSpec(III)I

    move-result v0

    .line 209
    iput v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutWidth:I

    .line 210
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutHeight:I

    .line 212
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iget v3, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutHeight:I

    .line 212
    invoke-static {v0, v1, v2, v3}, Lcom/behance/sdk/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 219
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutWidth:I

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mLayoutHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    .line 226
    :goto_1
    return-void

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-double v6, v1

    mul-double/2addr v6, v8

    double-to-int v1, v6

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 203
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object v2, Lcom/behance/sdk/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 224
    invoke-virtual {p0, v3, v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 120
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 122
    check-cast p1, Landroid/os/Bundle;

    .line 124
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "DEGREES_ROTATED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 127
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 128
    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->rotateImage(I)V

    .line 129
    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 132
    :cond_0
    const-string/jumbo v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string/jumbo v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    const-string/jumbo v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/behance/sdk/edmodo/cropper/util/ImageViewUtil;->getBitmapRectCenterInside(Landroid/graphics/Bitmap;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/CropImageView;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setBitmapRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public rotateImage(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 473
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 474
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 475
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 476
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 479
    iget v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mDegreesRotated:I

    .line 480
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2

    .prologue
    .line 458
    iput p1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioX:I

    .line 459
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioX:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioX(I)V

    .line 461
    iput p2, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioY:I

    .line 462
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    iget v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mAspectRatioY:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setAspectRatioY(I)V

    .line 463
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 438
    return-void
.end method

.method public setGuidelines(I)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->setGuidelines(I)V

    .line 449
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 260
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/CropImageView;->mCropOverlayView:Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->resetCropOverlayView()V

    .line 265
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 278
    if-nez p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 282
    :cond_0
    if-nez p2, :cond_1

    .line 283
    invoke-virtual {p0, p1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 288
    const-string/jumbo v0, "Orientation"

    invoke-virtual {p2, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 291
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 303
    :goto_1
    if-ne v0, v2, :cond_2

    .line 304
    invoke-virtual {p0, p1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 293
    :pswitch_1
    const/16 v0, 0x10e

    .line 294
    goto :goto_1

    .line 296
    :pswitch_2
    const/16 v0, 0xb4

    .line 297
    goto :goto_1

    .line 299
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_1

    .line 306
    :cond_2
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 310
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    .line 307
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    invoke-virtual {p0, v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    invoke-virtual {p0, v0}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    :cond_0
    return-void
.end method

.method public setMinSize(I)V
    .locals 0

    .prologue
    .line 483
    sput p1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->MIN_CROP_LENGTH_PX:I

    .line 484
    return-void
.end method
