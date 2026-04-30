.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorStyleItemViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorStyleContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorStyleTextLeft:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field public bsdkCardProjectEditorStyleTextRight:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleContainer:Landroid/widget/RelativeLayout;

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_text_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleTextLeft:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleTextRight:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 25
    return-void
.end method
