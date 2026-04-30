.class public Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
.super Landroid/widget/AbsListView$LayoutParams;
.source "ExtendableListView.java"


# instance fields
.field itemId:J

.field position:I

.field recycledHeaderFooter:Z

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 2139
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->itemId:J

    .line 2140
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .prologue
    .line 2143
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->itemId:J

    .line 2144
    iput p3, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->viewType:I

    .line 2145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 2135
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->itemId:J

    .line 2136
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 2148
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;->itemId:J

    .line 2149
    return-void
.end method
