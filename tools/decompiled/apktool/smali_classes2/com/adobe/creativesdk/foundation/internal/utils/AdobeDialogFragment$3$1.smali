.class Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;
.super Ljava/lang/Object;
.source "AdobeDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 103
    :cond_0
    return-void
.end method
