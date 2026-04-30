.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetCommandHandler;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;
.source "PhotosAssetsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetCommandHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewCommandsHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$1;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetCommandHandler;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V

    return-void
.end method


# virtual methods
.method protected getCommandsListToRegister()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_PHOTOVIEW_EDIT_COMPLETED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method protected handleCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_ASSETVIEW_EDIT_COMPLETED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_PHOTOVIEW_EDIT_COMPLETED:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$PhotoAssetCommandHandler;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->reloadDataFromDataSource()V

    .line 153
    :cond_1
    return-void
.end method
