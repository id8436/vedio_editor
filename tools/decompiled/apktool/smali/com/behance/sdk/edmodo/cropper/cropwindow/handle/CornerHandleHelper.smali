.class Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/CornerHandleHelper;
.super Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;
.source "CornerHandleHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/HandleHelper;-><init>(Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;)V

    .line 32
    return-void
.end method


# virtual methods
.method updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 7

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/CornerHandleHelper;->getActiveEdges(FFF)Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;

    move-result-object v1

    .line 44
    iget-object v0, v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->primary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    .line 45
    iget-object v6, v1, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/EdgePair;->secondary:Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p3

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(FFLandroid/graphics/Rect;FF)V

    .line 48
    invoke-virtual {v6, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 50
    invoke-virtual {v6, p4, p5}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->isOutsideMargin(Landroid/graphics/Rect;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v6, p4}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->snapToRect(Landroid/graphics/Rect;)F

    .line 52
    invoke-virtual {v0, p3}, Lcom/behance/sdk/edmodo/cropper/cropwindow/edge/Edge;->adjustCoordinate(F)V

    .line 54
    :cond_0
    return-void
.end method
