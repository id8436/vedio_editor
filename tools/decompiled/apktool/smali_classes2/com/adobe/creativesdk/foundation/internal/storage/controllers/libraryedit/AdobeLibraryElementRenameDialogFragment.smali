.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;
.source "AdobeLibraryElementRenameDialogFragment.java"


# instance fields
.field private attached:Z

.field private controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

.field private observer:Ljava/util/Observer;

.field private targetComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;-><init>()V

    .line 38
    return-void
.end method

.method private finishDialog()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->dismissKeyBoard()V

    .line 113
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->dismissAllowingStateLoss()V

    .line 114
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAssetRename()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->observer:Ljava/util/Observer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->finishDialog()V

    .line 153
    return-void
.end method

.method private handleCancelOperation()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->finishDialog()V

    .line 164
    return-void
.end method

.method private handleRenameError()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->enableNegativeButton()V

    .line 157
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->attached:Z

    if-eqz v0, :cond_0

    .line 158
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_error_message:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->showErrorDialog(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->observer:Ljava/util/Observer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method private notifiyEditStarted()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditInProgress(Z)V

    .line 142
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeDesignLibraryEditManager;->setEditStarted(Z)V

    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_ITEM_EDIT_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_LIBRARY_COMP_EDIT_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;)V

    goto :goto_0
.end method

.method private renameAsset()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->disablePositiveButton()V

    .line 120
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->disableNegativeButton()V

    .line 121
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->notifiyEditStarted()V

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->setName(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->handleAssetRename()V

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->setName(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->handleAssetRename()V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->handleRenameError()V

    goto :goto_0
.end method


# virtual methods
.method public handleAfterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 97
    const-string/jumbo v1, "\n"

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    add-int/lit8 v1, v0, -0x1

    const-string/jumbo v2, ""

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 95
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public handleNegativeClick()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->handleCancelOperation()V

    .line 109
    return-void
.end method

.method public handlePositiveClick()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->renameAsset()V

    .line 105
    return-void
.end method

.method public handleTextChanged()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->enablePositiveButton()V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->disablePositiveButton()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->attached:Z

    .line 70
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
    .line 42
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_title:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->setDialogTitle(Ljava/lang/String;)V

    .line 43
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_hint_text:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->setEditTextHint(Ljava/lang/String;)V

    .line 44
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_negative_button:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->setNegativeButtonTitle(Ljava/lang/String;)V

    .line 45
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_view_edit_rename_dialog_positive_button:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->setPositiveButtonTitle(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->setEditText(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->setEditText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onDetach()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->attached:Z

    .line 76
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;->dialogClosed()V

    .line 82
    return-void
.end method

.method public setDismissController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->controller:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;

    .line 59
    return-void
.end method

.method public setParameters(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/Observer;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 169
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->targetComposite:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 170
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/libraryedit/AdobeLibraryElementRenameDialogFragment;->observer:Ljava/util/Observer;

    .line 172
    return-void
.end method
