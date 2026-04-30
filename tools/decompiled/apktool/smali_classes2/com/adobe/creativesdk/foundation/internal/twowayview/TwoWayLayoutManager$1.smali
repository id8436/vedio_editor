.class Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "TwoWayLayoutManager.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 833
    const/4 v0, 0x0

    .line 840
    :goto_0
    return-object v0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->getFirstVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    .line 837
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;->access$200(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    goto :goto_0

    .line 836
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 840
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    .prologue
    .line 851
    const/4 v0, -0x1

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 846
    const/4 v0, -0x1

    return v0
.end method
