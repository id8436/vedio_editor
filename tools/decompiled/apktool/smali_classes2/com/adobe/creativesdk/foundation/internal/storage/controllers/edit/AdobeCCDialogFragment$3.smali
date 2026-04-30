.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3;
.super Ljava/lang/Object;
.source "AdobeCCDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment;->_editText:Landroid/widget/EditText;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCDialogFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method
