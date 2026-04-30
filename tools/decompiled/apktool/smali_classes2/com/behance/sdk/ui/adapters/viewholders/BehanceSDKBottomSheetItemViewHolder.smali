.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKBottomSheetItemViewHolder.java"


# instance fields
.field public contentContainer:Landroid/view/View;

.field public thumbnail:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    sget v0, Lcom/behance/sdk/R$id;->bsdk_bottom_sheet_item_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 21
    sget v0, Lcom/behance/sdk/R$id;->bsdk_bottom_sheet_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->title:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_bottom_sheet_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->contentContainer:Landroid/view/View;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 24
    return-void
.end method
