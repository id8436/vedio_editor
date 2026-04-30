.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AdobeDialogFragment.java"


# instance fields
.field private _dialogStopped:Z

.field protected _editText:Landroid/widget/EditText;

.field private _errorController:Landroid/widget/LinearLayout;

.field private _errorView:Landroid/widget/TextView;

.field protected _negativeButton:Landroid/widget/TextView;

.field protected _positiveButton:Landroid/widget/TextView;

.field private _positiveButtonEnabled:Z

.field private dialogTitle:Ljava/lang/String;

.field private editTextHint:Ljava/lang/String;

.field private editTextString:Ljava/lang/String;

.field private isSingleLine:Z

.field private negativeButtonTitle:Ljava/lang/String;

.field private optionalProgressBar:Landroid/widget/ProgressBar;

.field private positiveButtonTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_dialogStopped:Z

    .line 41
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButtonEnabled:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextString:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->isSingleLine:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->handleEditTextBackground()V

    return-void
.end method

.method private handleEditTextBackground()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getEnteredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$drawable;->adobe_csdk_edittext_background_with_text:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$drawable;->adobe_csdk_edittext_background:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public disableNegativeButton()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    :cond_0
    return-void
.end method

.method public disablePositiveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButtonEnabled:Z

    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    :cond_0
    return-void
.end method

.method public dismissKeyBoard()V
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 288
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public enableNegativeButton()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method public enablePositiveButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButtonEnabled:Z

    .line 247
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public getEnteredText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleAfterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public handleNegativeClick()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public handlePositiveClick()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public handleTextChanged()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public hideErrorDialog()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    return-void
.end method

.method public hideProgressSpinner()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->optionalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->optionalProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public isPositiveButtonEnabled()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButtonEnabled:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    sget v1, Lcom/adobe/creativesdk/foundation/auth/R$style;->AdobeCSDKDialogWithTitle:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->setStyle(II)V

    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
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
    .line 63
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$layout;->adobe_csdk_common_dialog_fragment:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_optionalProgressBar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->optionalProgressBar:Landroid/widget/ProgressBar;

    .line 65
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_generic_dialog_fragment_postive_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_generic_dialog_fragment_negative_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_generic_dialog_fragment_edit_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    .line 84
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_generic_dialog_fragment_error_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/adobe/creativesdk/foundation/auth/R$id;->adobe_csdk_generic_dialog_fragment_error_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_errorView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->disablePositiveButton()V

    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_positiveButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->positiveButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_negativeButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->negativeButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextHint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->isSingleLine:Z

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 130
    :cond_0
    return-object v1
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x12

    const/4 v4, 0x0

    .line 135
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 136
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->dialogTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;

    invoke-direct {v2, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 139
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 141
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/auth/R$color;->adobe_csdk_asset_browser_dark_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 143
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "android:id/titleDivider"

    invoke-virtual {v0, v2, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    const-string/jumbo v2, "titleDivider"

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$color;->adobe_csdk_actionbar_background_color:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 156
    :cond_1
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/auth/R$color;->adobe_csdk_actionbar_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    :cond_2
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->dialogTitle:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setEditText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextString:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setEditTextHint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->editTextHint:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setEditTextSingleLine()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->isSingleLine:Z

    .line 202
    return-void
.end method

.method public setNegativeButtonTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->negativeButtonTitle:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setPositiveButtonTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->positiveButtonTitle:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->disablePositiveButton()V

    .line 207
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_errorController:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public showProgressSpinner()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->optionalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->optionalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public showUIProgressUpdate()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->showProgressSpinner()V

    .line 227
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->dismissKeyBoard()V

    .line 228
    return-void
.end method
