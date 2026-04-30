.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;
.super Ljava/lang/Object;
.source "CCFilesEditFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

.field final synthetic val$renameDialogFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;->val$renameDialogFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 462
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditRenameOperationStatus;

    .line 463
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditRenameOperationStatus;->ADOBE_CC_FILES_EDIT_RENAME_OPERATION_STATUS_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditRenameOperationStatus;

    if-ne p2, v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;->ADOBE_CC_FILE_EDIT_OPERATION_RENAME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditManager;->createSession(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditOperation;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeEditAssetCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/CCFilesEditFragment$5;->val$renameDialogFragment:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeCCFilesEditSession;->startEditSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeAssetViewEditRenameDialogFragment;)V

    .line 467
    :cond_0
    return-void
.end method
