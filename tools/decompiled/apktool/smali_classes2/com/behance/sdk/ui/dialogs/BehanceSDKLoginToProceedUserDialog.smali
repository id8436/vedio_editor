.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;
.super Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;
.source "BehanceSDKLoginToProceedUserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private messageText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->setMessageText(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private dismissLoginToFollowAlertDialog()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->dismiss()V

    .line 69
    return-void
.end method

.method private displayLoginView()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 65
    :cond_0
    return-void
.end method

.method public static getLoginToProceedDialogInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    sget v1, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_dialog_title:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->setTitleResourceId(I)V

    .line 35
    sget v1, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_login_button_text:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->setOkBtnLabelResourceId(I)V

    .line 36
    sget v1, Lcom/behance/sdk/R$string;->bsdk_login_to_proceed_ignore_button_text:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->setNotOKBtnLabelResourceId(I)V

    .line 37
    return-object v0
.end method

.method private getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->messageText:Ljava/lang/String;

    return-object v0
.end method

.method private loginToFollowUserCancelButtonClicked()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->dismissLoginToFollowAlertDialog()V

    .line 78
    return-void
.end method

.method private loginToFollowUserLoginButtonClicked()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->displayLoginView()V

    .line 73
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->dismissLoginToFollowAlertDialog()V

    .line 74
    return-void
.end method

.method private setMessageText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->messageText:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogNotOKBtn:I

    if-ne v0, v1, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->loginToFollowUserCancelButtonClicked()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogOKBtn:I

    if-ne v0, v1, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->loginToFollowUserLoginButtonClicked()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-super {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogBodyTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLoginToProceedUserDialog;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
