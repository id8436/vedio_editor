.class public Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ListLayoutManager;
.super Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;
.source "ListLayoutManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ListLayoutManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ListLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager;-><init>(Lcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Orientation;)V

    .line 39
    return-void
.end method


# virtual methods
.method getLaneCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method getLaneForPosition(Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;ILcom/adobe/creativesdk/foundation/internal/twowayview/TwoWayLayoutManager$Direction;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes$LaneInfo;->set(II)V

    .line 49
    return-void
.end method

.method moveLayoutToPosition(IILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/ListLayoutManager;->getLanes()Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/Lanes;->reset(I)V

    .line 54
    return-void
.end method
