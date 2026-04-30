.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$3;
.super Ljava/lang/Object;
.source "DesignLibraryItemsFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeCCFilesRenameDialogDismissController;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogClosed()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController$3;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment$LibraryItemsContainerCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 923
    :cond_0
    return-void
.end method
