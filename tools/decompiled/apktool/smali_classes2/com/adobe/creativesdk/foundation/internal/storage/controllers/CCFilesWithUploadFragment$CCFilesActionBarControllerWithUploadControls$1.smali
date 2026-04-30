.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls$1;
.super Ljava/lang/Object;
.source "CCFilesWithUploadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;)V
    .locals 0

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesActionBarControllerWithUploadControls;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_NOTIFICATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 1459
    return-void
.end method
