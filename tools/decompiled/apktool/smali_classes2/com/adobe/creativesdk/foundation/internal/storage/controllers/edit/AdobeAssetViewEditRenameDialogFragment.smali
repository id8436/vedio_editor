.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;
.source "AdobeAssetViewEditRenameDialogFragment.java"


# instance fields
.field private _observer:Ljava/util/Observer;

.field private _targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

.field private assetNewName:Ljava/lang/String;

.field private controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;-><init>()V

    .line 29
    return-void
.end method

.method private notifiyEditStarted()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_observer:Ljava/util/Observer;

    const/4 v1, 0x0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditRenameOperationStatus;->ADOBE_CC_FILES_EDIT_RENAME_OPERATION_STATUS_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditRenameOperationStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getAssetNewName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->assetNewName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->assetNewName:Ljava/lang/String;

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handlePositiveClick()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->disablePositiveButton()V

    .line 76
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->notifiyEditStarted()V

    .line 77
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->finishDialog()V

    .line 78
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_edit_text_dialog_view:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 40
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->setEditText(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->view:Landroid/view/View;

    return-object v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;->dialogClosed()V

    .line 97
    :cond_0
    return-void
.end method

.method protected setDialogControls(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_dialog_box_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_title:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_editText:Landroid/widget/EditText;

    .line 59
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_progressBar:Landroid/widget/ProgressBar;

    .line 60
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_error_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_error_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_errorView:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_positiveButton:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_negativeButton:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public setDialogText()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_editText:Landroid/widget/EditText;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_hint_text:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_positiveButton:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_positive_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method

.method public setDismissController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

    .line 87
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method public setParameters(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/util/Observer;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_targetAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 106
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;->_observer:Ljava/util/Observer;

    .line 107
    return-void
.end method
