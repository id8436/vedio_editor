.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;
.super Ljava/lang/Object;
.source "CCFilesEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

.field final synthetic val$operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;->val$operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;->val$operation:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;)V

    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 356
    return-void
.end method
