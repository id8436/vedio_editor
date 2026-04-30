.class public Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;
.super Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;
.source "StaggeredGridView.java"


# instance fields
.field column:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 1218
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(II)V

    .line 1219
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1220
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 1223
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(II)V

    .line 1224
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1214
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1215
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1228
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/grid/ExtendableListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->enforceStaggeredLayout()V

    .line 1230
    return-void
.end method

.method private enforceStaggeredLayout()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1238
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->width:I

    if-eq v0, v1, :cond_0

    .line 1239
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->width:I

    .line 1241
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->height:I

    if-ne v0, v1, :cond_1

    .line 1242
    const/4 v0, -0x2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/grid/StaggeredGridView$GridLayoutParams;->height:I

    .line 1244
    :cond_1
    return-void
.end method
