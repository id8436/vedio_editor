.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AdobeCCDialogFragment.java"


# instance fields
.field protected _editText:Landroid/widget/EditText;

.field protected _errorController:Landroid/widget/LinearLayout;

.field protected _errorView:Landroid/widget/TextView;

.field protected _negativeButton:Landroid/widget/TextView;

.field protected _positiveButton:Landroid/widget/TextView;

.field protected _progressBar:Landroid/widget/ProgressBar;

.field protected _title:Landroid/widget/TextView;

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected disableNegativeButton()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_negativeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_negativeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method protected disablePositiveButton()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_positiveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_positiveButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    :cond_0
    return-void
.end method

.method protected dismissKeyBoard()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected enableNegativeButton()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_negativeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_negativeButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method protected enablePositiveButton()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_positiveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_positiveButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method protected finishDialog()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->dismissKeyBoard()V

    .line 134
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->dismiss()V

    .line 135
    return-void
.end method

.method protected getEnteredText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleAfterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 154
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    add-int/lit8 v1, v0, -0x1

    const-string/jumbo v2, ""

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 153
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method protected handleNegativeClick()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->finishDialog()V

    .line 138
    return-void
.end method

.method protected abstract handlePositiveClick()V
.end method

.method protected handleTextChanged()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->enablePositiveButton()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->disablePositiveButton()V

    goto :goto_0
.end method

.method protected hideErrorDialog()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    return-void
.end method

.method protected hideProgressSpinner()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    :cond_0
    return-void
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
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
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->view:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->setDialogControls(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->setDialogText()V

    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_positiveButton:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_negativeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->disablePositiveButton()V

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    .line 143
    return-void
.end method

.method protected abstract setDialogControls(Landroid/view/View;)V
.end method

.method protected abstract setDialogText()V
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->disablePositiveButton()V

    .line 161
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    return-void
.end method

.method protected showProgressSpinner()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    :cond_0
    return-void
.end method

.method protected showUIProgressUpdate()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->showProgressSpinner()V

    .line 116
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->dismissKeyBoard()V

    .line 117
    return-void
.end method
