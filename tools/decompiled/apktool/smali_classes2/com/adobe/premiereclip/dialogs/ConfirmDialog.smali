.class public Lcom/adobe/premiereclip/dialogs/ConfirmDialog;
.super Lcom/adobe/premiereclip/dialogs/AbstractDialog;
.source "ConfirmDialog.java"


# instance fields
.field private acceptButtonText:Ljava/lang/String;

.field private rejectButtonText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/dialogs/AbstractDialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->initView()V

    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$1;-><init>(Lcom/adobe/premiereclip/dialogs/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->rejectButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->rejectButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->rejectButton:Landroid/widget/Button;

    new-instance v1, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/dialogs/ConfirmDialog$2;-><init>(Lcom/adobe/premiereclip/dialogs/ConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public setAcceptButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButtonText:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->acceptButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    .line 72
    return-void
.end method

.method public setRejectButton(Ljava/lang/String;Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->rejectButtonText:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/adobe/premiereclip/dialogs/ConfirmDialog;->rejectButtonListener:Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;

    .line 67
    return-void
.end method
