.class public Lcom/adobe/premiereclip/dialogs/MessageDialog;
.super Lcom/adobe/premiereclip/dialogs/AbstractDialog;
.source "MessageDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->initView()V

    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog;->acceptButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0444

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog;->acceptButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/dialogs/MessageDialog$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/dialogs/MessageDialog$1;-><init>(Lcom/adobe/premiereclip/dialogs/MessageDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog;->rejectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public setAcceptButtonListener(Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/MessageDialog;->acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    .line 56
    return-void
.end method
