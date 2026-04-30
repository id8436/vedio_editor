.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorSettingDetailProfileViewHolder.java"


# instance fields
.field public bsdkCardEditorSettingDetailAvatar:Landroid/widget/ImageView;

.field public bsdkCardEditorSettingDetailTextPrimary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field public bsdkCardEditorSettingDetailTextSecondary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_editor_setting_detail_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailAvatar:Landroid/widget/ImageView;

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_editor_setting_detail_text_primary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextPrimary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_editor_setting_detail_text_secondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailProfileViewHolder;->bsdkCardEditorSettingDetailTextSecondary:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 25
    return-void
.end method
