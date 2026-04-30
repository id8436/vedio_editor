.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;
.super Landroid/app/Dialog;
.source "BehanceSDKGenericAlertWithSingleBtnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private btnLabelResourceId:I

.field private contentResourceId:I

.field private okButton:Landroid/widget/Button;

.field private titleResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;III)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setTitleResourceId(I)V

    .line 46
    invoke-virtual {v0, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setContentResourceId(I)V

    .line 47
    invoke-virtual {v0, p3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setBtnLabelResourceId(I)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public getBtnLabelResourceId()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnLabelResourceId:I

    return v0
.end method

.method public getContentResourceId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->contentResourceId:I

    return v0
.end method

.method public getTitleResourceId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->titleResourceId:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->requestWindowFeature(I)Z

    .line 68
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_generic_alert_with_single_btn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setContentView(I)V

    .line 70
    sget v0, Lcom/behance/sdk/R$id;->genericAlertSingleBtnDialogTitleTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->titleResourceId:I

    if-lez v1, :cond_0

    .line 72
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->titleResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->genericAlertSingleBtnDialogBodyTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->contentResourceId:I

    if-lez v1, :cond_1

    .line 76
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->contentResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :cond_1
    sget v0, Lcom/behance/sdk/R$id;->genericAlertSingleBtnDialogOKBtn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->okButton:Landroid/widget/Button;

    .line 79
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnLabelResourceId:I

    if-lez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->okButton:Landroid/widget/Button;

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnLabelResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->okButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_3
    invoke-virtual {p0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 87
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method

.method public setBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->okButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setBtnLabelResourceId(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->btnLabelResourceId:I

    .line 124
    return-void
.end method

.method public setContentResourceId(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->contentResourceId:I

    .line 116
    return-void
.end method

.method public setTitleResourceId(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertWithSingleBtnDialog;->titleResourceId:I

    .line 108
    return-void
.end method
