.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;
.super Ljava/lang/Object;
.source "AdobeCCDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$1;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->handleAfterTextChanged(Landroid/text/Editable;)V

    .line 199
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->handleTextChanged()V

    .line 189
    return-void
.end method
