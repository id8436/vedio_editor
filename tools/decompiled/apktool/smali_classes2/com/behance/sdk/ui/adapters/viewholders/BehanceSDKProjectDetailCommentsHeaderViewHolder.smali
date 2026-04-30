.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectDetailCommentsHeaderViewHolder.java"


# instance fields
.field public commentHeaderContainer:Landroid/widget/LinearLayout;

.field public commentsHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/behance/sdk/R$id;->bsdk_comments_view_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;->commentsHeader:Landroid/widget/TextView;

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_comments_view_header_title_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;->commentHeaderContainer:Landroid/widget/LinearLayout;

    .line 24
    return-void
.end method
