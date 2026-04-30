.class Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "BehanceSDKSnappingLinearLayoutManager.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager$1;->this$0:Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;

    .line 94
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/components/BehanceSDKSnappingLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x1

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, -0x1

    return v0
.end method
