.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorModuleDelete:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModulePlay:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleWebClickHandler:Landroid/view/View;

.field public bsdkCardProjectEditorModuleWebContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorModuleWebToolsContainer:Landroid/widget/LinearLayout;

.field public bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_web_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebContainer:Landroid/widget/RelativeLayout;

    .line 29
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_web_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebView:Lcom/behance/sdk/ui/components/BehanceSDKNotifyOnHeightChangeWebView;

    .line 30
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_web_click_handler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebClickHandler:Landroid/view/View;

    .line 31
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_web_tools_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleWebToolsContainer:Landroid/widget/LinearLayout;

    .line 32
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModulePlay:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleDelete:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_full_bleed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleVideoAudioEmbedViewHolder;->bsdkCardProjectEditorModuleFullBleed:Landroid/widget/ImageView;

    .line 35
    return-void
.end method
