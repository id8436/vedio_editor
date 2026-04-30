.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacesItemDecoration.java"


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;->dpToPx(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;->offset:I

    .line 18
    return-void
.end method


# virtual methods
.method public dpToPx(ILandroid/content/Context;)I
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 22
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 23
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 29
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;->offset:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;->offset:I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;->offset:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/GridSpacesItemDecoration;->offset:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    return-void
.end method
