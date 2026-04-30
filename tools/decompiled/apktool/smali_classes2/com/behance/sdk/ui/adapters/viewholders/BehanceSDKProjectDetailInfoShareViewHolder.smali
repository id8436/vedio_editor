.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectDetailInfoShareViewHolder.java"


# instance fields
.field public infoView:Landroid/widget/TextView;

.field public shareText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcom/behance/sdk/R$id;->bsdk_userDetailsMoreInfoContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;->infoView:Landroid/widget/TextView;

    .line 18
    sget v0, Lcom/behance/sdk/R$id;->bsdk_shareProjectContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;->shareText:Landroid/widget/TextView;

    .line 19
    return-void
.end method
