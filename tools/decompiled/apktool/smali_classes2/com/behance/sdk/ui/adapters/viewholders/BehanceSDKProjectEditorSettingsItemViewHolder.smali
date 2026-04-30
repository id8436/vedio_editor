.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorSettingsItemViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorSettingContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorSettingSelected:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorSettingText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_setting_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingContainer:Landroid/widget/RelativeLayout;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_setting_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingSelected:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_setting_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 26
    return-void
.end method
