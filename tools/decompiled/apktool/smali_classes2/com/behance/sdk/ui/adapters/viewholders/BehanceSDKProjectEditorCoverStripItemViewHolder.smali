.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorCoverStripItemViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

.field public bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

.field public bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_cover_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_cover_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_cover_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

    .line 25
    return-void
.end method
