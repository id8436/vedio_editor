.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;
.super Ljava/lang/Object;
.source "CCFilesWithUploadFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->hideProgressView()V

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->val$shouldPopBack:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->IDS_COLLABORATOR_LEAVE_FOLDER_SUCCESS_MESSAGE:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->IDS_COLLABORATOR_LEAVE_FOLDER_FAILURE_MESSAGE:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method
