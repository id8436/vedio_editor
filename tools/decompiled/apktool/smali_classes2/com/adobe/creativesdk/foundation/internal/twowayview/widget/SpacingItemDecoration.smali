.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacingItemDecoration.java"


# instance fields
.field private final mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 39
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    invoke-direct {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;-><init>(II)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpacingItemDecoration;->mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpacingItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 25
    sget-object v0, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_SpacingItemDecoration:[I

    .line 26
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_SpacingItemDecoration_android_verticalSpacing:I

    .line 29
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 30
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$styleable;->adobe_csdk_twowayview_SpacingItemDecoration_android_horizontalSpacing:I

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;-><init>(II)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpacingItemDecoration;->mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    .line 36
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/SpacingItemDecoration;->mItemSpacing:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ItemSpacingOffsets;->getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V

    .line 45
    return-void
.end method
