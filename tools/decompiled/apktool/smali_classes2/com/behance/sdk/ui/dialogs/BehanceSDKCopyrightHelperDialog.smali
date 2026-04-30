.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;
.super Landroid/support/design/widget/BottomSheetDialogFragment;
.source "BehanceSDKCopyrightHelperDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private NC:Z

.field private bsdkDialogCopyrightHelperAccept:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private bsdkDialogCopyrightHelperBack:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private bsdkDialogCopyrightHelperCancel:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

.field private bsdkDialogCopyrightHelperNo:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private bsdkDialogCopyrightHelperRecommendation:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private bsdkDialogCopyrightHelperYes:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field private callback:Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;

.field private mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

.field private selectedCopyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private back()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_left:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 151
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_right:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 152
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 153
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperBack:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 155
    :cond_0
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private evaluateCriteriaAndMoveForward(Z)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 101
    :pswitch_0
    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->forward()V

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->NO_USE:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->licenseSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iput-boolean p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->NC:Z

    .line 108
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->forward()V

    goto :goto_0

    .line 111
    :pswitch_2
    if-eqz p1, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->forward()V

    goto :goto_0

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->NC:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    :goto_1
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->licenseSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    goto :goto_1

    .line 117
    :pswitch_3
    if-eqz p1, :cond_4

    .line 118
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->NC:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    :goto_2
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->licenseSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_SA:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    goto :goto_2

    .line 120
    :cond_4
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->NC:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    :goto_3
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->licenseSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    goto :goto_3

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private forward()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_right:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 142
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_left:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 144
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperBack:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 146
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_yes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperYes:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 67
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_no:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperNo:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 68
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperBack:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 69
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperCancel:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 70
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_accept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperAccept:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 71
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_recommendation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperRecommendation:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 72
    sget v0, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_flipper:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    .line 73
    return-void
.end method

.method private licenseSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 127
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->selectedCopyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperRecommendation:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_editor_copyright_helper_recommendation:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_in_from_right:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 130
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_slide_out_to_left:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 132
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperYes:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperNo:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperBack:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v6}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperCancel:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperAccept:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v0, v5}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setVisibility(I)V

    .line 137
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_yes:I

    if-ne v0, v1, :cond_1

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->evaluateCriteriaAndMoveForward(Z)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_no:I

    if-ne v0, v1, :cond_2

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->evaluateCriteriaAndMoveForward(Z)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_back:I

    if-ne v0, v1, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->back()V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_accept:I

    if-ne v0, v1, :cond_5

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->callback:Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->selectedCopyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->callback:Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->selectedCopyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;->onCopyrightSelected(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_dialog_copyright_helper_cancel:I

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x0

    sget v1, Lcom/behance/sdk/R$style;->BsdkProjectEditorBottomSheetTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->setStyle(II)V

    .line 41
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/design/widget/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomSheetDialog;

    .line 47
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_dialog_copyright_helper:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->initView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 53
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 54
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 56
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperYes:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperNo:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperBack:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperCancel:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->bsdkDialogCopyrightHelperAccept:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->onStart()V

    .line 78
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->mBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 79
    return-void
.end method

.method public setCallback(Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog;->callback:Lcom/behance/sdk/ui/dialogs/BehanceSDKCopyrightHelperDialog$CopyrightCallback;

    .line 159
    return-void
.end method
