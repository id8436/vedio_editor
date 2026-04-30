.class Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;
.super Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "HorizontalHandleHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;


# direct methods
.method constructor <init>(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;)V

    .line 36
    iput-object p1, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 37
    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 51
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v0

    .line 52
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v1

    .line 53
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v2

    .line 54
    sget-object v3, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->getCoordinate()F

    move-result v3

    .line 57
    invoke-static {v1, v3, p3}, Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;->calculateWidth(FFF)F

    move-result v1

    .line 58
    sub-float v3, v2, v0

    .line 62
    sub-float/2addr v1, v3

    .line 63
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 64
    sub-float/2addr v0, v1

    .line 65
    add-float/2addr v1, v2

    .line 67
    sget-object v2, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v2, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 68
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->setCoordinate(F)V

    .line 71
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, v1, p4, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v0

    .line 75
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 79
    :cond_0
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, v1, p4, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isNewRectangleOutOfBounds(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Landroid/graphics/Rect;F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    move-result v0

    .line 83
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->offset(F)V

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;->mEdge:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    invoke-virtual {v0, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 86
    :cond_1
    return-void
.end method
