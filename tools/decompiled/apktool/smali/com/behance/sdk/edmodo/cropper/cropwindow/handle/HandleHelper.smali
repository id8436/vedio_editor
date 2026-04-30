.class abstract Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;
.super Ljava/lang/Object;
.source "HandleHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final UNFIXED_ASPECT_RATIO_CONSTANT:F = 1.0f


# instance fields
.field private mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

.field private mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

.field private mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 50
    iput-object p2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 51
    new-instance v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;-><init>(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;)V

    iput-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    .line 52
    return-void
.end method

.method private getAspectRatio(FF)F
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v0, v1, :cond_0

    move v0, p1

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v1, v2, :cond_1

    move v1, p2

    .line 155
    :goto_1
    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v2, v3, :cond_2

    .line 156
    :goto_2
    iget-object v2, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    if-ne v2, v3, :cond_3

    .line 158
    :goto_3
    invoke-static {v0, v1, p1, p2}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateAspectRatio(FFFF)F

    move-result v0

    .line 160
    return v0

    .line 153
    :cond_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    goto :goto_1

    .line 155
    :cond_2
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p1

    goto :goto_2

    .line 156
    :cond_3
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result p2

    goto :goto_3
.end method


# virtual methods
.method getActiveEdges()Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    return-object v0
.end method

.method getActiveEdges(FFF)Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->getAspectRatio(FF)F

    move-result v0

    .line 130
    cmpl-float v0, v0, p3

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v1, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 132
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v1, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mHorizontalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v1, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mActiveEdges:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    iget-object v1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->mVerticalEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    iput-object v1, v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    goto :goto_0
.end method

.method abstract updateCropWindow(FFFLandroid/graphics/Rect;F)V
.end method

.method updateCropWindow(FFLandroid/graphics/Rect;F)V
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;->getActiveEdges()Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    move-result-object v1

    .line 72
    iget-object v0, v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 73
    iget-object v6, v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 75
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 76
    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 78
    :cond_0
    if-eqz v6, :cond_1

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 80
    :cond_1
    return-void
.end method
