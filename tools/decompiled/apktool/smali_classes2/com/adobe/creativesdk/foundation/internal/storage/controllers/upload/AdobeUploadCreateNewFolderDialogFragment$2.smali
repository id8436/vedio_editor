.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;
.super Ljava/lang/Object;
.source "AdobeUploadCreateNewFolderDialogFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;-><init>()V

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    .line 182
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;

    move-result-object v0

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/FolderCreationSavedResult;->errorObj:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadCreateNewFolderDialogFragment$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
