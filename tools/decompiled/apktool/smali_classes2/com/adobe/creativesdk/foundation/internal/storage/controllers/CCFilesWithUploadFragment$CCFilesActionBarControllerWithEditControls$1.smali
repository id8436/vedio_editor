.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls$1;
.super Ljava/lang/Object;
.source "CCFilesWithUploadFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;)V
    .locals 0

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;

    iget-boolean v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithEditControls;->_isCopy:Z

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->access$1600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;Z)V

    .line 1302
    const/4 v0, 0x1

    return v0
.end method
