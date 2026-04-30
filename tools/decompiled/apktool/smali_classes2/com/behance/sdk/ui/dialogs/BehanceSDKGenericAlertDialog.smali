.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;
.super Landroid/app/Dialog;
.source "BehanceSDKGenericAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private contentResourceId:I

.field private notOKBtnClickListener:Landroid/view/View$OnClickListener;

.field private notOKBtnLabelResourceId:I

.field private notOKButton:Landroid/widget/Button;

.field private okBtnClickListener:Landroid/view/View$OnClickListener;

.field private okBtnLabelResourceId:I

.field private okButton:Landroid/widget/Button;

.field private titleResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setTitleResourceId(I)V

    .line 51
    invoke-virtual {v0, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setContentResourceId(I)V

    .line 52
    invoke-virtual {v0, p3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOkBtnLabelResourceId(I)V

    .line 53
    invoke-virtual {v0, p4}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setNotOKBtnLabelResourceId(I)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public getContentResourceId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->contentResourceId:I

    return v0
.end method

.method public getNotOKBtnLabelResourceId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnLabelResourceId:I

    return v0
.end method

.method public getOkBtnLabelResourceId()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnLabelResourceId:I

    return v0
.end method

.method public getTitleResourceId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->titleResourceId:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->requestWindowFeature(I)Z

    .line 74
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_generic_alert:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setContentView(I)V

    .line 76
    sget v0, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogTitleTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->titleResourceId:I

    if-lez v1, :cond_0

    .line 78
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->titleResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogBodyTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->contentResourceId:I

    if-lez v1, :cond_1

    .line 82
    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->contentResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    :cond_1
    sget v0, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogNotOKBtn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKButton:Landroid/widget/Button;

    .line 86
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnLabelResourceId:I

    if-lez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKButton:Landroid/widget/Button;

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnLabelResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_3
    sget v0, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogOKBtn:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okButton:Landroid/widget/Button;

    .line 93
    iget v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnLabelResourceId:I

    if-lez v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okButton:Landroid/widget/Button;

    iget v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnLabelResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_5
    invoke-virtual {p0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnClickListener:Landroid/view/View$OnClickListener;

    .line 121
    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnClickListener:Landroid/view/View$OnClickListener;

    .line 122
    return-void
.end method

.method public setContentResourceId(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->contentResourceId:I

    .line 138
    return-void
.end method

.method public setNotOKBtnLabelResourceId(I)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnLabelResourceId:I

    .line 154
    return-void
.end method

.method public setOkBtnLabelResourceId(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnLabelResourceId:I

    .line 146
    return-void
.end method

.method public setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->notOKBtnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->okBtnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setTitleResourceId(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->titleResourceId:I

    .line 130
    return-void
.end method
