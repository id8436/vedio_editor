.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# static fields
.field private static final DEFAULT_SPAN:I = 0x1


# instance fields
.field public span:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 281
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_StaggeredGridViewChild:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 282
    const/4 v1, 0x1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_StaggeredGridViewChild_adobe_csdk_twowayview_span:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    return-void
.end method

.method private init(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 297
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 298
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 299
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/StaggeredGridLayoutManager$LayoutParams;->span:I

    goto :goto_0
.end method
