.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;
.super Ljava/lang/Object;
.source "AdobeRemoveMyselfDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;->handlePositiveButtonClick()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeRemoveMyselfDialogFragment;->dismiss()V

    .line 63
    return-void
.end method
