.class Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;
.super Ljava/lang/Object;
.source "AdobeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeDialogFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    return-void
.end method
