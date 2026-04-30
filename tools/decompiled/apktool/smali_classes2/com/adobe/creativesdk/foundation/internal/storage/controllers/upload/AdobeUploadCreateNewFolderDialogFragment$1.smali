.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;
.super Ljava/lang/Object;
.source "AdobeUploadCreateNewFolderDialogFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;-><init>()V

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    move-result-object v0

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;->newlyCreatedFolderObj:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$1;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;)V

    return-void
.end method
