.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AdobeRemoveMyselfDialogFragment.java"


# instance fields
.field private _messageView:Landroid/widget/TextView;

.field private _negativeButton:Landroid/view/View;

.field private _positiveButton:Landroid/view/View;

.field private dialogFragmentCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;

.field private isLibrary:Z

.field private isRemove:Z

.field private isRevoke:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRemove:Z

    .line 25
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRevoke:Z

    .line 26
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isLibrary:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->dialogFragmentCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;

    return-object v0
.end method

.method private setMessage()V
    .locals 3

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRemove:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_positiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_remove_confirm_dialog_positive_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_remove_confirm_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRevoke:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_positiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_revoke_confirm_dialog_positive_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_revoke_confirm_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_positiveButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_leave_library_confirm_dialog_positive_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isLibrary:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_leave_library_confirm_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_messageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_leave_folder_confirm_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 97
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 36
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_alert_dialog_view:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_title_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_messageView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_positive_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_positiveButton:Landroid/view/View;

    .line 40
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_alert_dialog_box_negative_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_negativeButton:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_negativeButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_delete_dialog_negative_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_negativeButton:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->_positiveButton:Landroid/view/View;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string/jumbo v0, "REMOVE_ALERT_IS_REMOVE"

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRemove:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    const-string/jumbo v0, "REMOVE_ALERT_IS_REVOKE"

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRevoke:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    const-string/jumbo v0, "REMOVE_ALERT_IS_LIBRARY"

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isLibrary:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 122
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->setMessage()V

    .line 123
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string/jumbo v0, "REMOVE_ALERT_IS_LIBRARY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isLibrary:Z

    .line 130
    const-string/jumbo v0, "REMOVE_ALERT_IS_REMOVE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRemove:Z

    .line 131
    const-string/jumbo v0, "REMOVE_ALERT_IS_REVOKE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRevoke:Z

    .line 133
    :cond_0
    return-void
.end method

.method public setFragmentCallback(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->dialogFragmentCallback:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;

    .line 32
    return-void
.end method

.method public setLibrary(Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isLibrary:Z

    .line 109
    return-void
.end method

.method public setRemove(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRemove:Z

    .line 103
    return-void
.end method

.method public setRevoke(Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->isRevoke:Z

    .line 106
    return-void
.end method
