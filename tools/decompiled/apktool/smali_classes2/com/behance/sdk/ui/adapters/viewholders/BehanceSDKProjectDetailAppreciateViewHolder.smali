.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectDetailAppreciateViewHolder.java"


# instance fields
.field public appreciateThumb:Landroid/widget/ImageView;

.field public appreciateView:Landroid/widget/ImageView;

.field public thankYouText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_appreciate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateView:Landroid/widget/ImageView;

    .line 19
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_appreciate_thumb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateThumb:Landroid/widget/ImageView;

    .line 20
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_appreciate_thank_you_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->thankYouText:Landroid/view/View;

    .line 21
    return-void
.end method
