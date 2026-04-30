.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorStyleNumberPickerViewHolder.java"


# instance fields
.field public bsdkCardProjectEditorStyleNumberPickerContainer:Landroid/widget/RelativeLayout;

.field public bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

.field public bsdkCardProjectEditorStyleNumberPickerDown:Landroid/widget/ImageView;

.field public bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

.field public bsdkCardProjectEditorStyleNumberPickerText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field public bsdkCardProjectEditorStyleNumberPickerUp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_number_picker_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerContainer:Landroid/widget/RelativeLayout;

    .line 29
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_number_picker_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 30
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_number_picker_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerInput:Lcom/behance/sdk/ui/customviews/BehanceSDKEditText;

    .line 31
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_number_picker_up:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerUp:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_number_picker_down:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerDown:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_project_editor_style_number_picker_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    .line 34
    return-void
.end method
