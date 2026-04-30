.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "SpannableGridLayoutManager.java"


# static fields
.field private static final DEFAULT_SPAN:I = 0x1


# instance fields
.field public colSpan:I

.field public rowSpan:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 297
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 298
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 302
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_SpannableGridViewChild:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 305
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_SpannableGridViewChild_adobe_csdk_twowayview_colSpan:I

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 305
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 307
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_SpannableGridViewChild_adobe_csdk_twowayview_rowSpan:I

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 307
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 309
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void
.end method

.method private init(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 323
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;

    .line 325
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 326
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->rowSpan:I

    .line 329
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpannableGridLayoutManager$LayoutParams;->colSpan:I

    goto :goto_0
.end method
