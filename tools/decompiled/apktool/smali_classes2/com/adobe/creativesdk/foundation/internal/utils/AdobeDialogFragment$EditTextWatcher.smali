.class Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;
.super Ljava/lang/Object;
.source "AdobeDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->handleAfterTextChanged(Landroid/text/Editable;)V

    .line 309
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V

    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$EditTextWatcher;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->handleTextChanged()V

    .line 299
    return-void
.end method
