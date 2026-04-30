.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;
.source "AdobeUploadCreateNewLibraryDialogFragment.java"


# instance fields
.field private _dialogStopped:Z

.field private _savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;-><init>()V

    .line 37
    return-void
.end method

.method private finishDialog()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->dismissKeyBoard()V

    .line 179
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->dismiss()V

    .line 180
    return-void
.end method

.method private handleErrorLibraryCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->showError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 149
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->hideProgressSpinner()V

    .line 150
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->enableNegativeButton()V

    .line 151
    return-void
.end method

.method private handleNewLibraryCreation(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->hideErrorDialog()V

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setUpdateCollectionDueToItemEdit(Z)V

    .line 141
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_LIBRARY_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->finishDialog()V

    .line 143
    return-void
.end method

.method private showError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 113
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_common_error_while_creating_folder:I

    .line 116
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v1, :cond_2

    .line 117
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 119
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v1, v2, :cond_1

    .line 120
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_common_error_folder_invalid_chars:I

    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->showErrorDialog(Ljava/lang/String;)V

    .line 134
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_0

    .line 122
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_create_folder_already_exists_error:I

    goto :goto_0

    .line 127
    :cond_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    if-eqz v1, :cond_0

    .line 129
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_create_folder_authention_requires_error:I

    goto :goto_0
.end method


# virtual methods
.method public cancelNewLibrary()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->dismissKeyBoard()V

    .line 184
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->dismiss()V

    .line 185
    return-void
.end method

.method public createNewLibrary()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_dialogStopped:Z

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->disableNegativeButton()V

    .line 161
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->disablePositiveButton()V

    .line 163
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->createLibraryWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->handleNewLibraryCreation(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public handleAfterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 68
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    add-int/lit8 v1, v0, -0x1

    const-string/jumbo v2, ""

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 66
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public handleNegativeClick()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->cancelNewLibrary()V

    .line 41
    return-void
.end method

.method public handlePositiveClick()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->showUIProgressUpdate()V

    .line 46
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->createNewLibrary()V

    .line 47
    return-void
.end method

.method public handleTextChanged()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->hideErrorDialog()V

    .line 53
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->enablePositiveButton()V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->disablePositiveButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_LIBRARY_DIALOG_TITLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->setDialogTitle(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CREATE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->setPositiveButtonTitle(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CANCEL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->setNegativeButtonTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_LIBRARY_EDIT_TEXT_HINT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->setEditTextHint(Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onStart()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_dialogStopped:Z

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;->newlyCreatedLibraryObj:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;->newlyCreatedLibraryObj:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->handleNewLibraryCreation(Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->handleErrorLibraryCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 107
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_savedLibraryCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/LibraryCreationSavedResult;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onStop()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewLibraryDialogFragment;->_dialogStopped:Z

    .line 175
    return-void
.end method
