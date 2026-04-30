.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;
.super Ljava/lang/Object;
.source "CCFilesWithUploadFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAlertDialogFragmentCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

.field final synthetic val$shouldPopBack:Z


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->val$shouldPopBack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNegativeButtonClick()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public handlePositiveButtonClick()V
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->showProgressView()V

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 165
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->getTargetCollection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;

    invoke-direct {v4, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$1;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->removeCollaborator(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationRemoveCollaboratorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 184
    return-void
.end method
