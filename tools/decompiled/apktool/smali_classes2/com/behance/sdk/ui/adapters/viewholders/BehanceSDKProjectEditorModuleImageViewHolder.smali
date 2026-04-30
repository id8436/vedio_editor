.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorModuleImageViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorModuleImageDelete:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleImageFullBleed:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleImageReplace:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

.field public bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_image_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageContainer:Landroid/widget/RelativeLayout;

    .line 27
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_image_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageView:Landroid/widget/ImageView;

    .line 28
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_image_tools_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageToolsContainer:Landroid/widget/LinearLayout;

    .line 29
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_image_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageDelete:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_image_replace:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageReplace:Landroid/widget/ImageView;

    .line 31
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_image_full_bleed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleImageViewHolder;->bsdkCardProjectEditorModuleImageFullBleed:Landroid/widget/ImageView;

    .line 32
    return-void
.end method
