.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectDetailCommentViewHolder.java"


# instance fields
.field public avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public comment:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_comment_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 19
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_comment_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->name:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_comment_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->comment:Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_comment_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->date:Landroid/widget/TextView;

    .line 22
    return-void
.end method
