.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/MarginDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "MarginDecoration.java"


# instance fields
.field private margin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_asset_multipage_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/MarginDecoration;->margin:I

    .line 18
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    .prologue
    .line 24
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/MarginDecoration;->margin:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/MarginDecoration;->margin:I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/MarginDecoration;->margin:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/MarginDecoration;->margin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    return-void
.end method
