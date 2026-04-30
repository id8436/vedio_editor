.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorSettingDetailAddViewHolder.java"


# instance fields
.field public bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_editor_setting_detail_add_edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingDetailAddViewHolder;->bsdkCardEditorSettingDetailAddEditText:Landroid/widget/EditText;

    .line 20
    return-void
.end method
