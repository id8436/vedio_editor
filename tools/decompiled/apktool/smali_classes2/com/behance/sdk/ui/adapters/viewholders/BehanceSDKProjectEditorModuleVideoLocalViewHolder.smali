.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorModuleVideoLocalViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorModuleDelete:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModulePlay:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleVideoContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorModuleVideoPreview:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleVideoToolsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_video_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoContainer:Landroid/widget/RelativeLayout;

    .line 26
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_video_preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoPreview:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_video_tools_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleVideoToolsContainer:Landroid/widget/LinearLayout;

    .line 28
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModulePlay:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoLocalViewHolder;->bsdkCardProjectEditorModuleDelete:Landroid/widget/ImageView;

    .line 30
    return-void
.end method
