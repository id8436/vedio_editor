.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorModuleWarningViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorModuleWarningContainer:Landroid/widget/LinearLayout;

.field public bsdkCardProjectEditorModuleWarningDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field public bsdkCardProjectEditorModuleWarningIcon:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorModuleWarningTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_warning_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningContainer:Landroid/widget/LinearLayout;

    .line 25
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_warning_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningIcon:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_warning_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningTitle:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 27
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_module_warning_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorModuleWarningViewHolder;->bsdkCardProjectEditorModuleWarningDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 28
    return-void
.end method
