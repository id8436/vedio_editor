.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;
.source "AdobeUploadCreateNewFolderDialogFragment.java"


# instance fields
.field _currentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

.field private _dialogStopped:Z

.field private _savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

.field private isCreateOpeartionInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->isCreateOpeartionInProgress:Z

    .line 46
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->isCreateOpeartionInProgress:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_dialogStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->handleNewFolderCreation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->handleErrorFolderCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method private handleErrorFolderCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->isCreateOpeartionInProgress:Z

    .line 146
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->showError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 147
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->hideProgressSpinner()V

    .line 148
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->enableNegativeButton()V

    .line 149
    return-void
.end method

.method private handleNewFolderCreation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->hideErrorDialog()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->isCreateOpeartionInProgress:Z

    .line 138
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_currentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetDataSourceMgr;->setFolderAsChanged(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 139
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_NEWFOLDER_CREATED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->finishDialog()V

    .line 141
    return-void
.end method

.method private showError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 110
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_common_error_while_creating_folder:I

    .line 113
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    if-eqz v1, :cond_2

    .line 114
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 116
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v1, v2, :cond_1

    .line 117
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_common_error_folder_invalid_chars:I

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->showErrorDialog(Ljava/lang/String;)V

    .line 131
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_0

    .line 119
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_create_folder_already_exists_error:I

    goto :goto_0

    .line 124
    :cond_2
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    if-eqz v1, :cond_0

    .line 126
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_create_folder_authention_requires_error:I

    goto :goto_0
.end method


# virtual methods
.method public createNewFolder()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_dialogStopped:Z

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->isCreateOpeartionInProgress:Z

    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->disableNegativeButton()V

    .line 161
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->disablePositiveButton()V

    .line 163
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)V

    .line 176
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)V

    .line 188
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_currentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0, v3, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->create(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 190
    :cond_0
    return-void
.end method

.method public handlePositiveClick()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->showUIProgressUpdate()V

    .line 201
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->createNewFolder()V

    .line 202
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->disablePositiveButton()V

    .line 203
    return-void
.end method

.method protected handleTextChanged()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->isCreateOpeartionInProgress:Z

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->enablePositiveButton()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->disablePositiveButton()V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_edit_text_dialog_view:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "parent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getAssetFolderFromHref(Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_currentFolder:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->onStart()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_dialogStopped:Z

    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;->newlyCreatedFolderObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;->newlyCreatedFolderObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->handleNewFolderCreation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->handleErrorFolderCreation(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 104
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_savedFolderCreationResult:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->onStop()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_dialogStopped:Z

    .line 210
    return-void
.end method

.method protected setDialogControls(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_dialog_box_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_title:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_editText:Landroid/widget/EditText;

    .line 72
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_progressBar:Landroid/widget/ProgressBar;

    .line 73
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_error_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    .line 74
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_error_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_errorView:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_positiveButton:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_cc_edit_text_negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_negativeButton:Landroid/widget/TextView;

    .line 77
    return-void
.end method

.method protected setDialogText()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_DIALOG_TITLE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_editText:Landroid/widget/EditText;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_EDIT_TEXT_HINT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->_positiveButton:Landroid/widget/TextView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_CREATE_NEW_FOLDER_BUTTON_CREATE:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    return-void
.end method
