.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;
.source "AdobeCreatePhotoCollectionDialogFragment.java"


# instance fields
.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _dialogStopped:Z

.field private _savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

.field private isCreateOpeartionInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->isCreateOpeartionInProgress:Z

    .line 44
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->isCreateOpeartionInProgress:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->handleNewCollectionCreation(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->handleErrorCollectionCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method private finishDialog()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->dismissKeyBoard()V

    .line 223
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->dismiss()V

    .line 224
    return-void
.end method

.method private handleErrorCollectionCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->isCreateOpeartionInProgress:Z

    .line 158
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->showError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 159
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->hideProgressSpinner()V

    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->enableNegativeButton()V

    .line 161
    return-void
.end method

.method private handleNewCollectionCreation(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->hideErrorDialog()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->isCreateOpeartionInProgress:Z

    .line 150
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_PHOTOCOLLECTION_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->finishDialog()V

    .line 152
    return-void
.end method

.method private showError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 122
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_common_error_while_creating_folder:I

    .line 125
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v1, :cond_2

    .line 126
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 128
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v1, v2, :cond_1

    .line 129
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_common_error_folder_invalid_chars:I

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->showErrorDialog(Ljava/lang/String;)V

    .line 143
    return-void

    .line 130
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_0

    .line 131
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_create_folder_already_exists_error:I

    goto :goto_0

    .line 136
    :cond_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    if-eqz v1, :cond_0

    .line 138
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_create_folder_authention_requires_error:I

    goto :goto_0
.end method


# virtual methods
.method public cancelNewCollection()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->dismissKeyBoard()V

    .line 228
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->dismiss()V

    .line 229
    return-void
.end method

.method public createNewCollection()V
    .locals 6

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_dialogStopped:Z

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->isCreateOpeartionInProgress:Z

    .line 171
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->disableNegativeButton()V

    .line 172
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->disablePositiveButton()V

    .line 175
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;)V

    .line 182
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;)V

    .line 190
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;->AdobePhotoCatalogTypeLightroom:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$3;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;)V

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog;->listCatalogOfType(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCatalog$AdobePhotoCatalogType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 212
    :cond_0
    return-void
.end method

.method public handleAfterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 77
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    add-int/lit8 v1, v0, -0x1

    const-string/jumbo v2, ""

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 75
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public handleNegativeClick()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->cancelNewCollection()V

    .line 50
    return-void
.end method

.method public handlePositiveClick()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->createNewCollection()V

    .line 55
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->showUIProgressUpdate()V

    .line 56
    return-void
.end method

.method public handleTextChanged()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->hideErrorDialog()V

    .line 62
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->isCreateOpeartionInProgress:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->enablePositiveButton()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->disablePositiveButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
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
    .line 91
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_PHOTO_COLLECTION_DIALOG_TITLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->setDialogTitle(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CREATE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->setPositiveButtonTitle(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CANCEL:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->setNegativeButtonTitle(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_PHOTO_COLLECTION_EDIT_TEXT_HINT:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->setEditTextHint(Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onStart()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_dialogStopped:Z

    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;->newlyCreatedCollectionObj:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;->newlyCreatedCollectionObj:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->handleNewCollectionCreation(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->handleErrorCollectionCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 116
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_savedCollectionCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/CollectionCreationSavedResult;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onStop()V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_dialogStopped:Z

    .line 219
    return-void
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeCreatePhotoCollectionDialogFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 40
    return-void
.end method
