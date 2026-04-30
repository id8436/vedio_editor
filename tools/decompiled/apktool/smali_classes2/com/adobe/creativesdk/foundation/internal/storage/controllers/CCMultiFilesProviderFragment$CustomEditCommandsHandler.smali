.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CustomEditCommandsHandler;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;
.source "CCMultiFilesProviderFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CustomEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment$CCFilesEditCommandsHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesWithUploadFragment;)V

    return-void
.end method


# virtual methods
.method protected handleCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ASSETVIEW_BROWSER_CCFILES_FORCE_REFRESH_LIST:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CustomEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->reloadDataFromDataSource()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_STARTED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-eq p1, v0, :cond_0

    .line 410
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_COMPLETED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment$CustomEditCommandsHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCMultiFilesProviderFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    goto :goto_0

    .line 414
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_LEAVE_FOLDER:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method
